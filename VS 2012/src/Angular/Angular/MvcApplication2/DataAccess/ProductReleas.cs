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
    
    public partial class ProductReleas
    {
        public System.Guid ProductReleaseId { get; set; }
        public System.Guid Product_ProductId { get; set; }
        public System.Guid Release_ReleaseId { get; set; }
        public string BuildUri { get; set; }
    
        public virtual Product Product { get; set; }
        public virtual Release Release { get; set; }
    }
}
