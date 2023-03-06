using System.Configuration;

namespace src.ViewServices
{
    public static class ConfigurationService
    {

        public static string AllowedExtensions => ConfigurationManager.AppSettings["AllowedExtensions"];
    }
}