using System.Linq;

namespace WorkforcePlanning.Core.Data.Repository
{
    public class DataSourceFileConfigurationRepository : RepositoryBase<DataSourceFileConfiguration>
    {
        public DataSourceFileConfiguration Get(int id)
        {
            return Context.DataSourceFileConfigurations.FirstOrDefault(i => i.Id == id);
        }
    }
}