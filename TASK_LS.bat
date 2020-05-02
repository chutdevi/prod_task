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
			ECHO. %TASK%EXPORT    TASK ^>[=========================                         ] 50%%^<
	CSCRIPT %PATHS%\EXPORT1.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\EXPORT1_Error.log ( 
		SET "TASK=%TASK%EXPORT    TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
	 	GOTO :ERROR 	
	 )	
	 CLS	
			ECHO. %TASK%EXPORT    TASK ^>[==================================================] 100%%^<  COMPLETE!!!!	 	  
		SET "TASK=%TASK%EXPORT    TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
		SET "TASK=%TASK%%NEWLN%"
		SET "TASK=%TASK%%NEWLN%"
		SET "TASK=%TASK%                 ==================================================%NEWLN%"
		SET "TASK=%TASK%                 =                  SUMMARY REPORT                =%NEWLN%"
		SET "TASK=%TASK%                 ==================================================%NEWLN%"
		SET "TASK=%TASK%%NEWLN%"
		SET "TASK=%TASK%%NEWLN%"
	TIMEOUT /t 2 >nul	 
     
	 
	REM ================================================================================================  SUMMARY =========================================================================================
	CLS	
	 	    ECHO. %TASK%GET QUERY TASK ^>[=========================                         ] 50%%^<
	CSCRIPT %PATHS%\GET_LS.vbs >nul
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
			ECHO. %TASK%INSERT    TASK ^>[==                                                ] 05%%^<
			CSCRIPT %PATHS%\INSERT_LS.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT_LS_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[==                                                ] 05%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[=======                                           ] 15%%^<
			CSCRIPT %PATHS%\INSERT1.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT1_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[=======                                           ] 15%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[==============                                    ] 30%%^<
	CSCRIPT %PATHS%\INSERT2.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT2_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[==============                                    ] 30%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[=====================                             ] 45%%^<
	CSCRIPT %PATHS%\INSERT3.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT3_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[=====================                             ] 45%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[=========================                         ] 50%%^<
			CSCRIPT %PATHS%\INSERT4.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT4_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
			
	CLS
			ECHO. %TASK%INSERT    TASK ^>[=====================================             ] 65%%^<
			CSCRIPT %PATHS%\INSERT5.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT5_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[=====================================             ] 65%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[============================================      ] 80%%^<
			CSCRIPT %PATHS%\INSERT6.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT6_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[============================================      ] 80%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
	
	CLS
			ECHO. %TASK%INSERT    TASK ^>[================================================= ] 95%%^<
			CSCRIPT %PATHS%\INSERT7.vbs >nul
			TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\INSERT7_Error.log ( 
		SET "TASK=%TASK%INSERT    TASK ^>[================================================= ] 95%%^<   FAILED!!!!!! %NEWLN%" 				
		GOTO :ERROR 	
	)
	
	REM =================================================================================================  INSERT =========================================================================================
		
	CLS			
			ECHO. %TASK%INSERT    TASK ^>[==================================================] 100%%^<  COMPLETE!!!!		  
		SET "TASK=%TASK%INSERT    TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	TIMEOUT /t 2 >nul
	
	REM =================================================================================================  EXPORT =========================================================================================
	 CLS	
			ECHO. %TASK%EXPORT2   TASK ^>[=========================                         ] 50%%^<
	CSCRIPT %PATHS%\EXPORT2.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\EXPORT_Error.log ( 
		SET "TASK=%TASK%EXPORT2   TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
	 	GOTO :ERROR 	
	 )	
	 CLS	
			ECHO. %TASK%EXPORT2   TASK ^>[==================================================] 100%%^<  COMPLETE!!!!	 	  
		SET "TASK=%TASK%EXPORT2   TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	 TIMEOUT /t 2 >nul
	
	REM =================================================================================================  EXPORT =========================================================================================
	 CLS	
			ECHO. %TASK%EXPORT3_L TASK ^>[=========================                         ] 50%%^<
	CSCRIPT %PATHS%\EXPORT1_LSD.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\EXPORT_Error.log ( 
		SET "TASK=%TASK%EXPORT3   TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
	 	GOTO :ERROR 	
	 )	
	 CLS	
			ECHO. %TASK%EXPORT3_L TASK ^>[==================================================] 100%%^<  COMPLETE!!!!	 	  
		SET "TASK=%TASK%EXPORT3_L TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	 TIMEOUT /t 2 >nul

	REM =================================================================================================  EXPORT =========================================================================================
	 CLS	
			ECHO. %TASK%EXPORT1_D TASK ^>[=========================                         ] 50%%^<
	CSCRIPT %PATHS%\EXPORT1_DAY.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\EXPORT_Error.log ( 
		SET "TASK=%TASK%EXPORT1_D TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
	 	GOTO :ERROR 	
	 )	
	 CLS	
			ECHO. %TASK%EXPORT1_D TASK ^>[==================================================] 100%%^<  COMPLETE!!!!	 	  
		SET "TASK=%TASK%EXPORT1_D TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	 TIMEOUT /t 2 >nul	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	CLS	
			ECHO. %TASK%SEND MAIL TASK ^>[=========================                         ] 50%%^<
	CSCRIPT %PATHS%\SENDMAIL1_LS.vbs >nul
	TIMEOUT /t 2 >nul
	If EXIST %PATHS%\temp\SENDMAIL_LSError.log ( 
		SET "TASK=%TASK%SEND MAIL TASK ^>[=========================                         ] 50%%^<   FAILED!!!!!! %NEWLN%" 				
			GOTO :ERROR 	
	)		 
	CLS			
			ECHO. %TASK%SEND MAIL TASK ^>[==================================================] 100%%^<  COMPLETE!!!!
		SET "TASK=%TASK%SEND MAIL TASK ^>[==================================================] 100%%^<  COMPLETE!!!! %NEWLN%"
	TIMEOUT /t 2 >nul		  
     
	TIMEOUT /t 4 
	
		CLS			
			ECHO. %TASK%END       TASK ^>[==================================================] 100%%^<  COMPLETE!!!!
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