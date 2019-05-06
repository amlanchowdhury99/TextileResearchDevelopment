using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Buyer
    {
        public int Id { get; set; }
        [Required]
        [DisplayName("Buyer Name")]
        public string BuyerName { get; set; }
        
    }

    public class FabricType
    {
        public int Id { get; set; }
        [Required]
        [DisplayName("Sample Type")]
        public string FabricTypeName { get; set; }
    }


}