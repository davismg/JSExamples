using System;

namespace TransCanada.Framework.Common.Utilities
{
    public interface IClock
    {
        DateTime Now { get; }
        DateTime ActualNow { get; }
        DateTime Today { get; }
        void Freeze();
        void Freeze(DateTime timeToFreeze);
        void Thaw();
    }
}