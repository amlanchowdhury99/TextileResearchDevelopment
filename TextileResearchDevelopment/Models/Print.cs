using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Print
    {
        public Print()
        {
            Id = 0;
            fabric = new Fabric();
            mc = new MachineType();
            prt = new PrintType();
        }

        public int Id { get; set; }
        public Fabric fabric { get; set; }
        public MachineType mc { get; set; }
        public PrintType prt { get; set; }
        public string PrintFactory { get; set; }
        public string PrintCoverage { get; set; }
        public string OtherInfo { get; set; }

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