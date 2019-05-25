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
            McDiaGuage = "";
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
            McBrand = 0;
            ReviseStatus = 0;
            ApprovedStatus = 0;
            OrderDate = DateTime.MaxValue;
        }

        private DateTime defaultDate = DateTime.Now;

        public int Id { get; set; }

        public int FabricID { get; set; }

        public string BarCode { get; set; }

        public string McDiaGuage { get; set; }

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

        public int McBrand { get; set; }

        public int ReviseStatus { get; set; }

        public int ApprovedStatus { get; set; }

        public DateTime OrderDate { get; set; }

        public DateTime FabricOrderDate { get; set; }


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