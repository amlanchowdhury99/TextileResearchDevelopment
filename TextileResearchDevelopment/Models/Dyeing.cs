﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Dyeing
    {
        public Dyeing()
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
        }

        public int Id { get; set; }

        public int FabricID { get; set; }
        public int KnitID { get; set; }
        public int BuyerID { get; set; }
        public int FabricTypeID { get; set; }

        public int DiaGaugeID { get; set; }
        public int YarnCountID { get; set; }
        public int McBrandID { get; set; }
        public int KnitUnitID { get; set; }
        public int DyeingUnitID { get; set; }

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


        public string DyeingUnit { get; set; }
        public string BatchNo { get; set; }
        public int BatchQty { get; set; }
        public int SerialNo { get; set; }



        public DateTime CreateTime { get; set; }

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