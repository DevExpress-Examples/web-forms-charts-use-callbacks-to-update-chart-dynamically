<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v21.2, Version=21.2.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dxt" %>
<%@ Register Assembly="DevExpress.XtraCharts.v21.2.Web, Version=21.2.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v21.2, Version=21.2.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center">
        <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" RenderFormat="Svg"
                                    Height="310px" Width="1009px" ClientInstanceName="chart" 
                                    OnCustomCallback="WebChartControl1_CustomCallback">
            <SeriesSerializable>
                <cc1:Series ArgumentScaleType="DateTime"  Name="Series 1" LegendText="Trend">
                    <ViewSerializable>
                        <cc1:AreaSeriesView/>
                    </ViewSerializable>
                </cc1:Series>
            </SeriesSerializable>
            <Titles>
                <cc1:ChartTitle Text="Title">
                </cc1:ChartTitle>
            </Titles>
            <Legend AlignmentHorizontal="Right"></Legend>
        </dxchartsui:WebChartControl>
        <dxt:ASPxTimer ID="tmTimer" runat="server" Interval="1000">
            <ClientSideEvents Tick="function(s, e) {
                                    chart.PerformCallback(&quot;test&quot;);
                              }" />
        </dxt:ASPxTimer>
    </div>     
   </form>
  </body>
</html>
