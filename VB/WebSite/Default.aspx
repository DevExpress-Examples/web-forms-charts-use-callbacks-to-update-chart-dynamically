<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxTimer" TagPrefix="dxt" %>
<%@ Register Assembly="DevExpress.XtraCharts.v13.1.Web, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
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
		<dxchartsui:WebChartControl ID="WebChartControl1" runat="server" Height="310px" Width="1009px" ClientInstanceName="chart"  OnCustomCallback="WebChartControl1_CustomCallback" ShowLoadingPanel="False">
			<SeriesTemplate  
				>
				<ViewSerializable>
<cc1:SideBySideBarSeriesView HiddenSerializableString="to be serialized">
				</cc1:SideBySideBarSeriesView>
</ViewSerializable>
				<LabelSerializable>
<cc1:SideBySideBarSeriesLabel HiddenSerializableString="to be serialized" LineVisible="True">
				</cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
				<PointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized">
				</cc1:PointOptions>
</PointOptionsSerializable>
				<LegendPointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized">
				</cc1:PointOptions>
</LegendPointOptionsSerializable>
			</SeriesTemplate>
			<FillStyle >
				<OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
</OptionsSerializable>
			</FillStyle>
			<SeriesSerializable>
				<cc1:Series ArgumentScaleType="DateTime"  Name="Series 1"
					  LegendText="Trend">
					<ViewSerializable>
<cc1:AreaSeriesView hiddenserializablestring="to be serialized"></cc1:AreaSeriesView>
</ViewSerializable>
					<LabelSerializable>
<cc1:PointSeriesLabel hiddenserializablestring="to be serialized" linevisible="True">
					</cc1:PointSeriesLabel>
</LabelSerializable>
					<PointOptionsSerializable>
<cc1:PointOptions hiddenserializablestring="to be serialized"></cc1:PointOptions>
</PointOptionsSerializable>
					<LegendPointOptionsSerializable>
<cc1:PointOptions hiddenserializablestring="to be serialized"></cc1:PointOptions>
</LegendPointOptionsSerializable>
				</cc1:Series>
			</SeriesSerializable>
			<DiagramSerializable>
<cc1:XYDiagram>
				<axisx visibleinpanesserializable="-1">
<Range SideMarginsEnabled="False"></Range>

<DateTimeOptions Format="General"></DateTimeOptions>
</axisx>
				<axisy visibleinpanesserializable="-1">
<Range SideMarginsEnabled="True"></Range>
</axisy>
			</cc1:XYDiagram>
</DiagramSerializable>
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
