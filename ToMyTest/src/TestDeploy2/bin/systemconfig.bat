rem antのターゲット deloy
set TARGET_DEPLOY=deployCode
rem antのターゲット 検証のみ
set TARGET_CHECKONLY=deployCodeCheckOnly

rem Gitクライアントのパス
set GIT_HOME=%HOME%\git
set GIT_PATH=%GIT_HOME%\bin

rem SFデプロイantの起動バッチファイル名
set DEPLOY_BAT=%DEPLOY_HOME%\bin\deploy.bat

rem 前回デプロイ時のコミット番号管理ファイル
set LOCAL_OLD_COMMIT=%HOME%\work\.commit_old

rem ローカルの最新コミット番号ファイル
set LOCAL_HEADCOMMIT=%HOME%\work\.commit

rem ログファイル名
set ANT_LOG_FILE=%TARGET_DEPLOY%.log
