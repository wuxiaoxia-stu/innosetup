;InnoSetupVersion=5.4.2
#define KEYX_APPNAME "��֤ͨ��ȫ�ͻ���ǩ�°�"
#define NETCA "�㶫ʡ����������֤���޹�˾"
#define APP_VERSION "4.3.2"
#define SETUP_FILE_VERSION "4.3.2.1"
#define UID1 "E05D0BBD-A092-4856-8D31-2FFECA891BF0"
#define UID "FE5C424E-446E-4C3C-BEA4-553F53E2261C"
[Setup]
AppID={{E05D0BBD-A092-4856-8D31-2FFECA891BF0}
AppName={cm:AppName}
AppVerName={cm:AppVerName}

OutputBaseFilename={#KEYX_APPNAME}
DefaultDirName={pf32}\NETCA\KeyX\
DefaultGroupName={cm:DefaultGroupName}
DisableDirPage=true
DisableProgramGroupPage=true
Compression=lzma
SolidCompression=true


AppCopyright={#NETCA}����������Ȩ����
VersionInfoCompany={#NETCA}
VersionInfoCopyright=(C) {#NETCA}����������Ȩ����
VersionInfoDescription={#KEYX_APPNAME}32λ��װ��
VersionInfoProductName={#KEYX_APPNAME}

VersionInfoTextVersion={#SETUP_FILE_VERSION}
VersionInfoVersion={#SETUP_FILE_VERSION}
AlwaysShowDirOnReadyPage=false
SetupIconFile=..\..\..\current\������\NETCA.ico

;��װ����ʾ�û�������������
AlwaysRestart =no
;ж�غ���ʾ�û�������������
;UninstallRestartComputer =yes
; ����64λģʽ
ArchitecturesInstallIn64BitMode=x64 ia64
ArchitecturesAllowed=x86 x64 ia64
ShowLanguageDialog=no
ShowUndisplayableLanguages=true
Uninstallable=false

[Languages]
Name: chinesesimp; MessagesFile: compiler:Languages\ChineseSimp-12-5.1.11.isl; LicenseFile: G:\�������\ͳһ���ʹ�����\current\������\Lisence\Fileinfobeforeǩ�°�.txt

[Messages]

chinesesimp.SetupAppTitle=��֤ͨ��ȫ�ͻ���ǩ�°�
chinesesimp.SetupWindowTitle=��֤ͨ��ȫ�ͻ���ǩ�°�

[CustomMessages]
chinesesimp.AppName=��֤ͨ��ȫ�ͻ���ǩ�°�
chinesesimp.AppVerName=��֤ͨ��ȫ�ͻ���ǩ�°�
chinesesimp.AppPublisher=�㶫ʡ����������֤���޹�˾
chinesesimp.DefaultGroupName=��֤ͨ���\��֤ͨ��ȫ�ͻ���
chinesesimp.Fileinfobefore =Fileinfobefore.txt
chinesesimp.NetcaMWInstalling=���ڰ�װ��֤ͨ��ȫ�ͻ���ǩ�°�......���Ժ�......
chinesesimp.AboutMsg=��ӭʹ����֤ͨ��ȫ�ͻ���   �㶫ʡ����������֤���޹�˾
chinesesimp.HelpMsg=ʹ���ֲ�
chinesesimp.UninstallProgram=ж����֤ͨ��ȫ�ͻ���
chinesesimp.AboutButtonTitle=[����(&A)]
chinesesimp.UrlLableCaption=NETCA��վ
chinesesimp.UrlLableHint=��ӭ����Netca��վ
chinesesimp.InstallMsg1=��װ�����⵽��֤ͨ��ȫ�ͻ������������������У�
chinesesimp.InstallMsg2=�������ǡ���ťǿ�ư�װ����
chinesesimp.InstallMsg3=�������񡱰�ť�˳���װ��
chinesesimp.UninstllMsg=���棺����ж�ش�����ľɰ汾.
chinesesimp.UninstallRestartMsg1=�����������Ժ󣬰�װ��������ִ�У��벻Ҫ�ƶ���ɾ����װ�ļ���
chinesesimp.UninstallRestartMsg2=���[ȷ��]������...

[Files]
Source: ..\..\..\install\���԰�\��׼��\Windows\��֤ͨ����ǩ�¿ͻ���\V1.5\��֤ͨ����ǩ�¿ͻ���.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\..\pdfǩ������\Adobe Plugin\output\��֤ͨPDFǩ�����_V2.0.exe; DestDir: {app}; Flags: deleteafterinstall ignoreversion
Source: ..\..\..\install\���԰�\��׼��\Windows\Ӧ�ð�װ��\��֤ͨ��ȫ�ͻ����ռ�������Ϣ���\��֤ͨ��ȫ�ͻ����ռ�������Ϣ���.exe; DestDir: {app}; Flags: ignoreversion deleteafterinstall
Source: ..\..\..\..\NETCA_CRYPTO\current\��װ��\Devices\NETCA_Devices(DX).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: ignoreversion
Source: ..\..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\l_DXKey.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: ignoreversion
Source: ..\..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\DX key.jpg; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: ignoreversion


[Run]
Filename: {app}\��֤ͨ����ǩ�¿ͻ���.exe; WorkingDir: {tmp}; Parameters: /SP- /SILENT /NORESTART /verysilent; Flags: runascurrentuser runminimized runhidden; StatusMsg: ���ڰ�װ������Ҫ��ʱ�����ӣ����Եȡ�
Filename: {app}\��֤ͨ��ȫ�ͻ����ռ�������Ϣ���.exe; WorkingDir: {app}; Parameters: /SP- /SILENT /NORESTART /verysilent; Flags: runminimized runhidden runascurrentuser; StatusMsg: ���ڰ�װ������Ҫ��ʱ�����ӣ����Եȡ�
Filename: {app}\��֤ͨPDFǩ�����_V2.0.exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {tmp}; Flags: runascurrentuser runminimized runhidden; StatusMsg: ���ڰ�װ������Ҫ��ʱ�����ӣ����Եȡ�; Check: IsAdobe
Filename: {commonappdata}\NETCA\KeyX\Drivers\NETCA_Devices(DX).exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {commonappdata}; Flags: runminimized runhidden runascurrentuser

[Registry]
;https
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\csg.cn\pm.gd; ValueType: dword; ValueName: https; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\csg.cn\pm.gx; ValueType: dword; ValueName: https; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\csg.cn\www.gzpx; ValueType: dword; ValueName: https; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\gzpec.cn\www; ValueType: dword; ValueName: https; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\gzpec.com.cn\www; ValueType: dword; ValueName: https; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\kmpex.com\www; ValueType: dword; ValueName: https; ValueData: $00000002
;http
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\csg.cn\pm.gd; ValueType: dword; ValueName: http; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\csg.cn\pm.gx; ValueType: dword; ValueName: http; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\csg.cn\www.gzpx; ValueType: dword; ValueName: http; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\gzpec.cn\www; ValueType: dword; ValueName: http; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\gzpec.com.cn\www; ValueType: dword; ValueName: http; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\kmpex.com\www; ValueType: dword; ValueName: http; ValueData: $00000002

[Code]
#include 'NETCA.iss'

function InitializeSetup(): boolean;
begin
	if (IsRunInSilent()) then
	begin
		Result:=true
		KillPro();
		KillOtherPro();
	end
	else begin
		MsgBox('Ϊ��ȷ�����������˳����װ�����Զ��ر�IE��office��PDF����س�������ȷ���Ѿ��γ����е����ܳף�', mbInformation, MB_OK);
		Result:=true
		KillPro();
		KillOtherPro();
	end
end;

procedure CurStepChanged (CurStep: TSetupStep );
Var
ResultCode: Integer;
begin
   if CurStep=ssDone  then
       begin
       if IsWin64 then
       begin
          //MsgBox('64λִ�����ע���',mbConfirmation, MB_OK);
          RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','uid','{#UID1}');
          RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','MonitorTitle','{#KEYX_APPNAME}');
          RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','version','{#SETUP_FILE_VERSION}');
         //MsgBox('64λִ�����ע������2',mbConfirmation, MB_OK);
        end  else
        begin
         // MsgBox('32λִ�����ע���',mbConfirmation, MB_OK);
         RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','MonitorTitle','{#KEYX_APPNAME}');
         RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','uid','{#UID1}');
         RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','version','{#SETUP_FILE_VERSION}');
          // MsgBox('32λִ�����ע���2',mbConfirmation, MB_OK);
        end;
        //�������,�Ҿ�Ĭ��װ,�ͻ��Զ�����keyx
		if IsOpenKeyX() or not IsRunInSilent() then
			ShellExecAsOriginalUser('',ExpandConstant('{app}/KeyX.exe'), '', '', SW_SHOWNORMAL, ewNoWait, ResultCode);

     end;
end;
