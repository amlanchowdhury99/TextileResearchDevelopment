using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Dyeing
    {
        public Dyeing()
        {
            Id = 0;
            fabric = new Fabric();
            rft = new RFTType();
        }

        public int Id { get; set; }
        public Fabric fabric { get; set; }


        public string McNo { get; set; }
        public string Speed { get; set; }
        public string Enzyme { get; set; }
        public string Comments { get; set; }
        public string Recipe { get; set; }
        public string RecipeNo { get; set; }
        public string Time { get; set; }
        public RFTType rft { get; set; }
        public string PH { get; set; }
        public string Value { get; set; }

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
    }
}