@echo off
rem author:zhaixd,datetime:2017.6.19
echo ***************** topshelf����װ����鿴 *****************
set serviceName=GrapNewsServiceHost.exe
:: �������װĿ¼
cd /d %~dp0
echo ��ǰĿ¼��%cd%
:: �鿴�������
%serviceName% help
pause
exit