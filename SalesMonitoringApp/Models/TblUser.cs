using System;
using System.Collections.Generic;

namespace SalesMonitoringApp.Models
{
    public partial class TblUser
    {
        public TblUser()
        {
            EmployeeRegistration = new HashSet<EmployeeRegistration>();
        }

        public int UserId { get; set; }
        public string UserName { get; set; }
        public string UserPassword { get; set; }
        public int? RoleId { get; set; }

        public virtual TblRole Role { get; set; }
        public virtual ICollection<EmployeeRegistration> EmployeeRegistration { get; set; }
    }
}
