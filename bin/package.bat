@echo off
echo.
echo [信息] 打包Web工程，生成war/jar包文件。
echo.

%~d0
cd %~dp0

cd ..
call mvn clean package -Dmaven.test.skip=true

:: 当前目录
set currPath=%~dp0
cd /d %currPath%
cd ..
:: 当前目录的上一级目录
set parentPath=%cd%
cd /d %currPath%

copy %parentPath%\ruoyi-auth\target\ruoyi-auth.jar  %parentPath%\docker\ruoyi\auth\jar\

copy %parentPath%\ruoyi-gateway\target\ruoyi-gateway.jar  %parentPath%\docker\ruoyi\gateway\jar\

copy %parentPath%\ruoyi-modules\ruoyi-file\target\ruoyi-modules-file.jar  %parentPath%\docker\ruoyi\modules\file\jar\

copy %parentPath%\ruoyi-modules\ruoyi-gen\target\ruoyi-modules-gen.jar  %parentPath%\docker\ruoyi\modules\gen\jar\

copy %parentPath%\ruoyi-modules\ruoyi-system\target\ruoyi-modules-system.jar  %parentPath%\docker\ruoyi\modules\system\jar\

copy %parentPath%\ruoyi-modules\ruoyi-job\target\ruoyi-modules-job.jar  %parentPath%\docker\ruoyi\modules\job\jar\


copy %parentPath%\ruoyi-visual\ruoyi-monitor\target\ruoyi-visual-monitor.jar  %parentPath%\docker\ruoyi\visual\monitor\jar\


pause