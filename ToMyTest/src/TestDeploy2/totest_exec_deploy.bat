@echo off
rem setlocal enabledelayedexpansion

rem ユーザ設定ファイル読み込み
rem for /F "eol=' tokens=1,2 delims==" %%L IN (%~dp0conf\userconfig.ini) do (set %%L=%%M)

rem HOMEパスを取得
set HOME=%~dp0

rem システム共通設定ファイル読み込み
rem call %~dp0bin\systemconfig

echo ======================
echo デプロイツールTest用
echo ======================

rem .commitを取得
rem copy %HEAD_COMMIT% %LOCAL_OLD_COMMIT% >nul
rem set /p COMMIT=<%LOCAL_OLD_COMMIT%

rem ローカルリポジトリのHOMEに移動
rem cd %REPOSITORY_HOME%

rem developブランチに切り替え
rem echo Change %DEVELOP_BRANCH%.
rem %GIT_PATH%\git checkout %DEVELOP_BRANCH%

rem ローカルdevelopブランチを最新に更新
rem echo Update %DEVELOP_BRANCH% branch.
rem %GIT_PATH%\git pull origin %DEVELOP_BRANCH%

rem 前回実行分ファイルの削除
rem %GIT_PATH%\rm -fr %HOME%codepkg/
rem %GIT_PATH%\mkdir %HOME%codepkg

rem package.xmlをコピー
rem copy /Y %HOME%conf\package.xml %HOME%codepkg\package.xml >nul

rem for /F %%i in ('%GIT_PATH%\git diff --name-only -w %COMMIT%') do (
rem 	set TARGET_FILE=%%i
rem 	set RESULT=0
rem 	
	rem コピー対象パスを取得
rem 	set FILE_PATH=!TARGET_FILE:/=\!

	rem 対象ディレクトリを作成
rem 	call :CHECK_DIR !FILE_PATH! classes
rem 	call :CHECK_DIR !FILE_PATH! pages
rem 	call :CHECK_DIR !FILE_PATH! triggers
rem 	call :CHECK_DIR !FILE_PATH! components
rem 	call :CHECK_DIR !FILE_PATH! staticresources
rem 	call :CHECK_DIR !FILE_PATH! scontrols
	
	rem デプロイ対象を処理
rem 	echo !FILE_PATH! | find "-meta.xml" >nul
rem 	if errorlevel 1 (
rem 		set DEST_FILE_PATH=%HOME%codepkg!FILE_PATH:src=!
rem 		copy /y !FILE_PATH! !DEST_FILE_PATH! >nul
rem 		if errorlevel 1 (
rem 			echo !FILE_PATH!が存在しません。
rem 			goto END
rem 		)
rem 		copy /y !FILE_PATH!-meta.xml !DEST_FILE_PATH!-meta.xml >nul
rem 		if errorlevel 1 (
rem 			echo !FILE_PATH!-meta.xmlが存在しません。
rem 			goto END
rem 		)
rem 	)
rem )

rem set IS_DEPLOY_TARGET=0

rem デプロイ対象ファイル一覧を表示する
rem echo ===== Deploy List =====
rem for /F %%a in ('dir %HOME%codepkg /b') do (
rem 	set DIR_NAME=%%a
rem 	IF EXIST %HOME%codepkg\!DIR_NAME!\ (
rem 		for /F %%i in ('dir %HOME%codepkg\!DIR_NAME! /b')  do (
rem 			set FILE_NAME=%%i
rem 			echo !FILE_NAME! | find "-meta.xml" >nul
rem 			if errorlevel 1 (
rem 				echo !FILE_NAME!
rem 				set IS_DEPLOY_TARGET=1
rem 			)
rem 		)
rem 	)
rem )

rem if "%IS_DEPLOY_TARGET%"=="0" (
rem 	echo No comitted.
rem 	echo Bye.
rem 	goto END
rem )

rem デプロイの実行確認
rem :LOOP
rem set /p EXEC_FLG="OK?[Y/n]>"

rem if "%EXEC_FLG%"=="Y" goto DEPLOY
rem if "%EXEC_FLG%"=="y" goto DEPLOY
rem if "%EXEC_FLG%"=="N" goto END
rem if "%EXEC_FLG%"=="n" goto END
rem goto LOOP

rem :DEPLOY
rem set LOG_FILE=%HOME%\log\%ANT_LOG_FILE%
rem set GET_COMMIT_LOG=%HOME%\log\get_commit.log

rem 前回のログファイルを削除
rem del /Q %HOME%\log\

cd %HOME%\conf
rem set NLS_LANG=Japanese_Japan.JA16SJISTILDE

rem デプロイ
%HOME%\ant\bin\ant -f buildToTest.xml ToTestDeployCheckOnly

rem antのログファイルにBUILD SUCCESSFULが含まれているかどうかをチェック
rem find /i "BUILD SUCCESSFUL" %HOME%\log\%ANT_LOG_FILE% >nul
rem if errorlevel 1 goto END

rem ローカルリポジトリのHOMEに移動
rem cd %REPOSITORY_HOME%

rem set HOME_SH=%HOME:\=/%

rem 最新のコミット番号を取得
rem %HOME%\git\bin\sh %HOME%bin\get_commit.sh /%HOME_SH::=%

rem COMIITをサーバにコピー
rem copy %LOCAL_HEADCOMMIT% %HEAD_COMMIT%

rem echo %DATE% %TIME:~0,8% get commitId success. >> %GET_COMMIT_LOG%

rem goto END

rem :END
rem echo %DATE% %TIME:~0,8% end. >> %GET_COMMIT_LOG%
rem pause
echo ant実行終了
exit /b


rem /**
rem  * ディレクトリが存在しているかチェックして作成する
rem  */
rem :CHECK_DIR
rem 	echo %1 | find "%2" >nul
rem 	if not errorlevel 1 (
rem 		if not exist %HOME%codepkg\%2 mkdir %HOME%codepkg\%2
rem 	)
rem 
rem endlocal
