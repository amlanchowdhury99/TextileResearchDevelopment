using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileResearchDevelopment.Models
{
    public class Stenter
    {
        public Stenter()
        {
            CreateBy = 0;
            UpdateBy = 0;
            ApprovedBy = 0;
            CreateByName = "";
            UpdateByName = "";
            ApprovedByName = "";
            CreateTime = DateTime.MaxValue;
            UpdateTime = DateTime.MaxValue;
            ApprovedTime = DateTime.MaxValue;
        }

        public DateTime CreateTime { get; set; }

        public int CreateBy { get; set; }

        public string CreateByName { get; set; }

        public DateTime UpdateTime { get; set; }

        public int UpdateBy { get; set; }

        public string UpdateByName { get; set; }

        public DateTime ApprovedTime { get; set; }

        public int ApprovedBy { get; set; }

        public string ApprovedByName { get; set; }
    }
}