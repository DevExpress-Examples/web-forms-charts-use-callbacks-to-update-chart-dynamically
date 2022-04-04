<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128575867/21.2.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1070)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# Chart for Web Forms - How to Use Callbacks to Update a WebChartControl Dynamically

<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1070/)**
<!-- run online end -->

This example shows how to use callbacks to update a WebChartControl dynamically.

![A real-time chart](media/resulting-chart.gif)

In this example, the [ASPxTimer.Tick](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxTimer.Tick) event occurs once a second (the timer's [Interval](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxTimer.Interval) property value is equal to 1000 milliseconds). In the **ASPxTimer.Tick** event handler, the example calls the chart's [PerformCallback](https://docs.devexpress.com/AspNet/js-ASPxClientWebChartControl.PerformCallback(args)?p=netframework) that raises the [CustomCallback](https://docs.devexpress.com/AspNet/DevExpress.XtraCharts.Web.WebChartControl.CustomCallback?p=netframework) event. In the **CustomCallback** event handler, new points are generated and added to the chart.

## Files to Look At

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))

## Documentation

* [Callbacks](https://docs.devexpress.com/AspNet/402559/common-concepts/callbacks)
* [Chart Control](https://docs.devexpress.com/AspNet/8103/components/chart-control?p=netframework)
* [ASPxTimer](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxTimer)

## More Examples

* [How to: Bind a Web Chart to Data (Runtime Sample)](https://docs.devexpress.com/AspNet/4779/components/chart-control/examples/how-to-bind-a-web-chart-to-data-runtime-sample)
* [How to: Bind an Individual Series to a Data Source (Runtime Sample)](https://docs.devexpress.com/AspNet/120176/components/chart-control/examples/how-to-bind-an-individual-series-to-a-data-source-runtime-sample)
