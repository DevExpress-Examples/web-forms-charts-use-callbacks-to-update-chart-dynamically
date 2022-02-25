using DevExpress.XtraCharts;
using System;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page {
    private List<SeriesPoint> tempPoints;

    private DevExpress.XtraCharts.Web.WebChartControl WebChart {
        get { return WebChartControl1; }
    }

    private DevExpress.XtraCharts.XYDiagram ChartDiagram {
        get { return (DevExpress.XtraCharts.XYDiagram)WebChart.Diagram; }
    }

    private void AdjustChartRange() {
        ChartDiagram.AxisX.VisualRange.SetMinMaxValues(DateTime.Now.AddSeconds(-35), DateTime.Now.AddSeconds(5));
    }

    protected void Page_Load(object sender, EventArgs e) {
        if (!IsCallback) {
            // Adjust required DateTime options of the AxisX:
            ChartDiagram.AxisX.DateTimeScaleOptions.MeasureUnit = DateTimeMeasureUnit.Second;
            ChartDiagram.AxisX.DateTimeScaleOptions.GridAlignment = DateTimeGridAlignment.Second;

            // Cpecify a custom format:
            ChartDiagram.AxisX.Label.TextPattern = "{A:HH:mm:ss}";

            // Set an inital AxisX.Range
            AdjustChartRange();

            tempPoints = new List<SeriesPoint>();
            Session["tempPoints"] = tempPoints;
        }
    }

    protected void WebChartControl1_CustomCallback(object sender, DevExpress.XtraCharts.Web.CustomCallbackEventArgs e) {
        // You can get this value from the WebService, for instance
        double currentValue = 50 + new Random().Next(10);
        DevExpress.XtraCharts.SeriesPoint nextPoint = new SeriesPoint(DateTime.Now, new double[] { currentValue });

        tempPoints = (List<SeriesPoint>)Session["tempPoints"];

        foreach (DevExpress.XtraCharts.SeriesPoint point in WebChart.Series[0].Points)
            if (Convert.ToDateTime(point.Argument) < DateTime.Now - new TimeSpan(0, 0, 35))
                tempPoints.Add(point);

        if (tempPoints.Count > 0)
            tempPoints.RemoveAt(0);

        foreach (SeriesPoint point in tempPoints)
            WebChart.Series[0].Points.Remove(point);

        tempPoints.Clear();

        WebChart.Series[0].Points.Add(nextPoint);

        WebChart.Titles[0].Text = "Trend on: " + DateTime.Now.ToShortDateString();

        AdjustChartRange();
    }

}
