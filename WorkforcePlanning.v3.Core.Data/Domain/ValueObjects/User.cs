using System.ComponentModel.DataAnnotations.Schema;
using WorkforcePlanning.Core.Data.Domain.Entities.BaseTypes;

namespace WorkforcePlanning.Core.Data.Domain.ValueObjects
{
    [Table("User")]
    public class User : ModelBase
    {
        public string UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public Role Role { get; set; }


    }
}