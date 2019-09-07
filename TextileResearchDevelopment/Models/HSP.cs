using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class HSP
    {
        public HSP()
        {
            Id = 0;
            fabric = new Fabric();
            mc = new MachineType();
        }

        public int Id { get; set; }
        public Fabric fabric { get; set; }
        public MachineType mc { get; set; }
        public string Temp { get; set; }
        public string Speed { get; set; }
        public string Time { get; set; }
        public string Feed { get; set; }
        public string Streching { get; set; }
        public string Chemical { get; set; }
        public string Dia { get; set; }
        public string GSM { get; set; }
        public string Shrinkage { get; set; }

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