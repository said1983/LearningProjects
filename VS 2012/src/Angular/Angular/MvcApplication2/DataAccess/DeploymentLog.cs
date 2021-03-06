//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MvcApplication2.DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class DeploymentLog
    {
        public DeploymentLog()
        {
            this.LogMessages = new HashSet<LogMessage>();
        }
    
        public System.Guid DeploymentLogId { get; set; }
        public System.DateTime StartDate { get; set; }
        public Nullable<System.DateTime> EndDate { get; set; }
        public string FullBuildName { get; set; }
        public System.Guid DeploymentMapping_DeploymentMappingId { get; set; }
        public System.Guid Build_BuildId { get; set; }
        public System.Guid DeploymentStatus_DeploymentStatusId { get; set; }
    
        public virtual Build Build { get; set; }
        public virtual DeploymentMapping DeploymentMapping { get; set; }
        public virtual DeploymentStatu DeploymentStatu { get; set; }
        public virtual ICollection<LogMessage> LogMessages { get; set; }
    }
}
