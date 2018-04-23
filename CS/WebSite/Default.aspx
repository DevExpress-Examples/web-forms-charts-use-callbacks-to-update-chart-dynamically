<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v8.3, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxTimer" TagPrefix="dxt" %>
<%@ Register Assembly="DevExpress.XtraCharts.v8.3.Web, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v8.3, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center">
        &nbsp;
        <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" Height="310px" Width="1009px" ClientInstanceName="chart" DiagramTypeName="XYDiagram" OnCustomCallback="WebChartControl1_CustomCallback" ShowLoadingPanel="False">
            <SeriesTemplate LabelTypeName="SideBySideBarSeriesLabel" PointOptionsTypeName="PointOptions"
                SeriesViewTypeName="SideBySideBarSeriesView">
                <View HiddenSerializableString="to be serialized">
                </View>
                <Label HiddenSerializableString="to be serialized" LineVisible="True">
                </Label>
                <PointOptions HiddenSerializableString="to be serialized">
                </PointOptions>
                <LegendPointOptions HiddenSerializableString="to be serialized">
                </LegendPointOptions>
            </SeriesTemplate>
            <FillStyle FillOptionsTypeName="SolidFillOptions">
                <Options HiddenSerializableString="to be serialized" />
            </FillStyle>
            <SeriesSerializable>
                <cc1:Series ArgumentScaleType="DateTime" LabelTypeName="PointSeriesLabel" Name="Series 1"
                    PointOptionsTypeName="PointOptions" SeriesViewTypeName="AreaSeriesView" LegendText="Trend">
                    <view hiddenserializablestring="to be serialized"></view>
                    <label hiddenserializablestring="to be serialized" linevisible="True">
                    </label>
                    <pointoptions hiddenserializablestring="to be serialized"></pointoptions>
                    <legendpointoptions hiddenserializablestring="to be serialized"></legendpointoptions>
                </cc1:Series>
            </SeriesSerializable>
            <Diagram>
                <axisx visibleinpanesserializable="-1">
<Range SideMarginsEnabled="False"></Range>

<DateTimeOptions Format="General"></DateTimeOptions>
</axisx>
                <axisy visibleinpanesserializable="-1">
<Range SideMarginsEnabled="True"></Range>
</axisy>
            </Diagram>
            <Titles>
                <cc1:ChartTitle Text="Title">
                </cc1:ChartTitle>
            </Titles>
            <Legend AlignmentHorizontal="Right"></Legend>
        </dxchartsui:WebChartControl>
        <dxt:ASPxTimer ID="tmTimer" runat="server" Interval="3000">
            <ClientSideEvents Tick="function(s, e) {
	chart.PerformCallback(&quot;test&quot;);
}" />
        </dxt:ASPxTimer>

  </div>
        
    </form>
</body>
</html>
