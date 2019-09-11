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
            fabric = new Fabric();
            mc = new McDiaGaugeType();
            yd = new YD();
            ydr = new YDR();
            CreateTime = DateTime.MaxValue;
            UpdateTime = DateTime.MaxValue;
            ApprovedTime = DateTime.MaxValue;
            DeliveryDateStart = DateTime.MaxValue;
            DeliveryDateEnd = DateTime.MaxValue;
            children = new Role();
        }
        public Role children { get; set; }

        private DateTime defaultDate = DateTime.Now;

        public Fabric fabric { get; set; }
        public McDiaGaugeType mc { get; set; }

        public YD yd { get; set; }
        public YDR ydr { get; set; }

        public int Id { get; set; }

        public string BarCode { get; set; }

        public string McSpeed { get; set; }

        public int FabricID { get; set; }

        public string ErpNo { get; set; }

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

        public DateTime DeliveryDateStart { get; set; }

        public DateTime DeliveryDateEnd { get; set; }


        public string SL { get; set; }

        public string YT { get; set; }

        public string LT { get; set; }

        public string GreyDia { get; set; }

        public string GreyGSM { get; set; }

        public string ReqDia { get; set; }

        public string ReqGSM { get; set; }


    }
}