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
    
    public partial class Quality
    {
        public Quality()
        {
            this.QualityMappings = new HashSet<QualityMapping>();
        }
    
        public System.Guid QualityId { get; set; }
        public string Name { get; set; }
        public string OriginalQuality { get; set; }
        public string NewQuality { get; set; }
        public System.Guid Environment_EnvironmentId { get; set; }
    
        public virtual Environment Environment { get; set; }
        public virtual ICollection<QualityMapping> QualityMappings { get; set; }
    }
}