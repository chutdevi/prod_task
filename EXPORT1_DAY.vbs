'On Error Resume Next

dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
dim path, log, filename, namefile, size
Dim Fso
Set Fso = WScript.CreateObject("Scripting.FileSystemObject")
path = "G:\vbs_production-vol2"
filename = "EXPORT"
date_name = Year(Date) & Month(Date) & Day(Date)  

xHttp.Open "GET", "http://192.168.161.102/excel_gen/report_prodsys/Pdsys_report/", False
xHttp.Send

'with bStrm
'    .type = 1 '//binary
'    .open
'    .write xHttp.responseBody
'    .savetofile path & "/bin/" & namefile, 2 '//overwrite
'end with

'Fso.MoveFile "G:\vbs_demand\bin\production_demand.xlsx" , "G:\vbs_demand\bin\" & namefile

'Myfile = path & "\temp\" & filename & "_Error.log"
'call Write_File(conten & log, Myfile)

	
'======================================== Function =================================================

Sub Write_File(myStr, myFname)
	Set objFSO = CreateObject("Scripting.FileSystemObject")
        outFile = myFname
	Set	objFile = objFSO.CreateTextFile(outFile,True)
		objFile.WriteLine myStr
		objFile.Close
End Sub	