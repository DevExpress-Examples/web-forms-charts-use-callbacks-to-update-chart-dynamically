Imports DevExpress.XtraCharts

Partial Public Class _Default
    Inherits System.Web.UI.Page
    Private tempPoints As List(Of SeriesPoint)

    Private ReadOnly Property WebChart() As DevExpress.XtraCharts.Web.WebChartControl
        Get
            Return WebChartControl1
        End Get
    End Property

    Private ReadOnly Property ChartDiagram() As DevExpress.XtraCharts.XYDiagram
        Get
            Return CType(WebChart.Diagram, DevExpress.XtraCharts.XYDiagram)
        End Get
    End Property

    Private Sub AdjustChartRange()
        ChartDiagram.AxisX.VisualRange.SetMinMaxValues(DateTime.Now.AddSeconds(-35), DateTime.Now.AddSeconds(5))
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        If (Not IsCallback) Then
            ' Adjust required DateTime options of the AxisX
            ChartDiagram.AxisX.DateTimeScaleOptions.MeasureUnit = DateTimeMeasureUnit.Second
            ChartDiagram.AxisX.DateTimeScaleOptions.GridAlignment = DateTimeGridAlignment.Second



            ' Cpecify a custom format
            ChartDiagram.AxisX.Label.TextPattern = "{A:HH:mm:ss}"

            ' Set ah inital AxisX.Range
            AdjustChartRange()

            tempPoints = New List(Of SeriesPoint)()
            Session("tempPoints") = tempPoints
        End If
    End Sub

    Protected Sub WebChartControl1_CustomCallback(ByVal sender As Object, ByVal e As DevExpress.XtraCharts.Web.CustomCallbackEventArgs)
        ' You can get this value from the WebService, for instance
        Dim currentValue As Double = 50 + New Random().Next(10)
        Dim nextPoint As DevExpress.XtraCharts.SeriesPoint = New SeriesPoint(DateTime.Now, New Double() {currentValue})

        tempPoints = CType(Session("tempPoints"), List(Of SeriesPoint))

        For Each point As DevExpress.XtraCharts.SeriesPoint In WebChart.Series(0).Points
            If Convert.ToDateTime(point.Argument) < DateTime.Now - New TimeSpan(0, 0, 35) Then
                tempPoints.Add(point)
            End If
        Next point

        If tempPoints.Count > 0 Then
            tempPoints.RemoveAt(0)
        End If

        For Each point As SeriesPoint In tempPoints
            WebChart.Series(0).Points.Remove(point)
        Next point

        tempPoints.Clear()

        WebChart.Series(0).Points.Add(nextPoint)

        WebChart.Titles(0).Text = "Trend on: " & DateTime.Now.ToShortDateString()

        AdjustChartRange()
    End Sub

End Class