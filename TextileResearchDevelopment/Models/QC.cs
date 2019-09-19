using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class QC
    {
        public QC()
        {
            Id = 0;
            fabric = new Fabric();
        }
        public int Id { get; set; }
        public Fabric fabric { get; set; }
        public string Dia { get; set; }
        public string GSM { get; set; }
        public string Shrinkage { get; set; }
        public string Wash { get; set; }
        public string Water { get; set; }
        public string Acid { get; set; }
        public string Alkhali { get; set; }
        public string Bursting { get; set; }
        public string Pilling { get; set; }
        public string Strech { get; set; }
        public string Recovery { get; set; }

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