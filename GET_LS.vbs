dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
dim path, log

path = "D:\AppServ\www\report\script\prod_task"
filename = "PROD" & Left(MonthName(Month(Date)),3)& Right(Year(Date),2) &".xlsx"

'MsgBox filename & Day(Date)




xHttp.Open "GET", "http://192.168.161.102/report/get_query/query_prod_model_summary.php", False
xHttp.Send

'with bStrm
'    .type = 1 '//binary
'    .open
'    .write xHttp.responseBody
'    .savetofile "G:/recceive_task/mon/bin/" & filename, 2 '//overwrite
'end with


'CONST bytesToKb = 1024
'strFile = path & "/bin/" & filename
'
'SET objFSO = CREATEOBJECT("Scripting.FileSystemObject")
'SET objFile = objFSO.GetFile(strFile)
'
'wscript.echo "File Size: " & CINT(objFile.Size / bytesToKb) & "Kb"