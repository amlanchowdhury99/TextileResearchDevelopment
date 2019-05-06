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
        private DateTime defaultDate = DateTime.Now;

        public int Id { get; set; }
        [Required]
        [DisplayName("Buyer Name")]
        public string BuyerName { get; set; }
        public int BuyerID { get; set; }
        [Required]
        [DisplayName("Sample Type")]
        public string FabricType { get; set; }
        public int FabricTypeID { get; set; }
        [Required]
        [DisplayName("Order No")]
        public string OrderNo { get; set; }
        [Required]
        public string Color { get; set; }
        [Required]
        [DisplayName("Sp Note")]
        public string Note { get; set; }
        [Required]
        [DisplayName("Required Width")]
        public string Width { get; set; }
        [Required]
        [DisplayName("Required GSM")]
        public int GSM { get; set; }
        [Required]
        [DisplayName("LabDip Status")]
        public string Status { get; set; }
        [Required]
        [DisplayName("Challan No")]
        public string ChallanNo { get; set; }
        [Required]
        [DisplayName("Deliver Quantity")]
        public decimal DeliveryQty { get; set; }
        [Required]
        [DisplayName("Delivery Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public DateTime DeliveryDate
        {
            get; set;
        }

        public string BarCode { get; set; }

    }
}