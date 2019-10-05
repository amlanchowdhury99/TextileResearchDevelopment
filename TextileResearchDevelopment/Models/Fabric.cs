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
            buyer = new Buyer();
            fb = new FabricType();
            cm = new CompositionType();
            st = new StatusType();
        }

        public User ua { get; set; }

        public string RefNo { get; set; }
        public string Season { get; set; }
        public string BatchNo { get; set; }
        public string Version { get; set; }
        public Buyer buyer { get; set; }
        public CompositionType cm { get; set; }
        public FabricType fb { get; set; }
        public StatusType st { get; set; }
        public string LastProcess { get; set; }

        public string ProcessString { get; set; }

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
        public DateTime DeliveryDateStart { get; set; }
        public DateTime DeliveryDateEnd { get; set; }
        public string CreateTime { get; set; }

        public string CreateBy { get; set; }

        public string UpdateTime { get; set; }

        public string UpdateBy { get; set; }


    }
}