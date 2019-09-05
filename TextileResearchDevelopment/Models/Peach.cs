using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Peach
    {
        public Peach()
        {
            Id = 0;
            fabric = new Fabric();
        }
        public int Id { get; set; }
        public Fabric fabric { get; set; }
        public string Taker { get; set; }
        public string Plaiter { get; set; }
        public string Return { get; set; }
        public string Tension { get; set; }
        public string RPM { get; set; }
        public string Brush { get; set; }
        public string Speed { get; set; }
        public string Dia { get; set; }
        public string GSM { get; set; }
        public string Remarks { get; set; }

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