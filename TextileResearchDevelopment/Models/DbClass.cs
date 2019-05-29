using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class User
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public int SuperAdmin { get; set; }
        public int Fabric { get; set; }
        public int Knitting { get; set; }
        public int Dyeing { get; set; }
        public int Slitting { get; set; }
        public int Stenter { get; set; }
        public int Aop { get; set; }
        public int Test { get; set; }
        public int Remarks { get; set; }
        public string PermissionString { get; set; }
        public DateTime CreateDate { get; set; }
        public int LogIn { get; set; }

    }

    public class Buyer
    {
        public int Id { get; set; }
        public string BuyerName { get; set; }
        
    }

    public class FabricType
    {
        public int Id { get; set; }
        public string FabricTypeName { get; set; }
    }

    public class McDiaGaugeType
    {
        public int Id { get; set; }
        public string McDiaGauge { get; set; }
    }

    public class YarnCountType
    {
        public int Id { get; set; }
        public string YarnCount { get; set; }
    }

    public class KnitUnitType
    {
        public int Id { get; set; }
        public string KnitUnit { get; set; }
    }

    public class McBrandType
    {
        public int Id { get; set; }
        public string McBrand { get; set; }
    }

    public class DyeingUnitType
    {
        public int Id { get; set; }
        public string DyeingUnit { get; set; }
    }

    public class SoftenerType
    {
        public int Id { get; set; }
        public string Softener { get; set; }
    }

}