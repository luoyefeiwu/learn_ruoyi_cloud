@echo off
echo.
echo [��Ϣ] ���Web���̣�����war/jar���ļ���
echo.

%~d0
cd %~dp0

cd ..
call mvn clean package -Dmaven.test.skip=true

:: ��ǰĿ¼
set currPath=%~dp0
cd /d %currPath%
cd ..
:: ��ǰĿ¼����һ��Ŀ¼
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