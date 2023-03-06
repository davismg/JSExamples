using System;
using System.Data.Entity.Migrations;
using System.Linq;
using WorkforcePlanning.Core.Data.Domain.Entities;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;

namespace WorkforcePlanning.Core.Data.Repository
{
    public class PositionDataSetRepository : RepositoryBase<PositionDataSet>
    {
        public new OperationResult Save(PositionDataSet dataSet)
        {
            if (dataSet.Id == 0) return add(dataSet);

            return update(dataSet);
        }

        private OperationResult update(PositionDataSet dataSet)
        {
            var dbDataSet = new PositionDataSet();
            var result = new OperationResult();

            //set audit columns
            dbDataSet.ModifiedDate = DateTime.Now;
            dbDataSet.ModifiedBy = "System";

            //set the as of date
            dbDataSet.AsOfDate = dataSet.AsOfDate;
            dbDataSet.Id = dataSet.Id;

            Context.PositionDataSets.AddOrUpdate(dbDataSet);
            Context.SaveChanges();

            result.ObjectId = dataSet.Id;

            return result;
        }

        private OperationResult add(PositionDataSet dataSet)
        {
            var dbDataSet = new PositionDataSet();
            var result = new OperationResult();

            //set audit columns
            dbDataSet.CreatedBy = "System";
            dbDataSet.CreatedDate = DateTime.Now;
            dbDataSet.ModifiedDate = DateTime.Now;
            dbDataSet.ModifiedBy = "System";
            dbDataSet.EffectiveFromDate = DateTime.Now;

            //set the as of date
            dbDataSet.AsOfDate = dataSet.AsOfDate;

            Context.PositionDataSets.AddOrUpdate(dbDataSet);
            Context.SaveChanges();
            result.ObjectId = dbDataSet.Id;
            
            return result;
        }

        public PositionDataSet GetDataSetValidFor(DateTime asOfDate)
        {
            var dbSet = GetAll();
            var previousId = 0;
            
            //check for an equal one
            var equalSet = dbSet.FirstOrDefault(i => i.AsOfDate == asOfDate);

            if(equalSet != null) return equalSet;
            
            foreach (var item in dbSet)
            {
                if (item.AsOfDate < asOfDate)
                {
                    previousId = item.Id;
                    continue;
                }

                break;
            }

            return dbSet.FirstOrDefault(i => i.Id == previousId);
        }
    }
}