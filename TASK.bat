@echo off
	SET PATHS=G:\prod_task
	SET NEWLN=^& echo. 
	SET "TASK=%PATHS% RUN TASK PRODUCTION REPORT OF %DATE% %TIME% %NEWLN% %NEWLN%
	DEL /Q %PATHS%\temp\*<nul
	
	ECHO. %TASK%
	timeout /t 2 >nul
	REM =================================================================================================  EXPORT =========================================================================================
	CLS	
	 	    ECHO. %TASK%GET QUERY TASK ^>[=========================                         ] 50%%^<
	CSCRIPT %PATHS%\GET.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\GET_Error.log ( 
	 	SET "TASK=%TASK%GET QUERY TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
	 	GOTO :ERROR 	
	)	
	CLS	
	 	    ECHO. %TASK%GET QUERY TASK ^>[==================================================] 100%%^<  COMPLETE!!!!
	 	  
	    SET "TASK=%TASK%GET QUERY TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	TIMEOUT /t 2 >nul
	 
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[==                                                ] 00%%^<
	CSCRIPT %PATHS%\INSERT0.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT0_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[==                                                ] 00%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[==                                                ] 05%%^<
			CSCRIPT %PATHS%\INSERT.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[==                                                ] 05%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[=======                                           ] 15%%^<
			CSCRIPT %PATHS%\INSERT1.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[=======                                           ] 15%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[==============                                    ] 30%%^<
	CSCRIPT %PATHS%\INSERT2.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[==============                                    ] 30%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[=====================                             ] 45%%^<
	CSCRIPT %PATHS%\INSERT3.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[=====================                             ] 45%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[=========================                         ] 50%%^<
			CSCRIPT %PATHS%\INSERT4.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
			
	CLS
			ECHO. %TASK%INSERT    TASK ^>[=====================================             ] 65%%^<
			CSCRIPT %PATHS%\INSERT5.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[=====================================             ] 65%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[============================================      ] 80%%^<
			CSCRIPT %PATHS%\INSERT6.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[============================================      ] 80%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[================================================= ] 95%%^<
			CSCRIPT %PATHS%\INSERT7.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[================================================= ] 95%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
		
	CLS			
			ECHO. %TASK%INSERT    TASK ^>[==================================================] 100%%^<  COMPLETE!!!!		  
		SET "TASK=%TASK%INSERT    TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	TIMEOUT /t 2 >nul
	
	
	
	
	
	REM phase 8
	REM =================================================================================================  EXPORT =========================================================================================
	 CLS	
	 	  ECHO. %TASK%GET PHS 8 TASK ^>[=========================                         ] 50%%^<
	 CSCRIPT %PATHS%\model\GET.vbs >nul
	 TIMEOUT /t 2 >nul
	 If EXIST %PATHS%\model\temp\GET_Error.log ( 
	  SET "TASK=%TASK%GET PHS 8 TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
	  GOTO :ERROR 	
	 )	
	 CLS	
	 	  ECHO. %TASK%GET PHS 8 TASK ^>[==================================================] 100%%^<  COMPLETE!!!!	  
	  SET "TASK=%TASK%GET PHS 8 TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	 TIMEOUT /t 2 >nul	

	 
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
		  ECHO. %TASK%INSERT_   TASK ^>[==                                                ] 05%%^<
	CSCRIPT %PATHS%\model\INSERT_.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\model\temp\INSERT_Error.log ( 
	  SET "TASK=%TASK%INSER_    TASK ^>[==                                                ] 05%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
		  ECHO. %TASK%INSERT_   TASK ^>[=============                                     ] 25%%^<
	CSCRIPT %PATHS%\model\INSERT.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\model\temp\INSERT_Error.log ( 
	  SET "TASK=%TASK%INSERT_   TASK ^>[=============                                     ] 25%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)		
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
		  ECHO. %TASK%INSERT_   TASK ^>[=========================                         ] 50%%^<
	CSCRIPT %PATHS%\model\INSERT1.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\model\temp\INSERT1_Error.log ( 
	  SET "TASK=%TASK%INSERT_   TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	
	REM =================================================================================================  INSERT =========================================================================================
		
	CLS			
		  ECHO. %TASK%INSERT_   TASK ^>[==================================================] 100%%^<  COMPLETE!!!!		  
	  SET "TASK=%TASK%INSERT_   TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
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
	REM =================================================================================================  EXPORT =========================================================================================
	 CLS	
	 	  ECHO. %TASK%EXPORT P8 TASK ^>[=========================                         ] 50%%^<
	 CSCRIPT %PATHS%\model\EXPORT.vbs >nul
	 TIMEOUT /t 2 >nul
	 If EXIST %PATHS%\model\temp\EXPORT_Error.log ( 
	  SET "TASK=%TASK%EXPORT P8 TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
	  GOTO :ERROR 	
	 )	
	 CLS	
	 	  ECHO. %TASK%EXPORT P8 TASK ^>[==================================================] 100%%^<  COMPLETE!!!!	  
	  SET "TASK=%TASK%EXPORT P8 TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	 TIMEOUT /t 2 >nul
	 
	REM =================================================================================================  EXPORT =========================================================================================
	 CLS	
			ECHO. %TASK%EXPORT    TASK ^>[=========================                         ] 50%%^<
	CSCRIPT %PATHS%\EXPORT1_DAY.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\EXPORT1_Error.log ( 
		SET "TASK=%TASK%EXPORT    TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
	 	GOTO :ERROR 	
	 )	
	 CLS	
			ECHO. %TASK%EXPORT    TASK ^>[==================================================] 100%%^<  COMPLETE!!!!	 	  
		SET "TASK=%TASK%EXPORT    TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	TIMEOUT /t 2 >nul	 
     
	CLS	
			ECHO. %TASK%SEND MAIL TASK ^>[=========================                         ] 50%%^<
	CSCRIPT %PATHS%\SENDMAIL.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\SENDMAIL_Error.log ( 
		SET "TASK=%TASK%SEND MAIL TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
			GOTO :ERROR 	
	)		 
	CLS			
			ECHO. %TASK%SEND MAIL TASK ^>[==================================================] 100%%^<  COMPLETE!!!!
		SET "TASK=%TASK%SEND MAIL TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	TIMEOUT /t 2 >nul		  
     
	TIMEOUT /t 15
	
	EXIT
	
	REM ============================================== ERROR ==========================================
	
	:ERROR
	CLS
		ECHO. %TASK%
	CSCRIPT %PATHS%\ALERT.vbs >nul
	TIMEOUT /t 2 >nul			
	TIMEOUT /t 30
		puase
		REM start http://192.168.82.31/report_service/Report_sendmail/only_send_mail

		REM TIMEOUT /t 120 >nul

		REM start http://192.168.82.31/report_service/Report_sendmail/pro_send_mail