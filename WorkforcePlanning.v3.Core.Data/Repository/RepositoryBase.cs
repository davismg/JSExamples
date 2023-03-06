using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Linq.Expressions;
using WorkforcePlanning.Core.Data.Domain.Entities.BaseTypes;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;

namespace WorkforcePlanning.Core.Data.Repository
{
    public class RepositoryBase<T> : IRepository<T> where T : ModelBase
    {
        private WorkforcePlanningEntities _context;

        public WorkforcePlanningEntities Context => _context ?? (_context = new WorkforcePlanningEntities());

        public void ClearContext()
        {
            _context.Dispose();
            _context = new WorkforcePlanningEntities();
        }

        public List<T> GetAll()
        {
            return Context.Set<T>().ToList();
        }
        public IQueryable<T> GetWhere(Expression<Func<T, bool>> expression)
        {
            return GetAll().AsQueryable().Where(expression);
        }


        public OperationResult EndDate(int id, string table, string keyColumn)
        {
            var result = new OperationResult();
            var query = $"UPDATE {table} SET EffectiveToDate = '{DateTime.Now}', ModifiedDate = '{DateTime.Now}', ModifiedBy = 'System' WHERE {keyColumn} = {id}";
            try
            {
                Context.Database.ExecuteSqlCommand(query);
            }
            catch (Exception e)
            {
                result.InvalidateAndAddMessage($"Unable to end date {table} id {id}. {e.Message}");
            }
            return result;
        }

        public OperationResult Save(T item)
        {
            var result = new OperationResult {IsSuccess = true};
            try
            {
                Context.Set<T>().AddOrUpdate(item);
                Context.SaveChanges();
            }
            catch (Exception e)
            {
                result.IsSuccess = false;
                result.Message = $"Error updating record. {e.Message}";
            }

            return result;

        }
    }

    public interface IRepository<T>
    {
        List<T> GetAll();
        IQueryable<T> GetWhere(Expression<Func<T, bool>> expression);
        OperationResult Save(T item);
    }
}