using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Fabric
    {

        public Fabric()
        {
            Id = 0;
            BarCode = "";
            BuyerName = "";
            BuyerID = 0;
            FabricType = "";
            FabricTypeID = 0;
            OrderNo = "";
            Color = "";
            Note = "";
            Width = "";
            GSM = 0;
            Status = "";
            ChallanNo = "";
            DeliveryQty = (decimal)0.00;
            DeliveryDate = DateTime.MaxValue;
        }

        private DateTime defaultDate = DateTime.Now;
        public int Id { get; set; }
        public string BarCode { get; set; }
        public string BuyerName { get; set; }
        public int BuyerID { get; set; }
        public string FabricType { get; set; }
        public int FabricTypeID { get; set; }
        public string OrderNo { get; set; }
        public string Color { get; set; }
        public string Note { get; set; }
        public string Width { get; set; }
        public int GSM { get; set; }
        public string Status { get; set; }
        public string ChallanNo { get; set; }
        public decimal DeliveryQty { get; set; }
        public DateTime DeliveryDate { get; set; }
        public DateTime CreateTime { get; set; }

    }
}