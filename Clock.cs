using System;
using System.Configuration;
using TransCanada.Framework.Common.Extensions;
using TransCanada.Framework.Common.Utilities;

namespace TransCanada.Framework.Common.Domain
{
    public static class Clock
    {
        private static IClock local;

        public static IClock Local => local ?? (local = new TimeZoneClock(LocalTimeZone));

        public static TimeZoneInfo LocalTimeZone
        {
            get
            {
                var serverTimeZoneName = ConfigurationManager.AppSettings["ServerTimeZone"];
                return string.IsNullOrWhiteSpace(serverTimeZoneName) ? TimeZoneInfo.Local : TimeZoneInfo.FindSystemTimeZoneById(serverTimeZoneName);
            }
        }

        public static string LocalTimeZoneDisplayName(DateTime dt)
        {
            return dt.Kind == DateTimeKind.Utc
                ? "UTC"
                // assume local timezone even for kind==Unspecified
                : dt.IsDaylightSavingTime() && Clock.LocalTimeZone.SupportsDaylightSavingTime
                    ? Clock.LocalTimeZone.DaylightName
                    : Clock.LocalTimeZone.StandardName;
        }

        private static IClock mountainStandardTime;

        public static IClock MountainStandardTime => mountainStandardTime ??
                                                     (mountainStandardTime =
                                                         new TimeZoneClock(TimeZones.MountainStandardTimeZone));

        private static IClock mountainTime;

        public static IClock MountainTime => mountainTime ??
                                             (mountainTime = new TimeZoneClock(TimeZones.MountainTimeZone));

        private static IClock centralClockTime;

        public static IClock CentralClockTime =>
            centralClockTime ?? (centralClockTime = new TimeZoneClock(TimeZones.CentralClockTimeZone));

        private static IClock utc;
        public static IClock Utc => utc ?? (utc = new TimeZoneClock(TimeZoneInfo.Utc));

        public static DateTime EndOfTime => new DateTime(9999, 12, 31, 23, 59, 59);
        // Dovetail uses 00 for seconds portion.
        public static DateTime DovetailEndOfTime => new DateTime(9999, 12, 31, 23, 59, 00);

        public static bool AllowClockManipulation
        {
            get { return ClockManager.AllowClockManipulation; }
            set { ClockManager.AllowClockManipulation = value; }
        }
    }

    public class FreezeClock : IDisposable
    {
        public FreezeClock()
        {
            ClockManager.Freeze();
        }

        public FreezeClock(DateTime dateTime)
        {
            ClockManager.Freeze(dateTime);
        }

        public void Dispose()
        {
            ClockManager.Thaw();
        }

        public void AddMinutes(int minutes)
        {
            var now = Clock.Local.Now;
            ClockManager.Freeze(now.AddMinutes(minutes));
        }

        public void AddSeconds(int seconds)
        {
            var now = Clock.Local.Now;
            ClockManager.Freeze(now.AddSeconds(seconds));
        }
    }

    internal static class ClockManager
    {
        public static DateTime FrozenTime { get; internal set; }
        internal static bool AllowClockManipulation { get; set; }

        static ClockManager()
        {
            AllowClockManipulation = true;
        }

        public static void Initialize(bool allowClockManipulation)
        {
            AllowClockManipulation = allowClockManipulation;
        }
        
        internal static DateTime Now
        {
            get
            {
                if (AllowClockManipulation)
                {
                    return GetIsFrozen() ? GetFrozenTime() : ActualNow;
                }
                return ActualNow;
            }
        }

        internal static DateTime ActualNow => GetIsTesting() && GetIsFrozen()
            ? GetFrozenTime() : GetIsTesting() ? TruncateMilliseconds(DateTime.Now) : DateTime.Now;

        internal static DateTime Today => Now.Date;

        internal static void Freeze()
        {
            Freeze(TruncateMilliseconds(DateTime.Now));
        }

        internal static void Freeze(DateTime dateTime)
        {
            FrozenTime = dateTime;
            var settings = LocalTestSettings.CurrentSettings;
            settings.ClockSettings.FrozenTime = dateTime;
            settings.ClockSettings.IsFrozen = true;
            LocalTestSettings.SaveSettings(settings);
        }

        internal static void Thaw()
        {
            var settings = LocalTestSettings.CurrentSettings;
            if (settings == null) return;
            settings.ClockSettings.IsFrozen = false;
            LocalTestSettings.SaveSettings(settings);
        }

        private static bool GetIsFrozen()
        {
            var settings = LocalTestSettings.CurrentSettings;
            // Should we return false is settings is null?
            return settings.ClockSettings.IsFrozen;
        }

        private static bool GetIsTesting()
        {
            var setting = ConfigurationManager.AppSettings["TestProject"];
            return !setting.IsNullOrEmpty() && ConfigurationManager.AppSettings["TestProject"].TrueFalseToBoolean();
        }

        private static DateTime GetFrozenTime()
        {
            var settings = LocalTestSettings.CurrentSettings;
            return settings.ClockSettings.FrozenTime;
        }

        private static DateTime TruncateMilliseconds(DateTime source)
        {
            return source.AddTicks(-(source.Ticks%TimeSpan.TicksPerSecond));
        }
    }
}
