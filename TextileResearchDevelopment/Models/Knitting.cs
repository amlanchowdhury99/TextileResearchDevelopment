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
            FabricID = "";
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
            McBrand = "";
            ReverseStatus = 0;
            ApprovedStatus = 0;
            OrderDate = DateTime.MaxValue;
        }

        private DateTime defaultDate = DateTime.Now;

        public int Id { get; set; }

        public string FabricID { get; set; }

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

        public string McBrand { get; set; }

        public int ReverseStatus { get; set; }

        public int ApprovedStatus { get; set; }

        public DateTime OrderDate { get; set; }
    }
}