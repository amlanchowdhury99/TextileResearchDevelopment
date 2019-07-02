using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Report
    {
        public Report()
        {
            CreateBy = 0;
            CreateTime = DateTime.MaxValue;
            DeliveryDate = DateTime.MaxValue;
            DeliveryDateStart = DateTime.MaxValue;
            DeliveryDateEnd = DateTime.MaxValue;
        }

        public int Id { get; set; }
        public string BarCode { get; set; }
        public string BuyerName { get; set; }
        public int BuyerID { get; set; }
        public string FabricType { get; set; }
        public int FabricTypeID { get; set; }
        public string OrderNo { get; set; }
        public string Color { get; set; }
        public string Note { get; set; }
        public string RequiredWidth { get; set; }
        public int RequiredGSM { get; set; }
        public string Status { get; set; }
        public string ChallanNo { get; set; }
        public decimal DeliveryQty { get; set; }
        public DateTime DeliveryDate { get; set; }

        public DateTime DeliveryDateStart { get; set; }
        public DateTime DeliveryDateEnd { get; set; }

        public DateTime CreateTime { get; set; }

        public int CreateBy { get; set; }


        public DateTime CreateTimeKnit { get; set; }

        public int CreateByKnit { get; set; }

        public string CreateByNameKnit { get; set; }

        public Nullable<DateTime> UpdateTimeKnit { get; set; }

        public int UpdateByKnit { get; set; }

        public string UpdateByNameKnit { get; set; }

        public Nullable<DateTime> ApprovedTimeKnit { get; set; }

        public int ApprovedByKnit { get; set; }

        public string ApprovedByNameKnit { get; set; }

        public string McDiaGauge { get; set; }

        public string YarnCount { get; set; }

        public string YarnBrand { get; set; }

        public string YarnLot { get; set; }

        public decimal StitchLength { get; set; }

        public string KnitUnit { get; set; }

        public int MCNO { get; set; }

        public int MCRPM { get; set; }

        public decimal GreyWidth { get; set; }

        public decimal GreyGSM { get; set; }

        public decimal TumbleWidthKnit { get; set; }

        public decimal TumbleGSM { get; set; }

        public string McBrand { get; set; }

        public int DyeingUnitID { get; set; }
        public string DyeingUnit { get; set; }
        public string BatchNo { get; set; }
        public int BatchQty { get; set; }
        public int SerialNo { get; set; }


        public decimal WidthSet { get; set; }
        public decimal OverFeed { get; set; }
        public decimal Temp { get; set; }
        public decimal Speed { get; set; }
        public string Peder { get; set; }
        public decimal Blower { get; set; }

        public int SoftenerID { get; set; }
        public decimal SoftenerGL { get; set; }
        public string SoftenerName { get; set; }


        public int PrintID { get; set; }
        public int MachineID { get; set; }
        public string PrintName { get; set; }
        public string MachineName { get; set; }


        public decimal FinalWidth { get; set; }
        public decimal FinalGSM { get; set; }
        public decimal TLength { get; set; }
        public decimal TWidth { get; set; }
        public decimal TSP { get; set; }

        public string Remarks { get; set; }




        public DateTime CreateTimeDyeing { get; set; }

        public int CreateByDyeing { get; set; }

        public string CreateByNameDyeing { get; set; }

        public Nullable<DateTime> UpdateTimeDyeing { get; set; }

        public int UpdateByDyeing { get; set; }

        public string UpdateByNameDyeing { get; set; }

        public Nullable<DateTime> ApprovedTimeDyeing { get; set; }

        public int ApprovedByDyeing { get; set; }

        public string ApprovedByNameDyeing { get; set; }


        public DateTime CreateTimeStenter { get; set; }

        public int CreateByStenter { get; set; }

        public string CreateByNameStenter { get; set; }

        public Nullable<DateTime> UpdateTimeStenter { get; set; }

        public int UpdateByStenter { get; set; }

        public string UpdateByNameStenter { get; set; }

        public Nullable<DateTime> ApprovedTimeStenter { get; set; }

        public int ApprovedByStenter { get; set; }

        public string ApprovedByNameStenter { get; set; }


        public DateTime CreateTimeAop { get; set; }

        public int CreateByAop { get; set; }

        public string CreateByNameAop { get; set; }

        public Nullable<DateTime> UpdateTimeAop { get; set; }

        public int UpdateByAop { get; set; }

        public string UpdateByNameAop { get; set; }

        public Nullable<DateTime> ApprovedTimeAop { get; set; }

        public int ApprovedByAop { get; set; }

        public string ApprovedByNameAop { get; set; }


        public DateTime CreateTimeTest { get; set; }

        public int CreateByTest { get; set; }

        public string CreateByNameTest { get; set; }

        public Nullable<DateTime> UpdateTimeTest { get; set; }

        public int UpdateByTest { get; set; }

        public string UpdateByNameTest { get; set; }

        public Nullable<DateTime> ApprovedTimeTest { get; set; }

        public int ApprovedByTest { get; set; }

        public string ApprovedByNameTest { get; set; }


        public DateTime CreateTimeRemarks { get; set; }

        public int CreateByRemarks { get; set; }

        public string CreateByNameRemarks { get; set; }

        public Nullable<DateTime> UpdateTimeRemarks { get; set; }

        public int UpdateByRemarks { get; set; }

        public string UpdateByNameRemarks { get; set; }

        public Nullable<DateTime> ApprovedTimeRemarks { get; set; }

        public int ApprovedByRemarks { get; set; }

        public string ApprovedByNameRemarks { get; set; }


    }
}