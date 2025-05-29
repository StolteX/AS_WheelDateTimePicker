B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=Project.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	Private AS_WheelDateTimePicker1 As AS_WheelDateTimePicker
	Private AS_WheelDateTimePicker2 As AS_WheelDateTimePicker
	Private AS_WheelDateTimePicker3 As AS_WheelDateTimePicker
	Private AS_WheelDateTimePicker4 As AS_WheelDateTimePicker
	Private AS_WheelDateTimePicker5 As AS_WheelDateTimePicker
	Private xlbl_DateTime As B4XView

End Sub

Public Sub Initialize
	
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("frm_main")
	
	DateTime.TimeFormat = DateTime.DeviceDefaultTimeFormat
	DateTime.DateFormat = DateTime.DeviceDefaultDateFormat

	AS_WheelDateTimePicker3.SetDateTextOrder(2,1,3)

	#If B4I
	Wait For B4XPage_Resize (Width As Int, Height As Int)
	#End If

	AS_WheelDateTimePicker1.Create
	AS_WheelDateTimePicker2.Create
	AS_WheelDateTimePicker3.Create
'	
	AS_WheelDateTimePicker4.MinDate = DateTime.Now
	
	AS_WheelDateTimePicker4.Create
	AS_WheelDateTimePicker5.Create

	
	'Sleep(0)
	
	'AS_WheelDateTimePicker1.Hour = 5

'	AS_WheelDateTimePicker4.MinDate = DateUtils.SetDate(2020,2,8)
'	AS_WheelDateTimePicker4.MaxDate = DateTime.Now + DateTime.TicksPerDay*5
'	AS_WheelDateTimePicker4.Refresh

	'Sleep(5000)
'	AS_WheelDateTimePicker1.Minute = 20

'	Dim ItemTextProperties As ASWheelPicker_ItemTextProperties = AS_WheelDateTimePicker1.WheelPicker.ItemTextProperties
'	ItemTextProperties.TextFont = xui.CreateDefaultFont(25)
'	AS_WheelDateTimePicker1.WheelPicker.ItemTextProperties = ItemTextProperties
	'
'	AS_WheelDateTimePicker1.WheelPicker.RowHeightSelected = 50dip
'	AS_WheelDateTimePicker1.WheelPicker.RowHeightUnSelected = 50dip
	'
'	AS_WheelDateTimePicker1.Date = DateTime.Now
'	AS_WheelDateTimePicker1.Hour = DateTime.GetHour(DateTime.Now)
'	AS_WheelDateTimePicker1.Minute = DateTime.GetMinute(DateTime.Now)
	'
'	AS_WheelDateTimePicker1.MonthNameShort = AS_WheelDateTimePicker1.CreateASWheelDateTimePicker_MonthNameShort("Gen","Feb","Mar","Apr","Mag","Giu","Lug","Ago","Set","Ott","Nov","Dic")
'	AS_WheelDateTimePicker1.WeekNameShort = AS_WheelDateTimePicker1.CreateASWheelDateTimePicker_WeekNameShort("Lun","Mar","Mer","Gio","Ven","Sab","Dom")
'	AS_WheelDateTimePicker1.Refresh

End Sub

Private Sub B4XPage_Appear
	
End Sub

Private Sub AS_WheelDateTimePicker1_SelectedTimeChanged(Hour As Int,Minute As Int)
	Log("SelectedTimeChanged: Hour:" & Hour & " Minute:" & Minute)
	xlbl_DateTime.Text = Hour & ":" & Minute
End Sub

Private Sub AS_WheelDateTimePicker2_SelectedTimeChanged(Hour As Int,Minute As Int)
	Log("SelectedTimeChanged: Hour:" & Hour & " Minute:" & Minute)
	xlbl_DateTime.Text = Hour & ":" & Minute
End Sub

Private Sub AS_WheelDateTimePicker3_SelectedTimeChanged(Hour As Int,Minute As Int)
	Log("SelectedTimeChanged: Hour:" & Hour & " Minute:" & Minute)
	xlbl_DateTime.Text = Hour & ":" & Minute
End Sub

Private Sub AS_WheelDateTimePicker4_SelectedTimeChanged(Hour As Int,Minute As Int)
	Log("SelectedTimeChanged: Hour:" & Hour & " Minute:" & Minute)
	xlbl_DateTime.Text = Hour & ":" & Minute
End Sub

Private Sub AS_WheelDateTimePicker1_SelectedDateChanged(Date As Long)
	Log("SelectedDateChanged: " & DateUtils.TicksToString(Date))
	xlbl_DateTime.Text = DateUtils.TicksToString(Date)
End Sub

Private Sub AS_WheelDateTimePicker2_SelectedDateChanged(Date As Long)
	Log("SelectedDateChanged: " & DateUtils.TicksToString(Date))
	xlbl_DateTime.Text = DateUtils.TicksToString(Date)
End Sub

Private Sub AS_WheelDateTimePicker3_SelectedDateChanged(Date As Long)
	Log("SelectedDateChanged: " & DateUtils.TicksToString(Date))
	xlbl_DateTime.Text = DateUtils.TicksToString(Date)
End Sub

Private Sub AS_WheelDateTimePicker4_SelectedDateChanged(Date As Long)
	Log("SelectedDateChanged: " & DateUtils.TicksToString(Date))
	xlbl_DateTime.Text = DateUtils.TicksToString(Date)
End Sub