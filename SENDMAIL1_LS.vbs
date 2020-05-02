'On Error Resume Next
  Dim outobj, mailobj    
  Dim strFileText 
  Dim objFileToRead    
  Dim cn, expl, path, log, filename	 
  Dim Type_send
  Dim newDate : newDate = DateAdd("m", -1, now)
  Set outobj = CreateObject("Outlook.Application")    
  Set mailobj = outobj.CreateItem(0)  
  set expl = CreateObject("ADODB.Connection")

	d = Right("0" & Day( Date ),2) 
	m = Right("0" & Month( Date ),2) 
	y = Year( Date )
  Dim ldate : ldate = DateAdd("d", -1, CDate( y &"-"& m & "-" & "01" ) )	
	'MsgBox ldate
	'Wscript.Quit
	expl.connectionstring = "Provider=OraOLEDB.Oracle;Data Source=EXPK;User ID=EXPK;Password=EXPK"
	expl.open
  

  Set cn = CreateObject("ADODB.Connection")
  Set rs = CreateObject("ADODB.Recordset")
  'Driver={MySQL ODBC 8.0 ANSI Driver}; Data Source=Email_Data;
  'Driver={MySQL ODBC 8.0 ANSI Driver}; Data Source=MSAOII;
  cn.connectionstring = "Driver={MySQL ODBC 8.0 ANSI Driver}; Data Source=Email_Data;"
  cn.open
   
  query = "SELECT HOLIDAY_FLG FLG FROM M_CAL WHERE CAL_DATE = TO_CHAR(SYSDATE,'YYYY/MM/DD') AND CAL_NO = '1'"
  
  SET sv = expl.Execute(query)
  
 ' If CInt (sv("FLG")) = 1 then
 '	   'MsgBox sv("FLG")
 '	   Wscript.Quit		
 '    End If
	   'MsgBox "OK"
	
   
   
  Type_send = 1

  
  s_to = "SELECT email FROM SYS_MAIL WHERE ml_id = " & Type_send & " and action = 'to'; "
  s_cc = "SELECT email FROM SYS_MAIL WHERE ml_id = " & Type_send & " and action = 'cc'; "
  s_bc = "SELECT email FROM SYS_MAIL WHERE ml_id = 1 and action = 'bcc';"  
  
  path = "G:\prod_task"
  
  'path2 = "D:\report_auto\Report\Report_TEST"
  filename = "SENDMAIL"
  dayA   = Day(Date)
  monthA = Left(MonthName(Month(Date)),3)
  yearA  = Year(Date)
  TodayA = dayA & "-" & monthA & "-" & YearA	
  
  
  Send_To = myEmail(s_to)
  Send_Cc = myEmail(s_cc)
  Send_Bc = myEmail(s_bc)
  

  strFileText  =  "<html>" &_
			  	  "<body style=""font-family:Calibri Light;"">" &_
			  	  "<p><b>[ Automatic Email Report ]</b></p>"   &_
				  "<br></br>" &_
			  	  "<p>Herein above attached are necessary information for your perusal. Any inquiry don't be hesitate to contact us.</p>" &_
			  	  "<b>__________________________________________________________________________________________________________________</b>" &_
			  	  "<p><b>Best Regards,<br>Production Control System (PCS)</b></p>" &_
			  	  "</body>" &_
			  	  "</html>" 
                
  '				 "<p><a href=""http://192.168.82.58/tbkk_system_center"">Click the link for other info that need</a></p>" &_
  
  
    strAttachFile2  = "G:\excel\Production-report\" & y & m & "\daily-production-report-" & y & m & d &".xlsx"
	d = Right("0" & Day( ldate ),2) 
	m = Right("0" & Month( ldate ),2) 
	y = Year( ldate )
	strAttachFile4  = "G:\excel\Production-report\" & y & m & "\lastday-production-report-" & y & m & d &".xlsx"
  'MsgBox "G:\excel\Production-report\" & y & m & "\daily-production-report-" & y & m & d &".xlsx"
  strAttachFile1  = path & "\bin\Production_Model_Report_" & Left(MonthName(Month(Date)),3) & Right(Year(Date),2) & ".xlsx" 
  
  strAttachFile3  = path & "\bin\Summary_Production_Model_Report_" & Left(MonthName(Month(newDate)),3)& Right(Year(newDate),2) & ".xlsx"
  '
  'MsgBox CInt (hol_sv("HOLIDAY_FLG"))
  '"talerngsak@tbkk.co.th"	 .CC     = Send_Bc	 .BCC    = Send_Bc

 

'file.Close
'Err.Clear 

	Myfile = path & "\log\" & "Log.log"
	
	'MsgBox Send_Bc
	
	'wscript.Quit
	
	If Err.Number <> 0 Then
				
			Set fso = CreateObject("Scripting.FileSystemObject")
			Set file = fso.OpenTextFile(Myfile, 1)
				conten = file.ReadAll
				file.Close	
			log = Now & " [ " & WeekdayName(DatePart("w", Date())) &" ]" & "[ " & Err.Description & " ] " & "[ " & filename & " ] "
			'MsgBox log
			call Write_File(conten & log, Myfile)
			Myfile = path & "\temp\" & filename & "_Error.log"
			call Write_File(conten & log, Myfile)
			Wscript.Quit
	Else
			Set fso = CreateObject("Scripting.FileSystemObject")
			Set file = fso.OpenTextFile(Myfile, 1)
				conten = file.ReadAll
				file.Close	
			log = Now & " [ " & WeekdayName(DatePart("w", Date())) &" ]" & "[ " & " Complete! " & " ] " & "[ " & filename & " ] "
			'MsgBox log
			'Wscript.Quit
			call Write_File(conten & log, Myfile)
			  With mailobj    
				.To      = Send_Bc
				.Subject = "Explanner production daily report [ " & TodayA &  " ] & Summary last month"   
				.HtmlBody strFileText    
				.Attachments.Add strAttachFile1
				.Attachments.Add strAttachFile2
				.Attachments.Add strAttachFile3
				.Attachments.Add strAttachFile4
				.Send    
			  End With 			
			Wscript.Quit
	End If 
  'MsgBox strAttachFile
  'Clear the memory
  Set outobj = Nothing    
  Set mailobj = Nothing  
  'Wscript.Quit		

 '======================================== Function ================================================= 
 
	Sub Write_File(myStr, myFname)
		Set objFSO=CreateObject("Scripting.FileSystemObject")
			outFile = myFname
		Set	objFile = objFSO.CreateTextFile(outFile,True)
			objFile.WriteLine myStr
			objFile.Close
	End Sub  
	
	Function myEmail(sql)
		Set sql_sv = cn.Execute(sql)
			Send=""
			   Do Until sql_sv.eof
					For Each fld In sql_sv.Fields
						Send = Send  &  sql_sv(fld.Name).value & "; "
					Next				
				sql_sv.MoveNext
			   LOOP
		myEmail = Mid(Send,1,Len(Send)-2)  
	End Function