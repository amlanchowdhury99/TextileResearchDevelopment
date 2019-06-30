using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Remarks
    {
        public Remarks()
        {
            CreateBy = 0;
            UpdateBy = 0;
            ApprovedBy = 0;
            CreateByName = "";
            UpdateByName = "";
            ApprovedByName = "";
            CreateTime = DateTime.MaxValue;
            UpdateTime = DateTime.MaxValue;
            ApprovedTime = DateTime.MaxValue;
            DeliveryDate = DateTime.MaxValue;
            DeliveryDateStart = DateTime.MaxValue;
            DeliveryDateEnd = DateTime.MaxValue;
        }


        public int Id { get; set; }

        public int TestReportID { get; set; }
        public int AopID { get; set; }

        public int FabricID { get; set; }
        public int KnitID { get; set; }
        public int BuyerID { get; set; }
        public int FabricTypeID { get; set; }

        public int DiaGaugeID { get; set; }
        public int YarnCountID { get; set; }
        public int McBrandID { get; set; }
        public int KnitUnitID { get; set; }
        public int DyeingUnitID { get; set; }

        public int SoftenerID { get; set; }

        public int PrintID { get; set; }

        public int MachineID { get; set; }

        public string BarCode { get; set; }

        public string BuyerName { get; set; }

        public string FabricName { get; set; }

        public string OrderNo { get; set; }

        public string Color { get; set; }

        public string ChallanNo { get; set; }

        public DateTime DeliveryDate { get; set; }

        public string McDiaGauge { get; set; }

        public string YarnCount { get; set; }

        public string YarnBrand { get; set; }

        public string YarnLot { get; set; }

        public string KnitUnit { get; set; }

        public decimal GreyWidth { get; set; }

        public decimal GreyGSM { get; set; }

        public string McBrand { get; set; }

        public int ReviseStatus { get; set; }

        public int ApprovedStatus { get; set; }

        public decimal StitchLength { get; set; }
        public int MCNO { get; set; }
        public int MCRPM { get; set; }
        public decimal TumbleWidth { get; set; }
        public decimal TumbleGSM { get; set; }
        public DateTime DeliveryDateStart { get; set; }
        public DateTime DeliveryDateEnd { get; set; }
        public string DyeingUnit { get; set; }
        public string BatchNo { get; set; }
        public int BatchQty { get; set; }
        public int SerialNo { get; set; }

        public string SoftenerName { get; set; }
        public decimal SoftenerGL { get; set; }
        public decimal WidthSet { get; set; }
        public decimal OverFeed { get; set; }
        public decimal Temp { get; set; }
        public decimal Speed { get; set; }
        public string Peder { get; set; }
        public decimal Blower { get; set; }
        public decimal DIA { get; set; }
        public decimal GSM { get; set; }

        public string PrintName { get; set; }
        public string MachineName { get; set; }

        public DateTime CreateTime { get; set; }

        public decimal FinalWidth { get; set; }
        public decimal FinalGSM { get; set; }
        public decimal TLength { get; set; }
        public decimal TWidth { get; set; }
        public decimal TSP { get; set; }


        public string UserRemarks { get; set; }


        public int CreateBy { get; set; }

        public string CreateByName { get; set; }

        public Nullable<DateTime> UpdateTime { get; set; }

        public int UpdateBy { get; set; }

        public string UpdateByName { get; set; }

        public Nullable<DateTime> ApprovedTime { get; set; }

        public int ApprovedBy { get; set; }

        public string ApprovedByName { get; set; }

    }
}