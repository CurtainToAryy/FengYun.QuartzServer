@echo off
rem author:zhaixd,datetime:2017.6.19
echo ******************** ��������/ֹͣ/���� ********************
set serviceName=GrapNewsServiceHost.exe
:: ���밲װĿ¼
cd /d %~dp0
goto begin

rem ѡ���������
:begin
set /p input=��ѡ���������(1=����,2=ֹͣ,3=����),���س�ȷ��:
if %input% == 1 goto start
if %input% == 2 goto stop
if %input% == 3 goto reboot
if %input% neq 1 (if %input% neq 2 (if %input% neq 3 goto err))
pause
exit

rem ��������
:reboot
::��������
  %serviceName% stop
  if %ERRORLEVEL% ==0 (echo ����ֹͣ ִ�н��:��) else (echo ������ֹͣ ִ�н��:�� %ERRORLEVEL%)  
  %serviceName% start
  if %ERRORLEVEL% ==0 (echo �������� ִ�н��:��) else (echo ���������� ִ�н��:�� %ERRORLEVEL%)  
  
pause 
exit


rem ֹͣ����
:stop
:: ����ֹͣ
  %serviceName% stop
  if %ERRORLEVEL% ==0 (echo ����ֹͣ ִ�н��:��) else (echo ������ֹͣ ִ�н��:�� %ERRORLEVEL%)
pause 
exit


rem ��������
:start
  :: ��������
  %serviceName% start
  if %ERRORLEVEL% ==0 (echo �������� ִ�н��:��) else (echo ���������� ִ�н��:�� %ERRORLEVEL%)  
pause 
exit

:err
echo �� ���벻�Ϸ������,����ʧ��
set /p inputr=�Ƿ�����ѡ��(y/n):
IF "%inputr%"=="y" goto begin
exit

