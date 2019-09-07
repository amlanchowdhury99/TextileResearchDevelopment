using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Brush
    {
        public Brush()
        {
            Id = 0;
            fabric = new Fabric();
        }
        public int Id { get; set; }
        public Fabric fabric { get; set; }
        public string UPile { get; set; }
        public string UCounterPile { get; set; }
        public string UTension { get; set; }
        public string URPM { get; set; }
        public string LPile { get; set; }
        public string LCounterPile { get; set; }
        public string LTension { get; set; }
        public string LRPM { get; set; }
        public string Speed { get; set; }
        public string Remarks { get; set; }

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