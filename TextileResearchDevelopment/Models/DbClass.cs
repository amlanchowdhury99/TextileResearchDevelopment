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

        public User()
        {
            Sectors = new Dictionary<string, string>();
            Sectors = GetSectorsValue();
            rootNode = new List<RoleNode>();
        }

        private Dictionary<string, string> GetSectorsValue()
        {
            Sectors.Add("1", "Fabric");  Sectors.Add("2", "Knit"); Sectors.Add("3", "CW"); Sectors.Add("4", "HSP"); Sectors.Add("5", "Singeing"); Sectors.Add("6", "Dyeing"); Sectors.Add("7", "Dryer"); Sectors.Add("8", "Stenter");
            Sectors.Add("9", "Compacting"); Sectors.Add("10", "Peach"); Sectors.Add("11", "Brush"); Sectors.Add("12", "Print"); Sectors.Add("13", "QC");
            return Sectors;
        }

        public Dictionary<string, string> Sectors { get; set; }
        public List<RoleNode> rootNode { get; set; }
        public int Id { get; set; }
        public string Name { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public int SuperAdmin { get; set; }
        public int Fabric { get; set; }
        public int Knit { get; set; }
        public int CW { get; set; }
        public int HSP { get; set; }
        public int Singeing { get; set; }
        public int Dyeing { get; set; }
        public int Dryer { get; set; }
        public int Stenter { get; set; }
        public int Compacting { get; set; }

        public int Peach { get; set; }
        public int Brush { get; set; }
        public int PrintInfo { get; set; }
        public int QC { get; set; }

        public string PermissionString { get; set; }
        public DateTime CreateDate { get; set; }
        public int LogIn { get; set; }
        public int Report { get; set; }
    }

    public class RoleNode
    {
        public RoleNode()
        {
            children = new List<Child>();
            role = new Role();
        }

        public int Id { get; set; }
        public int val { get; set; }
        public int value { get; set; }
        public string title { get; set; }
        public Role role { get; set; }
        public List<Child> children { get; set; }
    }

    public class Child
    {
        public int Id { get; set; }
        public int ParentID { get; set; }
        public int value { get; set; }
        public string title { get; set; }
        public int val { get; set; }
    }

    public class Role
    {
        public int Id { get; set; }
        public int RolePermissionID { get; set; }
        public int CValue { get; set; }
        public int LValue { get; set; }
        public int AValue { get; set; }
        public int Crud { get; set; }
        public int LibrarySet { get; set; }
        public int Approval { get; set; }

    }

    public static class NullHelpers
    {
        public static string DateToString(object obj)
        {
            if (obj == null)
            {
                return "";
            }

            if ((DateTime)obj == DateTime.MinValue)
            {
                return "";
            }

            return ((DateTime)obj).ToString("dd/MM/yyyy");
        }
    }

    public class Buyer
    {
        public int Id { get; set; }
        public string BuyerName { get; set; }
        public int Status { get; set; }

    }

    public class FabricType
    {
        public int Id { get; set; }
        public string FabricTypeName { get; set; }
        public int Status { get; set; }
    }

    public class CompositionType
    {
        public int Id { get; set; }
        public string Composition { get; set; }
        public int Status { get; set; }
    }

    public class StatusType
    {
        public int Id { get; set; }
        public string Status { get; set; }

    }

    public class McDiaGaugeType
    {
        public int Id { get; set; }
        public string McNo { get; set; }
        public string McDia { get; set; }
        public string McGauge { get; set; }
        public string McBrand { get; set; }
        public int Status { get; set; }
    }

    public class YarnCountType
    {
        public int Id { get; set; }
        public string YarnCount { get; set; }
    }

    public class YarnColorType
    {
        public int Id { get; set; }
        public string YarnColor { get; set; }
    }

    public class PrintFactoryType
    {
        public int Id { get; set; }
        public string PrintFactory { get; set; }
    }

    public class ProductionType
    {
        public int Id { get; set; }
        public string Production { get; set; }
    }

    public class RFTType
    {
        public int Id { get; set; }
        public string RFT { get; set; }
    }

    public class HistoryType
    {
        public int Id { get; set; }
        public string History { get; set; }
    }

    public class YarnType
    {
        public int Id { get; set; }
        public string YarnName { get; set; }
    }

    public class KnitUnitType
    {
        public int Id { get; set; }
        public string KnitUnit { get; set; }
    }

    public class McBrandType
    {
        public int Id { get; set; }
        public string YarnSupplier { get; set; }
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

    public class PrintType
    {
        public int Id { get; set; }
        public string PrintName { get; set; }
    }

    public class MachineType
    {
        public int Id { get; set; }
        public string McNo { get; set; }
    }

    public class YD
    {
        public YD()
        {
            Id = 0;
            yc = new YarnCountType();
            yt = new YarnType();
            cm = new CompositionType();
            yct = new YarnColorType();
            yb = new McBrandType();
        }

        public int Id { get; set; }
        public int KnitID { get; set; }
        public YarnCountType yc { get; set; }
        public CompositionType cm { get; set; }
        public YarnType yt { get; set; }
        public YarnColorType yct { get; set; }
        public McBrandType yb { get; set; }
        public string Lot { get; set; }
        public string TPI { get; set; }

    }

    public class YDR
    {
        public YDR()
        {
            Id = 0;
        }

        public int Id { get; set; }
        public int KnitID { get; set; }
        public string YDRRepeat { get; set; }
        public string YDRColor { get; set; }
        public string YDRFeederNo { get; set; }
        public string YDRMeasurement { get; set; }
        public string YDRUOM { get; set; }
        public string YDRBatchNo { get; set; }
        public string YDRCK { get; set; }

    }

}