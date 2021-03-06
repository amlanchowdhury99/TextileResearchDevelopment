﻿using System.Web;
using System.Web.Optimization;

namespace TextileResearchDevelopment
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            BundleTable.EnableOptimizations = true;

            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        //"~/Scripts/jquery-3.3.1.js",
                        "~/Scripts/jquery.unobtrusive-ajax.min.js",
                        "~/Scripts/jquery.treeSelector.js",
                        "~/Scripts/UrmiPlugin.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*",
                        "~/Scripts/jquery.validate.unobtrusive.min.js"));


            bundles.Add(new ScriptBundle("~/bundles/moment").Include(
                       "~/Scripts/moment.js",
                       "~/Scripts/daterangepicker.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/bootstrapValidator.min.js",
                      "~/Scripts/bootstrap-datetimepicker.min.js",
                      "~/Scripts/bootstrap-multiselect.min.js",
                      "~/Scripts/typeahead.bundle.js"));

            bundles.Add(new ScriptBundle("~/bundles/dataTables").Include(
                        "~/Scripts/jquery.dataTables.min.js",
                        "~/Scripts/dataTables.select.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/dx").Include(
                        "~/Scripts/dx.all.js"));

            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/fileExport").Include(
                        "~/Scripts/dataTables.buttons.min.js",
                        "~/Scripts/buttons.flash.min.js",
                        "~/Scripts/jszip.min.js",
                        "~/Scripts/pdfmake.min.js",
                        "~/Scripts/vfs_fonts.js",
                        "~/Scripts/buttons.html5.min.js",
                        "~/Scripts/buttons.colVis.min.js"));

            bundles.Add(new StyleBundle("~/bundles/css").Include(
                      "~/Content/jquery.treeSelector.css",
                      "~/Content/bootstrap.css",
                      //"~/Content/bootstrapValidator.min.css",
                      "~/Content/bootstrap-datetimepicker.min.css",
                      "~/Content/bootstrap-multiselect.css",
                      "~/Content/dx.common.css",
                      "~/Content/dx.material.blue.light.css",
                      "~/Content/jquery.dataTables.min.css",
                      "~/Content/select.dataTables.min.css",
                      "~/Content/buttons.dataTables.min.css",
                      "~/Content/daterangepicker.css",
                      "~/Content/Site.css",
                      "~/Content/UrmiStyle.css"));

        }
    }
}
