using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Knitting
    {
        public Knitting()
        {
            Id = 0;
            FabricID = 0;
            BarCode = "";
            McDiaGauge = "";
            YarnCount = "";
            YarnBrand = "";
            YarnLot = "";
            StitchLength = (decimal)0.00;
            KnitUnit = "";
            MCNO = 0;
            MCRPM = 0;
            GreyWidth = (decimal)0.00;
            GreyGSM = (decimal)0.00;
            TumbleWidth = (decimal)0.00;
            TumbleGSM = (decimal)0.00;
            McBrand = "";
            ReviseStatus = 0;
            ApprovedStatus = 0;
            CreateBy = 0;
            UpdateBy = 0;
            ApprovedBy = 0;
            CreateByName = "";
            UpdateByName = "";
            ApprovedByName = "";
            DeliveryDate = DateTime.MaxValue;
            CreateTime = DateTime.MaxValue;
            UpdateTime = DateTime.MaxValue;
            ApprovedTime = DateTime.MaxValue;
            FabricCreateTime = DateTime.MaxValue;
        }

        private DateTime defaultDate = DateTime.Now;

        public int Id { get; set; }

        public int FabricID { get; set; }

        public string BarCode { get; set; }

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

        public decimal TumbleWidth { get; set; }

        public decimal TumbleGSM { get; set; }

        public string McBrand { get; set; }

        public int ReviseStatus { get; set; }

        public int ApprovedStatus { get; set; }

        public DateTime CreateTime { get; set; }

        public int CreateBy { get; set; }

        public string CreateByName { get; set; }

        public Nullable<DateTime> UpdateTime { get; set; }

        public int UpdateBy { get; set; }

        public string UpdateByName { get; set; }

        public Nullable<DateTime> ApprovedTime { get; set; }

        public int ApprovedBy { get; set; }

        public string ApprovedByName { get; set; }

        public DateTime FabricCreateTime { get; set; }


        public int DiaGaugeID { get; set; }
        public int YarnCountID { get; set; }
        public int McBrandID { get; set; }
        public int KnitUnitID { get; set; }


        public string BuyerName { get; set; }

        public string FabricName { get; set; }

        public string OrderNo { get; set; }

        public string Color { get; set; }

        public string ChallanNo { get; set; }

        public DateTime DeliveryDate { get; set; }


        public int BuyerID { get; set; }
        public int FabricTypeID { get; set; }

    }
}