﻿using System.Web;
using System.Web.Optimization;

namespace TextileResearchDevelopment
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js",
                        "~/Scripts/jquery.unobtrusive-ajax.min.js",
                        "~/Scripts/jquery.dataTables.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*",
                        "~/Scripts/jquery.validate.unobtrusive.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/dataTables").Include(
                        "~/Scripts/dataTables.select.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/moment").Include(
                        "~/Scripts/moment.js"));

            //bundles.Add(new ScriptBundle("~/bundles/iziModal").Include(
            //            "~/Scripts/iziModal.min.js"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/bootstrap3-typeahead.min.js",
                      "~/Scripts/bootstrapValidator.min.js",
                      "~/Scripts/bootstrap-datetimepicker.min.js"));

            //bundles.Add(new ScriptBundle("~/bundles/popper").Include(
            //          "~/Scripts/popper.min.js"));

            //bundles.Add(new ScriptBundle("~/bundles/mdb").Include(
            //          "~/Scripts/mdb.min.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/jquery.dataTables.min.css",
                      "~/Content/select.dataTables.min.css",
                      "~/Content/bootstrapValidator.min.css",
                      "~/Content/site.css",
                      "~/Content/bootstrap-datetimepicker.min.css"));
        }
    }
}
