@echo off
rem author:zhaixd,datetime:2017.6.19
echo ******************** ����ж�� ********************
set serviceName=GrapNewsServiceHost
:: ���밲װĿ¼
cd /d %~dp0

  :: ����ֹͣ
  :: %serviceName% stop
  sc stop %serviceName%
  if %ERRORLEVEL% ==0 (echo ����ֹͣ ִ�н��:��) else (echo ����ֹͣ ִ�н��:�� %ERRORLEVEL%)  
  :: ����ɾ��
  :: %serviceName% uninstall  �˷���ɾ�������������ԣ������ٴΰ�װ����,����ʹ��SC����
  sc delete %serviceName%
  if %ERRORLEVEL% ==0 (echo ����ɾ�� ִ�н��:��) else (echo ����ɾ�� ִ�н��:�� %ERRORLEVEL%)  
  
pause 
exit

