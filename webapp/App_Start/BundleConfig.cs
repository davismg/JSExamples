#region Using

using System.Web.Optimization;

#endregion

namespace WorkforcePlanning.Core.Views
{
    public static class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new StyleBundle("~/content/smartadmin").IncludeDirectory("~/content/css", "*.min.css"));
            bundles.Add(new StyleBundle("~/content/css").Include(
                      "~/Content/site.css"));

            bundles.Add(new ScriptBundle("~/Scripts/smartadmin").Include(
                "~/Scripts/app.config.seed.min.js",
                "~/Scripts/bootstrap/bootstrap.min.js",
                "~/Scripts/smartwidgets/jarvis.widget.min.js",
                "~/Scripts/plugin/select2/select2.min.js",
                "~/Scripts/app.min.js"));

            bundles.Add(new ScriptBundle("~/scripts/full-calendar").Include(
                "~/scripts/plugin/moment/moment.min.js",
                "~/scripts/plugin/fullcalendar/jquery.fullcalendar.min.js"
                ));

            bundles.Add(new ScriptBundle("~/Scripts/Charts").Include(
               "~/Scripts/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js",
               "~/Scripts/plugin/sparkline/jquery.sparkline.min.js",
               "~/Scripts/plugin/morris/morris.min.js",
               "~/Scripts/plugin/morris/raphael.min.js",
               "~/Scripts/plugin/flot/jquery.flot.cust.min.js",
               "~/Scripts/plugin/flot/jquery.flot.resize.min.js",
               "~/Scripts/plugin/flot/jquery.flot.time.min.js",
               "~/Scripts/plugin/flot/jquery.flot.fillbetween.min.js",
               "~/Scripts/plugin/flot/jquery.flot.orderBar.min.js",
               "~/Scripts/plugin/flot/jquery.flot.pie.min.js",
               "~/Scripts/plugin/flot/jquery.flot.tooltip.min.js",
               "~/Scripts/plugin/dygraphs/dygraph-combined.min.js",
               "~/Scripts/plugin/chartjs/chart.min.js",
               "~/Scripts/plugin/highChartCore/highcharts-custom.min.js",
               "~/Scripts/plugin/highchartTable/jquery.highchartTable.min.js"
               ));

            bundles.Add(new ScriptBundle("~/Scripts/datatables").Include(
                "~/Scripts/plugin/datatables/jquery.dataTables.min.js",
                "~/Scripts/plugin/datatables/dataTables.colVis.min.js",
                "~/Scripts/plugin/datatables/dataTables.tableTools.min.js",
                "~/Scripts/plugin/datatables/dataTables.bootstrap.min.js",
                "~/Scripts/plugin/datatable-responsive/datatables.responsive.min.js"
                ));

            BundleTable.EnableOptimizations = true;
        }
    }
}