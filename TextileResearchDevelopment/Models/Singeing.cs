using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Singeing
    {
        public Singeing()
        {
            Id = 0;
            fabric = new Fabric();
        }

        public int Id { get; set; }
        public Fabric fabric { get; set; }
        public string HBurner1 { get; set; }
        public string HBurner2 { get; set; }
        public string WBurner1 { get; set; }
        public string WBurner2 { get; set; }
        public string Speed { get; set; }
        public string Burner { get; set; }
        public string Position { get; set; }

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