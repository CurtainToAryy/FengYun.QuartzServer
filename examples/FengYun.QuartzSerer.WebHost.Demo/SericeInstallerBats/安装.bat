@echo off
rem author:zhaixd,datetime:2017.6.19
echo ******************** ����װ ********************
:: ����Ӧ�ó������ƣ�����ʵ������޸�
set serviceName=GrapNewsServiceHost.exe
:: �������װĿ¼
cd /d %~dp0
echo ��ǰĿ¼��%cd%

::��װ����
  %serviceName% install --autostart
  if %ERRORLEVEL% ==0 (echo ����װ ִ�н��:��) else (echo ����װ ִ�н��:�� %ERRORLEVEL%)
pause
exit