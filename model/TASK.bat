@echo off
	SET PATHS=D:\AppServ\www\report\script\prod_task\model
	SET NEWLN=^& echo. 
	SET "TASK=%PATHS% RUN TASK PRODUCTION REPORT OF %DATE% %TIME% %NEWLN% %NEWLN%
	DEL /Q %PATHS%\temp\*<nul
	
	ECHO. %TASK%
	TIMEOUT /t 2 >nul
	
	REM =================================================================================================  EXPORT =========================================================================================
	 CLS	
	 	  ECHO. %TASK%GET       TASK ^>[=========================                         ] 50%%^<
	 CSCRIPT %PATHS%\GET.vbs >nul
	 TIMEOUT /t 2 >nul
	 If EXIST %PATHS%\temp\GET_Error.log ( 
	  SET "TASK=%TASK%GET       TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
	  GOTO :ERROR 	
	 )	
	 CLS	
	 	  ECHO. %TASK%GET       TASK ^>[==================================================] 100%%^<  COMPLETE!!!!	  
	  SET "TASK=%TASK%GET       TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	 TIMEOUT /t 2 >nul	

	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
		  ECHO. %TASK%INSERT_   TASK ^>[==                                                ] 05%%^<
	CSCRIPT %PATHS%\INSERT_.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT_Error.log ( 
	  SET "TASK=%TASK%INSER_    TASK ^>[==                                                ] 05%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
		  ECHO. %TASK%INSERT    TASK ^>[=============                                     ] 25%%^<
	CSCRIPT %PATHS%\INSERT.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT_Error.log ( 
	  SET "TASK=%TASK%INSER     TASK ^>[=============                                     ] 25%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)		
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
		  ECHO. %TASK%INSERT    TASK ^>[=========================                         ] 50%%^<
	CSCRIPT %PATHS%\INSERT1.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT1_Error.log ( 
	  SET "TASK=%TASK%INSER     TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	
	REM =================================================================================================  INSERT =========================================================================================
		
	CLS			
		  ECHO. %TASK%INSER     TASK ^>[==================================================] 100%%^<  COMPLETE!!!!		  
	  SET "TASK=%TASK%INSER     TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	TIMEOUT /t 2 >nul	
	
	REM =================================================================================================  EXPORT =========================================================================================
	 CLS	
	 	  ECHO. %TASK%EXPORT    TASK ^>[=========================                         ] 50%%^<
	 CSCRIPT %PATHS%\EXPORT.vbs >nul
	 TIMEOUT /t 2 >nul
	 If EXIST %PATHS%\temp\EXPORT_Error.log ( 
	  SET "TASK=%TASK%EXPORT    TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
	  GOTO :ERROR 	
	 )	
	 CLS	
	 	  ECHO. %TASK%EXPORT    TASK ^>[==================================================] 100%%^<  COMPLETE!!!!	  
	  SET "TASK=%TASK%EXPORT    TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	 TIMEOUT /t 2 >nul
	 
     
	REM  CLS	
	REM  	  ECHO. %TASK%SEND MAIL TASK ^>[=========================                         ] 50%%^<
	REM  CSCRIPT %PATHS%\SENDMAIL.vbs >nul
	REM TIMEOUT /t 2 >nul
	REM If EXIST %PATHS%\temp\SENDMAIL_Error.log ( 
	REM   SET "TASK=%TASK%EXPORT    TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
	REM   GOTO :ERROR 	
	REM  )		 
	REM  CLS			
	REM  	  ECHO. %TASK%SEND MAIL TASK ^>[==================================================] 100%%^<  COMPLETE!!!!
	REM   SET "TASK=%TASK%SEND MAIL TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	REM TIMEOUT /t 2 >nul		  
     
	TIMEOUT /t 4 
	
	EXIT
	
	REM ============================================== ERROR ==========================================
	
	:ERROR
	CLS
		ECHO. %TASK%
	CSCRIPT %PATHS%\ALERT.vbs >nul
	TIMEOUT /t 2 >nul			
	TIMEOUT /t 30
		EXIT
		REM start http://192.168.82.31/report_service/Report_sendmail/only_send_mail

		REM TIMEOUT /t 120 >nul

		REM start http://192.168.82.31/report_service/Report_sendmail/pro_send_mail