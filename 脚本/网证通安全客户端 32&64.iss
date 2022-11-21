#define KEYX_APPNAME "��֤ͨ��ȫ�ͻ���"
#define NETCA "�㶫ʡ����������֤���޹�˾"
#define APP_VERSION "4.4.1"
#define SETUP_FILE_VERSION "4.4.1.1"
#define CERTSERVICE_VERSION "2.0.9.2"
#define CertActivation_VERSION "1.0.1.4"
#define UID "FE5C424E-446E-4C3C-BEA4-553F53E2261C"
#define UID1 "A0B399CD-984F-41F2-9A5D-E3BF7A54E696"
[Setup]
AppId={{FE5C424E-446E-4C3C-BEA4-553F53E2261C}
;Ӧ�ó�����Ϣ
AppName={cm:AppName}
AppVerName={cm:AppVerName}
AppCopyright={#NETCA}����������Ȩ����
;�������ж����Ϣ
AppVersion={#SETUP_FILE_VERSION}
AppPublisher={cm:AppPublisher}
UninstallDisplayName={#KEYX_APPNAME}
AppPublisherURL=http://www.cnca.net
AppSupportURL=http://www.cnca.net
AppUpdatesURL=http://www.cnca.net
OutputBaseFilename={#KEYX_APPNAME}
;��װĿ¼
DefaultDirName={pf32}\NETCA\KeyX
DefaultGroupName={cm:DefaultGroupName}
;������Ϣ
UseSetupLdr=true
MergeDuplicateFiles=true
DisableDirPage=true
DisableProgramGroupPage=true
Compression=lzma
SolidCompression=true
;�汾��Ϣ
VersionInfoCompany={#NETCA}
VersionInfoCopyright=(C) {#NETCA}����������Ȩ����
VersionInfoDescription={#KEYX_APPNAME}32&64λ��װ��
VersionInfoProductName={#KEYX_APPNAME}
VersionInfoVersion={#SETUP_FILE_VERSION}
VersionInfoProductVersion={#APP_VERSION}
AlwaysShowDirOnReadyPage=false
;Э��
LicenseFile=..\������\Lisence\Fileinfobefore.txt
;��װ����ͼ��
SetupIconFile=..\������\NETCA.ico
;��װ����ʾ�û�������������
AlwaysRestart =no
;ж�غ���ʾ�û�������������
UninstallRestartComputer=false
; ����64λģʽ
ArchitecturesInstallIn64BitMode=x64 ia64
ArchitecturesAllowed=x86 x64 ia64
ShowLanguageDialog=auto
ShowUndisplayableLanguages=true
UninstallLogMode=append
UninstallDisplayIcon={app}\NETCA.ico
PrivilegesRequired=admin
changesEnvironment=true
SetupLogging=true
ChangesAssociations=true
;��ʾ��װ��ӭ����
DisableWelcomePage=no
UsePreviousAppDir=false
RestartIfNeededByRun =no

[Languages]
Name: chinesesimp; MessagesFile: compiler:Languages\ChineseSimp-12-5.1.11.isl; LicenseFile: ..\������\Lisence\Fileinfobefore.txt
Name: trad; MessagesFile: compiler:Languages\ChineseTrad-2-5.1.11.isl; LicenseFile: ..\������\Lisence\Fileinfobefore_trad.txt
Name: eng; MessagesFile: compiler:Default.isl; LicenseFile: ..\������\Lisence\Fileinfobefore_eng.txt

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: 

[Messages]
chinesesimp.SetupAppTitle=��֤ͨ��ȫ�ͻ���
chinesesimp.SetupWindowTitle=��֤ͨ��ȫ�ͻ���
trad.SetupAppTitle=�W�Cͨ��ȫ�͑���
trad.SetupWindowTitle=�W�Cͨ��ȫ�͑���
eng.SetupAppTitle=KeyX
eng.SetupWindowTitle=KeyX

[CustomMessages]
;���尲װ
chinesesimp.AppName=��֤ͨ��ȫ�ͻ���
chinesesimp.AppVerName=��֤ͨ��ȫ�ͻ���
chinesesimp.AppPublisher=�㶫ʡ����������֤���޹�˾
chinesesimp.DefaultGroupName=��֤ͨ���\{#KEYX_APPNAME}
chinesesimp.Fileinfobefore =Fileinfobefore.txt
chinesesimp.NetcaMWInstalling=���ڰ�װ��֤ͨ��ȫ�ͻ���......���Ժ�......
chinesesimp.AboutMsg=��ӭʹ����֤ͨ��ȫ�ͻ���   �㶫ʡ����������֤���޹�˾
chinesesimp.InstallMsg=Ϊ��ȷ�����������˳����װ����ȷ���Ѿ��γ����е����ܳײ��ر�IE��office��PDF����س���
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
;���尲װ
trad.AppName=�W�Cͨ��ȫ�͑���
trad.AppVerName=�W�Cͨ��ȫ�͑���
trad.AppPublisher=�V�|ʡ����̄��J�C���޹�˾�q
trad.DefaultGroupName=�W�Cͨܛ��\�W�Cͨ��ȫ�͑���
trad.Fileinfobefore =Fileinfobefore_trad.txt
trad.NetcaMWInstalling=���ڰ��b�W�Cͨ��ȫ�͑���......Ո�Ժ�......
trad.AboutMsg=�gӭʹ�þW�Cͨ��ȫ�͑���   �V�|ʡ����̄��J�C���޹�˾�q
trad.HelpMsg=ʹ���փ�
trad.UninstallProgram=ж�d�W�Cͨ��ȫ�͑���
trad.AboutButtonTitle=[�P��(&A)]
trad.UrlLableCaption=NETCA�Wվ
trad.UrlLableHint=�gӭ�L��Netca�Wվ
trad.InstallMsg1=���b����z�y���W�Cͨ��ȫ�͑����ӳ��������\�У��I
trad.InstallMsg2=�Γ����ǡ����o���ư��b���򣻧ǡF
trad.InstallMsg3=�Γ����񡱰��o�˳����b��
trad.UninstllMsg=���棺����ж�d��ܛ�����f�汾.
trad.UninstallRestartMsg1=��������X�ᣬ���b������^�m���У�Ո��Ҫ�Ƅӻ�h�����b�ļ���
trad.UninstallRestartMsg2=�c��[�_��]�t�؆�...
;Ӣ�İ�װ
eng.AppName=KeyX
eng.AppVerName=KeyX
eng.AppPublisher=Guangdong Electronic Certification Authority
eng.DefaultGroupName=NETCA\KeyX
eng.Fileinfobefore =Fileinfobefore_eng.txt
eng.NetcaMWInstalling=Being installed KeyX, please wait ..........
eng.AboutMsg=Welcome to KeyX   Guangdong Electronic Certification Authority
eng.HelpMsg=NetcaHelp
eng.UninstallProgram=Uninstall KeyX
eng.AboutButtonTitle=[About(&A)]
eng.UrlLableCaption=NETCA Website
eng.UrlLableHint=Welcome to Netca Website
eng.InstallMsg1=Installation program detects that the KeyX is running!
eng.InstallMsg2=Click the "Yes" button to close the KeyX and continue;
eng.InstallMsg3=Click the "No" button to exit the installation!
eng.UninstllMsg=Warning: about to uninstall the old version of this software.
eng.UninstallRestartMsg1=restart the computer after the installation program will continue to implement, please do not move or delete the installation files.
eng.UninstallRestartMsg2=Click [OK] to restart ...

[Files]
;KeyXģ��
Source: ..\������\KeyX_Duilib_Version\KeyX\x86\KeyX.exe; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\x86\NETCA_Language.dll; DestDir: {app}; Flags: uninsrestartdelete ignoreversion restartreplace
Source: ..\������\KeyX_Duilib_Version\KeyX\x86\NetcaConfigFile.dll; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\x86\ConfigFileCollection.dll; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\Contributors.txt; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\KeyX.ini; DestDir: {commonappdata}\netca\keyx; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\lang\1028.lng; DestDir: {commonappdata}\NETCA\keyx\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\KeyX\lang\1033.lng; DestDir: {commonappdata}\NETCA\keyx\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\KeyX\lang\2052.lng; DestDir: {commonappdata}\NETCA\keyx\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\KeyX\lang\3076.lng; DestDir: {commonappdata}\NETCA\keyx\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\KeyX\lang\5124.lng; DestDir: {commonappdata}\NETCA\keyx\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\Caption\*; DestDir: {app}\skin\Caption; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\Common\*; DestDir: {app}\skin\Common; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\FirstBar\*; DestDir: {app}\skin\FirstBar; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\Home\*; DestDir: {app}\skin\Home; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\oftenAppBar\*; DestDir: {app}\skin\oftenAppBar; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\SubXml\*; DestDir: {app}\skin\SubXml; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\sysbtn\*; DestDir: {app}\skin\sysbtn; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\CopyRight\*; DestDir: {app}\skin\CopyRight; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\ConfigModule\*; DestDir: {app}\skin\ConfigModule; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\scrollbar\*; DestDir: {app}\skin\scrollbar; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\*; DestDir: {app}\skin; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\CertInfo\*; DestDir: {app}\skin\CertInfo; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\skin\Logo\*; DestDir: {app}\skin\Logo; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\KeyX\DefaultConfig\*; DestDir: {app}\skin; Flags: uninsrestartdelete ignoreversion; Check: not IsXP
Source: ..\������\KeyX_Duilib_Version\KeyX\DefaultConfig\Xp\*; DestDir: {app}\skin; Flags: uninsrestartdelete ignoreversion; Check: IsXP
;CertManagerPluginģ��
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\X86\CertManagerPlugin.dll; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin.plugin; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\CertManagerPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\Caption\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\Caption; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\Common\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\Common; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\MainFrame\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\MainFrame; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\NoUSBKey\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\NoUSBKey; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\scrollbar\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\scrollbar; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\SubXml\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\SubXml; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\sysbtn\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\sysbtn; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\ConfigModule\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\ConfigModule; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\NoDeviceCertNotify\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\NoDeviceCertNotify; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\NotifyUI\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\NotifyUI; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\DefaultConfig\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: not IsXP
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\DefaultConfig\Xp\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: IsXP
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\Lang\2052\2052.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\CertManagerPlugin\Lang\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\CertManagerPlugin\; Flags: ignoreversion uninsrestartdelete
;CertServiceģ��
Source: ..\������\KeyX_Duilib_Version\CertService\X86\CertServicePlugin.dll; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\x86\RenewCertInterface.dll; DestDir: {app}; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\CertServicePlugin.plugin; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\CertServicePlugin\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\lang\1033.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\lang\2052.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\lang\1028.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\lang\3076.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\lang\5124.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\MimeType.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\RenewCertInterface.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\RenewCertPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\Caption\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\Caption; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\Common\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\Common; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\List\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\List; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\QueryStatus\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\QueryStatus; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\scrollbar\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\scrollbar; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\SubXml\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\SubXml; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\sysbtn\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\sysbtn; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\ConfigModule\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\ConfigModule; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\DefaultConfig\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: not IsXP
Source: ..\������\KeyX_Duilib_Version\CertService\DefaultConfig\Xp\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: IsXP
;4.4.0����
Source: ..\������\KeyX_Duilib_Version\CertService\X86\CertServiceUtil.exe; DestDir: {app}; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\CertService\userprotocol.txt; DestDir: {commonappdata}\netca\keyx; Flags: ignoreversion uninsrestartdelete



;DeviceManagerPluginģ��
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\X86\DeviceManagerPlugin.dll; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\x86\sqlite3.dll; DestDir: {app}; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\DeviceManagerPlugin.plugin; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\DeviceManagerPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\lang\1033.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\lang\2052.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\lang\1028.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\lang\3076.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\lang\5124.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\DeviceManagerPlugin\skin\*; DestDir: {app}\Plugin\CertApp\DeviceManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\DeviceManagerPlugin\skin\ConfigModule\*; DestDir: {app}\Plugin\CertApp\DeviceManagerPlugin\skin\ConfigModule; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\DefaultConfig\*; DestDir: {app}\Plugin\CertApp\DeviceManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: not IsXP
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\DefaultConfig\Xp\*; DestDir: {app}\Plugin\CertApp\DeviceManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: IsXP
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\a_HTSM2COS.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\b_FT3000GM.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\c_FT3003.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\d_ES.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\e_Weepal2001.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\f_MWV2V3.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\g_LongMaiOTG.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\h_HDSDCard.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\i_FTBluetoothKey.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\j_ESBluetoothKey.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\n_FTA.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\o_ESA.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
;DownloadCenterPluginģ��
Source: ..\������\KeyX_Duilib_Version\DownloadCenterPlugin\X86\DownloadCenterPlugin.dll; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DownloadCenterPlugin\DownloadCenterPlugin.plugin; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DownloadCenterPlugin\DownloadCenterPlugin\icon_download.png; DestDir: {app}\Plugin\CertApp\DownloadCenterPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DownloadCenterPlugin\DownloadCenterPlugin\icon_commondownload.png; DestDir: {app}\Plugin\CertApp\DownloadCenterPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DownloadCenterPlugin\DownloadCenterPlugin\icon_commondownload_hot.png; DestDir: {app}\Plugin\CertApp\DownloadCenterPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DownloadCenterPlugin\DownloadCenterPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DownloadCenterPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DownloadCenterPlugin\DownLoadCenterPlugin\skin\Common\*; DestDir: {app}\Plugin\CertApp\DownloadCenterPlugin\skin\Common; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DownloadCenterPlugin\DownLoadCenterPlugin\skin\skin.xml; DestDir: {app}\Plugin\CertApp\DownloadCenterPlugin\skin; Flags: ignoreversion uninsrestartdelete
;DriverInstallerPluginģ��
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\X86\DriverInstallerPlugin.dll; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\DriverInstallerPlugin.plugin; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\DriverInstallerPlugin\*; DestDir: {app}\Plugin\CertApp\DriverInstallerPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\DriverInstallerPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\lang\1033.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\lang\2052.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\lang\1028.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\lang\3076.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\lang\5124.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin\lang; Flags: ignoreversion uninsrestartdelete
;Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\*; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\����.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\ES.jpg; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\ESBluetooth.jpg; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\FT3000GM.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\FT3003.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\FTBluetooth.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\HDSDCard.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\HT.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\LongMaiGM3000.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\MWV2.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\MWV3.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\weepal2001.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\F6.png; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\W2.png; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\DriverInstallerPlugin\DriverInstallerPlugin\skin\*; DestDir: {app}\Plugin\CertApp\DriverInstallerPlugin\skin; Flags: ignoreversion uninsrestartdelete
;SoftwareEnvironmentCheckingPluginģ��
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\X86\SoftwareEnvironmentCheckingPlugin.dll; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin.plugin; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin\icon_repair.png; DestDir: {app}\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin\icon_commonapprepair.png; DestDir: {app}\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin\icon_commonapprepair_hot.png; DestDir: {app}\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\ServerCheck.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\lang\1033.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\lang\2052.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\lang\1028.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\lang\3076.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\lang\5124.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\RegCerts.bat; DestDir: {commonappdata}\netca\keyx; Flags: ignoreversion uninsrestartdelete
Source: ..\������\֤����\NETCA_CA.reg; DestDir: {commonappdata}\netca\keyx\certs_reg; Flags: ignoreversion uninsrestartdelete
Source: ..\������\֤����\NETCA_ROOT.reg; DestDir: {commonappdata}\netca\keyx\certs_reg; Flags: ignoreversion uninsrestartdelete
Source: ..\������\֤����\NETCA_SM2.reg; DestDir: {commonappdata}\netca\keyx\certs_reg; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin\skin\scrollbar\*; DestDir: {app}\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\skin\scrollbar; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin\skin\*; DestDir: {app}\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\skin; Flags: ignoreversion uninsrestartdelete
;MainPageCompanyHomeģ��
Source: ..\������\KeyX_Duilib_Version\MainPageCompanyHome\X86\MainPageCompanyHomePlugin.dll; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MainPageCompanyHome\MainPageCompanyHomePlugin.plugin; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MainPageCompanyHome\MainPageCompanyHomePlugin\home.jpg; DestDir: {app}\plugin\certApp\MainPageCompanyHomePlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MainPageCompanyHome\MainPageCompanyHomePlugin.ini; DestDir: {commonappdata}\netca\keyx\plugin\certApp\MainPageCompanyHomePlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MainPageCompanyHome\MainPageCompanyHomePlugin\skin\*; DestDir: {app}\plugin\certApp\MainPageCompanyHomePlugin\skin; Flags: ignoreversion uninsrestartdelete
;MessagePushCenterMainPagePluginģ��
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\X86\MessagePushCenterMainPagePlugin.dll; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin.plugin; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\home.jpg; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\sysbtn\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\sysbtn\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\SubXml\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\SubXml\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\scrollbar\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\scrollbar\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\Logo\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\Logo\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\Common\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\Common\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\DefaultConfig\*; DestDir: {app}\Plugin\CertApp\MessagePushCenterMainPagePlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: not IsXP
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\DefaultConfig\Xp\*; DestDir: {app}\Plugin\CertApp\MessagePushCenterMainPagePlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: IsXP
;MessagePushCenterPluginģ��
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\x86\MessagePushCenterPlugin.dll; DestDir: {app}\plugin\certApp\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin.plugin; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\home.png; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\sysbtn\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\sysbtn\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\SubXml\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\SubXml\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\scrollbar\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\scrollbar\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\Logo\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\Logo\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\ConfigModule\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\ConfigModule\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\Common\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\Common\; Flags: ignoreversion uninsrestartdelete
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\DefaultConfig\*; DestDir: {app}\Plugin\CertApp\MessagePushCenterPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: not IsXP
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\DefaultConfig\Xp\*; DestDir: {app}\Plugin\CertApp\MessagePushCenterPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: IsXP
Source: ..\������\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\MessagePushCenterPlugin\; Flags: ignoreversion uninsrestartdelete
;CertActivationPluginģ��
Source: ..\������\KeyX_Duilib_Version\CertActivation\x86\CertActivationPlugin.dll; DestDir: {app}\plugin\certApp\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\x86\CertActivationPlugin.plugin; DestDir: {app}\plugin\certApp\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\lang\1028.lng; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\lang\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\lang\1033.lng; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\lang\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\lang\2052.lng; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\lang\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\lang\3076.lng; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\lang\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\lang\5124.lng; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\lang\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\CertActivationPlugin.ini; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\DefaultConfig\*; DestDir: {app}\plugin\certApp\CertActivationPlugin\skin\; Flags: restartreplace uninsrestartdelete ignoreversion; Check: not IsXP
Source: ..\������\KeyX_Duilib_Version\CertActivation\DefaultConfig\Xp\*; DestDir: {app}\plugin\certApp\CertActivationPlugin\skin\; Flags: restartreplace uninsrestartdelete ignoreversion; Check: IsXP
Source: ..\������\KeyX_Duilib_Version\CertActivation\SkinConfig\icon_activation.png; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\SkinConfig\icon_common_activation.PNG; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\SkinConfig\icon_common_activation_hot.PNG; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\SkinConfig\icon_common_activation_hot.ico; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\Common\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\Common\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\ConfigModule\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\ConfigModule\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\mainframe\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\mainframe\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\SubXml\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\SubXml\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\scrollbar\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\scrollbar\; Flags: restartreplace uninsrestartdelete ignoreversion
;Crypto �Լ�����ģ��
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\NETCA_Crypto.exe; DestDir: {commonappdata}\NETCA\KeyX; Flags: uninsrestartdelete ignoreversion deleteafterinstall
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\NETCA_Devices_x86(MWV2V3).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\NETCA_Devices(ES).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\NETCA_Devices(FT3003).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\NETCA_Devices(HTSM2COS).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\NETCA_Devices(weepal2001).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\NETCA_Devices(FT3000GM).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\NETCA_Devices(HDSDCard).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\NETCA_Devices(FTBluetoothKey).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\NETCA_Devices(LongMaiOTG).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\NETCA_Devices(ESBluetoothKey).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\�Ķ�������Key\Output\NETCA_Devices(ESA).exe; DestDir: {commonappdata}\netca\keyx\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\��װ��\Devices\����SJK1104G\NETCA_Devices(FTA).exe; DestDir: {commonappdata}\netca\keyx\Drivers\; Flags: uninsrestartdelete ignoreversion
;���
Source: ..\..\install\���԰�\��׼��\Windows\Ӧ�ð�װ��\���ݶ������Ӧ�ò��\������\��֤ͨ��ȫ�ͻ��˼��ݶ������Ӧ�ò��.exe; DestDir: {commonappdata}\NETCA\KeyX; Flags: uninsrestartdelete ignoreversion; DestName: ��֤ͨ��ȫ�ͻ��˼��ݶ������Ӧ�ò��.exe
Source: ..\..\install\���԰�\��׼��\Windows\Ӧ�ð�װ��\��������Ӧ�ò����װ��.exe; DestDir: {commonappdata}\NETCA\KeyX; Flags: uninsrestartdelete ignoreversion
Source: ..\..\install\���԰�\��׼��\Windows\Ӧ�ð�װ��\�ҵ�ӡ��Ӧ�ò��\������\�ҵ�ӡ��Ӧ�ò��.exe; DestDir: {commonappdata}\netca\keyx; Flags: uninsrestartdelete ignoreversion deleteafterinstall
;�������
Source: ..\..\..\�������\��װ��\��֤ͨ���߸��¿ͻ���\��֤ͨ���߸��¿ͻ���.exe; DestDir: {app}; Flags: deleteafterinstall uninsrestartdelete
;����
Source: ..\������\NETCA.ico; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
Source: ..\������\����Ĳ��\ISTask.dll; DestDir: {app}; Flags: uninsrestartdelete
Source: ..\..\..\֤�����\������������\����SM2\FT_USB_TOKEN_3000GM\XPϵͳ��ccid����\dpinstx86.exe; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsX86xpWin7
Source: ..\..\..\֤�����\������������\����SM2\FT_USB_TOKEN_3000GM\XPϵͳ��ccid����\oem21.CAT; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsX86xpWin7
Source: ..\..\..\֤�����\������������\����SM2\FT_USB_TOKEN_3000GM\XPϵͳ��ccid����\oem21.inf; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsX86xpWin7
Source: ..\..\..\֤�����\������������\����SM2\FT_USB_TOKEN_3000GM\XPϵͳ��ccid����\RestartScardService.bat; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsXP
Source: ..\..\..\֤�����\������������\����SM2\FT_USB_TOKEN_3000GM\XPϵͳ��ccid����\usbccid.cat; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsX86xpWin7
Source: ..\..\..\֤�����\������������\����SM2\FT_USB_TOKEN_3000GM\XPϵͳ��ccid����\usbccid.sys; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsX86xpWin7
;���ݲ����ӿ�Netca
Source: ..\..\..\���轻��\���ݲ����ӿ�\x86\NetcaDataCtl.dll; DestDir: {sys}; Flags: uninsrestartdelete ignoreversion; Check: not IsWin64
Source: ..\..\..\���轻��\���ݲ����ӿ�\x64\NetcaDataCtl.dll; DestDir: {sys}; Flags: uninsrestartdelete ignoreversion; Check: IsWin64
Source: ..\..\..\���轻��\���ݲ����ӿ�\x86\NetcaDataCtl.dll; DestDir: {syswow64}; Flags: uninsrestartdelete ignoreversion; Check: IsWin64
Source: ..\������\����Ĳ��\del.bat; DestDir: {app}
;��̩�����������п�
Source: ..\������\VC Runtime\vs2008_vcredist_x86.exe; DestDir: {app}; Flags: uninsrestartdelete ignoreversion deleteafterinstall
Source: ..\������\����Ĳ��\ISTask.dll; DestDir: {sys}; Flags: onlyifdoesntexist; Check: not IsWin64
Source: ..\������\����Ĳ��\ISTask.dll; DestDir: {syswow64}; Flags: onlyifdoesntexist; Check: IsWin64
;NETCA��װ�ӿڿ�
Source: ..\������\KeyX_Duilib_Version\NetcaInstallPort\��̬��\x86\NetcaInstallPort.dll; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
;�ͻ��˶������RPC�ӿ�
Source: ..\������\KeyX_Duilib_Version\WebSocketPlugin\x86\KeyX_JSONRPC.dll; DestDir: {app}\Plugin\CertApp\WebSocketPlugin\NetcaWebSocketServer\; Flags: uninsrestartdelete ignoreversion
Source: ..\������\KeyX_Duilib_Version\WebSocketPlugin\x64\KeyX_JSONRPC.dll; DestDir: {pf}\NETCA\KeyX\Plugin\CertApp\WebSocketPlugin\NetcaWebSocketServer\; Flags: uninsrestartdelete ignoreversion; Check: IsWin64


;trust�ļ�
;Source: ..\������\InnoSetup\Netca_Crypto\InnoSetupInstallOperator.dll; DestDir: {tmp}; Flags: dontcopy solidbreak
;Source: ..\..\..\NETCA_CRYPTO\current\��ȫ����\trust; DestDir: {tmp}; Flags: uninsrestartdelete ignoreversion
;Source: ..\..\..\NETCA_CRYPTO\current\��ȫ����\trust; DestDir: {commonappdata}\NETCA\certs; Flags: uninsrestartdelete restartreplace ignoreversion; check: IsTrustNoModify1
;Source: ..\..\..\NETCA_CRYPTO\current\��ȫ����\trust; DestDir: {localappdata}\VirtualStore\ProgramData\NETCA\certs; Flags: uninsrestartdelete restartreplace ignoreversion; Check: IsTrustNoModify2 and (not IsXp)

[Icons]
;���������ݷ�ʽ����ʼ�˵�
Name: {group}\{cm:UninstallProgram,{#KEYX_APPNAME}}; Filename: {app}\Unins_KeyX.exe; WorkingDir: {app}
Name: {group}\{cm:AppName,{#KEYX_APPNAME}}; Filename: {app}\KeyX.exe
Name: {commondesktop}\{cm:AppName,{#KEYX_APPNAME}}; Filename: {app}\KeyX.exe; Tasks: desktopicon; WorkingDir: {app}; IconIndex: 0; Components: 

[Run]
;��װ�ͻ��˶�ʱ��Ҫ���еĳ���ע�����õĲ���
Filename: {app}\vs2008_vcredist_x86.exe; Parameters: /q /norestart; Flags: runascurrentuser runminimized runhidden; WorkingDir: {app}; Check: VC2008Isinstall
Filename: {commonappdata}\NETCA\KeyX\NETCA_Crypto.exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {commonappdata}\NETCA\KeyX; StatusMsg: {cm:NetcaMWInstalling, ���ڰ�װ��֤ͨ��ȫ�м��,���Ժ�..........}; Flags: runascurrentuser runminimized runhidden; BeforeInstall: DelRegPendingFileRename()
Filename: {app}\dpinstx86.exe; WorkingDir: {sys}; Flags: runascurrentuser runminimized runhidden; Parameters: " /s /F /sa"; Check: IsXP
Filename: {app}\RestartScardService.bat; WorkingDir: {app}; Flags: shellexec runascurrentuser runminimized runhidden; Check: IsXP; Parameters: /sp- /VERYSILENT /norestart
;���
Filename: {commonappdata}\NETCA\KeyX\��������Ӧ�ò����װ��.exe; Parameters: /sp- /VERYSILENT /norestart /NETCA_MAINFRAME_NOAUTORUN; Flags: runascurrentuser runminimized runhidden; WorkingDir: {commonappdata}\NETCA\KeyX; StatusMsg: ���ڰ�װ��������Ӧ�ò��,���Ժ�.......
Filename: {commonappdata}\netca\keyx\�ҵ�ӡ��Ӧ�ò��.exe; WorkingDir: {commonappdata}\NETCA\KeyX; Flags: runhidden runascurrentuser runminimized; Parameters: /sp- /VERYSILENT /norestart; StatusMsg: ���ڰ�װ�ҵ�ӡ��Ӧ�ò��,���Ժ�.......
Filename: {commonappdata}\NETCA\KeyX\��֤ͨ��ȫ�ͻ��˼��ݶ������Ӧ�ò��.exe; Parameters: /sp- /VERYSILENT /norestart; Flags: runhidden runascurrentuser runminimized; WorkingDir: {commonappdata}\NETCA\KeyX; StatusMsg: ���ڰ�װ��֤ͨ��ȫ�ͻ��˼��ݶ������Ӧ�ò��,���Ժ�.......
Filename: {app}\��֤ͨ���߸��¿ͻ���.exe; Parameters: /sp- /VERYSILENT /norestart; Flags: runhidden runascurrentuser runminimized; WorkingDir: {commonappdata}\NETCA\KeyX; StatusMsg: ���ڰ�װ��ͨ���߸��¿ͻ���,���Ժ�.......
;�豸����
Filename: {commonappdata}\NETCA\KeyX\Drivers\NETCA_Devices(ES).exe; WorkingDir: {app}; Flags: runhidden runascurrentuser runminimized; Parameters: /sp- /VERYSILENT /norestart
Filename: {commonappdata}\NETCA\KeyX\Drivers\NETCA_Devices(FT3000GM).exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {app}; Flags: runhidden runascurrentuser runminimized
Filename: {commonappdata}\NETCA\KeyX\Drivers\NETCA_Devices(HTSM2COS).exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {app}; Flags: runhidden runascurrentuser runminimized
Filename: {commonappdata}\NETCA\KeyX\Drivers\NETCA_Devices(FT3003).exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {app}; Flags: runhidden runascurrentuser runminimized
Filename: {commonappdata}\NETCA\KeyX\Drivers\NETCA_Devices(ESBluetoothKey).exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {app}; Flags: runhidden runascurrentuser runminimized
Filename: {commonappdata}\NETCA\KeyX\Drivers\NETCA_Devices(FTBluetoothKey).exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {app}; Flags: runhidden runascurrentuser runminimized
Filename: {commonappdata}\NETCA\KeyX\Drivers\NETCA_Devices(HDSDCard).exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {app}; Flags: runhidden runascurrentuser runminimized
Filename: {commonappdata}\NETCA\KeyX\Drivers\NETCA_Devices(LongMaiOTG).exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {app}; Flags: runhidden runascurrentuser runminimized
Filename: {commonappdata}\NETCA\KeyX\Drivers\NETCA_Devices(weepal2001).exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {app}; Flags: runhidden runascurrentuser runminimized
Filename: {commonappdata}\netca\keyx\Drivers\NETCA_Devices(ESA).exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {app}; Flags: runhidden runascurrentuser runminimized
Filename: {commonappdata}\netca\keyx\Drivers\NETCA_Devices(FTA).exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {app}; Flags: runhidden runascurrentuser runminimized
Filename: {app}\del.bat; Flags: shellexec runhidden waituntilterminated runascurrentuser runminimized

[UninstallRun]
;ж�ؿͻ���ʱ��Ҫ���еĳ���
;���
Filename: {pf32}\NETCA\KeyX\KeyxPlugins.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\SealManagerPluginUnins.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\Unins_WebsocketPlugins.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\LianZhouPCSoftCertCOM.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\Unins_SelfServiceUnlock.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist runhidden
Filename: {pf32}\NETCA\KeyX\Unins_cloudKey.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\unins001.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\unins002.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\unins003.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\unins004.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\unins005.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\unins006.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\unins007.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\unins008.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
;�������
Filename: {pf32}\NETCA\LiveUpdate\Unins_UpdateMgr.exe; Parameters: /SILENT /VERYSILENT /NORESTART; WorkingDir: {pf32}\NETCA\LiveUpdate; Flags: skipifdoesntexist
;�豸����
Filename: {pf}\NETCA\NETCA_Devices\Unins_HTRSACOS.exe; WorkingDir: {pf}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf}\NETCA\NETCA_Devices\Unins_HTSM2COS.exe; WorkingDir: {pf}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf}\NETCA\NETCA_Devices\Unins_FT3000GM.exe; WorkingDir: {pf}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf}\NETCA\NETCA_Devices\Unins_FT3003.exe; WorkingDir: {pf}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf}\NETCA\NETCA_Devices\Unins_ES.exe; WorkingDir: {pf}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf}\NETCA\NETCA_Devices\Unins_weepal2001.exe; WorkingDir: {pf}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf}\NETCA\NETCA_Devices\Unins_FTA.exe; WorkingDir: {pf}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf}\NETCA\NETCA_Devices\Unins_ESA.exe; WorkingDir: {pf}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist

Filename: {pf32}\NETCA\NETCA_Devices\Unins_MWV2V3.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\Unins_LongMaiOTG.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\Unins_HDSDCard.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\Unins_FTBluetoothKey.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\Unins_ESBluetoothKey.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\unins000.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\unins001.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\unins002.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\unins003.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\unins004.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\unins005.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\unins006.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\NETCA_Devices\unins007.exe; WorkingDir: {pf32}\NETCA\NETCA_Devices; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
;�м��
Filename: {pf}\NETCA\NETCA_Crypto\unins000.exe; WorkingDir: {pf}\NETCA\NETCA_Crypto; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\ADOBE\unins000.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist

[Registry]
;32λע���
Root: HKLM; SubKey: SOFTWARE\Microsoft\Windows\CurrentVersion\Run; ValueType: string; ValueName: KeyX; ValueData: "{app}\KeyX.exe ""/ShowWindow=hide"""; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: version; ValueData: {#SETUP_FILE_VERSION}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: uid; ValueData: {#UID}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: supportupdate; ValueData: 0; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: name; ValueData: KeyX; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: MonitorClassName; ValueData: netcaKeyXMainFrame; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: Path; ValueData: {app}\KeyX.exe; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: MonitorTitle; ValueData: ��֤ͨ��ȫ�ͻ���; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: checkPath; ValueData: {app}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: InstallPath; ValueData: {app}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: Cryptopath; ValueData: {sys}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: userType; ValueData: Administrator; Check: not IsWin64; Flags: uninsdeletekey
;64λϵͳ32λע���
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Run; ValueType: string; ValueName: KeyX; ValueData: "{app}\KeyX.exe ""/ShowWindow=hide"""; Flags: uninsdeletekey; Check: IsWin64
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: version; ValueData: {#SETUP_FILE_VERSION}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: uid; ValueData: {#UID}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: supportupdate; ValueData: 0; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: name; ValueData: KeyX; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: MonitorClassName; ValueData: netcaKeyXMainFrame; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: Path; ValueData: {app}\KeyX.exe; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: MonitorTitle; ValueData: ��֤ͨ��ȫ�ͻ���; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: checkPath; ValueData: {app}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: InstallPath; ValueData: {app}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: Cryptopath; ValueData: {sys}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: userType; ValueData: Administrator; Check: IsWin64; Flags: uninsdeletekey
;֤�����ڲ��32λϵͳ
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: string; ValueName: version; ValueData: {#CERTSERVICE_VERSION}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: string; ValueName: uid; ValueData: 9979FFD2-CBA0-4530-8926-20B4769BE404; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: string; ValueName: MonitorTitle; ValueData: ��֤֤ͨ�����ڲ��; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: string; ValueName: Iconpath; ValueData: {app}\Plugin\CertApp\CertServicePlugin\icon_common_business.PNG; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: dword; ValueName: AccessToProtocol; ValueData: $00000000; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: dword; ValueName: AccessToProtocol; ValueData: $00000001; Check: IsXP; Flags: uninsdeletekey
;֤�����ڲ��64λϵͳ
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX\CertService; ValueType: string; ValueName: version; ValueData: {#CERTSERVICE_VERSION}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX\CertService; ValueType: string; ValueName: uid; ValueData: 9979FFD2-CBA0-4530-8926-20B4769BE404; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX\CertService; ValueType: string; ValueName: MonitorTitle; ValueData: ��֤֤ͨ�����ڲ��; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX\CertService; ValueType: string; ValueName: Iconpath; ValueData: {app}\Plugin\CertApp\CertServicePlugin\icon_common_business.PNG; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX\CertService; ValueType: dword; ValueName: AccessToProtocol; ValueData: $00000000; Check: IsWin64; Flags: uninsdeletekey
;֤�鼤����32
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertActivation; ValueType: string; ValueName: uid; ValueData: 1ECA9A03-64C6-4b0f-BDED-5359D7D06789; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertActivation; ValueType: string; ValueName: version; ValueData: {#CertActivation_VERSION}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertActivation; ValueType: string; ValueName: name; ValueData: ��֤֤ͨ�鼤����; Check: not IsWin64; Flags: uninsdeletekey
;֤�鼤����64
Root: HKLM; SubKey: SOFTWARE\Wow6432Node\NETCA\KeyX\CertActivation; ValueType: string; ValueName: name; ValueData: ��֤֤ͨ�鼤����; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\Wow6432Node\NETCA\KeyX\CertActivation; ValueType: string; ValueName: version; ValueData: {#CertActivation_VERSION}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\Wow6432Node\NETCA\KeyX\CertActivation; ValueType: string; ValueName: uid; ValueData: 1ECA9A03-64C6-4b0f-BDED-5359D7D06789; Check: IsWin64; Flags: uninsdeletekey
;Adobe Reader/Acrobat
Root: HKCU; SubKey: Software\Adobe\Acrobat Reader\9.0\Security\cASPKI\cMSCAPI_DirectoryProvider; ValueType: dword; ValueName: iMSStoreTrusted; ValueData: $00000062; Flags: uninsdeletekey
Root: HKCU; SubKey: Software\Adobe\Acrobat Reader\10.0\Security\cASPKI\cMSCAPI_DirectoryProvider; ValueType: dword; ValueName: iMSStoreTrusted; ValueData: $00000062; Flags: uninsdeletekey
Root: HKCU; SubKey: Software\Adobe\Acrobat Reader\11.0\Security\cASPKI\cMSCAPI_DirectoryProvider; ValueType: dword; ValueName: iMSStoreTrusted; ValueData: $00000062; Flags: uninsdeletekey
Root: HKCU; SubKey: Software\Adobe\Adobe Acrobat\9.0\Security\cASPKI\cMSCAPI_DirectoryProvider; ValueType: dword; ValueName: iMSStoreTrusted; ValueData: $00000062; Flags: uninsdeletekey
Root: HKCU; SubKey: Software\Adobe\Adobe Acrobat\10.0\Security\cASPKI\cMSCAPI_DirectoryProvider; ValueType: dword; ValueName: iMSStoreTrusted; ValueData: $00000062; Flags: uninsdeletekey
Root: HKCU; SubKey: Software\Adobe\Adobe Acrobat\11.0\Security\cASPKI\cMSCAPI_DirectoryProvider; ValueType: dword; ValueName: iMSStoreTrusted; ValueData: $00000062; Flags: uninsdeletekey
Root: HKCU; SubKey: Software\Adobe\Adobe Acrobat\DC\Security\cASPKI\cMSCAPI_DirectoryProvider; ValueType: dword; ValueName: iMSStoreTrusted; ValueData: $00000062; Flags: uninsdeletekey
Root: HKCU; SubKey: Software\Adobe\Acrobat Reader\DC\Security\cASPKI\cMSCAPI_DirectoryProvider; ValueType: dword; ValueName: iMSStoreTrusted; ValueData: $00000062; Flags: uninsdeletekey
;Https����
Root: HKLM; SubKey: SOFTWARE\Wow6432Node\NETCA\PKI; ValueType: string; ValueName: HttpImplement; ValueData: netca; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\PKI; ValueType: string; ValueName: HttpImplement; ValueData: netca; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\Websocket\KeyXClient; ValueType: string; ValueName: version; ValueData: 1.0.0.1; Flags: uninsdeletekey; Check: IsOtherArch
Root: HKLM; SubKey: SOFTWARE\NETCA\Websocket\KeyXClient; ValueType: string; ValueName: path; ValueData: {app}\Plugin\CertApp\WebSocketPlugin\NetcaWebSocketServer\KeyX_JSONRPC.dll; Flags: uninsdeletekey; Check: IsOtherArch
Root: HKLM; SubKey: SOFTWARE\NETCA\Websocket\KeyXClient; ValueType: string; ValueName: appName; ValueData: KeyXClientApp; Flags: uninsdeletekey; Check: IsOtherArch
Root: HKLM; SubKey: SOFTWARE\Wow6432Node\NETCA\Websocket\KeyXClient; ValueType: string; ValueName: version; ValueData: 1.0.0.1; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\Wow6432Node\NETCA\Websocket\KeyXClient; ValueType: string; ValueName: path; ValueData: {app}\Plugin\CertApp\WebSocketPlugin\NetcaWebSocketServer\KeyX_JSONRPC.dll; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\Wow6432Node\NETCA\Websocket\KeyXClient; ValueType: string; ValueName: appName; ValueData: KeyXClientApp; Check: IsWin64; Flags: uninsdeletekey
;
Root: HKLM; SubKey: SOFTWARE\Wow6432Node\NETCA\KeyX\EnvCheck; ValueType: string; ValueName: ServerCheckFile; ValueData: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\serverCheck.ini; Flags: uninsdeletevalue; Check: IsWin64
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\EnvCheck; ValueType: string; ValueName: ServerCheckFile; ValueData: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\serverCheck.ini; Flags: uninsdeletevalue; Check: not IsWin64

;�Զ�����com
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{653321B6-25BD-4F7A-9E7D-CE68B4E18D3E}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{7F5661A7-FD68-4E22-ADFD-F1C55296C66D}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{2D7FAA2C-0339-4117-A7EE-F8FBCEAB8407}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{15291390-5D15-430C-B3F8-561FC11F48B0}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{EEC874A3-A16B-42FB-8A54-EC47103E6184}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{DD131596-5AB5-415B-9099-A9246E9064C3}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{442D1CD0-6758-4B38-B2A5-F84A8C3C0243}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{EA392514-9B88-46EF-A4C0-C37097335292}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{FD4D8357-45B2-4321-B4B9-E722E98549ED}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{F7EAD558-E3CC-428C-A9DB-B2E426D3BFC5}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{715A9BA1-7189-49A3-9C04-87948536A480}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{13C344A8-1FAF-4688-9AC4-A3BF465F9E87}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{6264057E-8990-4DFE-8FDF-9A3540B5FB9F}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{69EAC031-FB0B-4D86-BC36-CC9C78F9910C}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{10DCA44F-3F82-44E2-B9B9-00AE5654A20E}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{44078BEB-6923-44E6-BBBB-3976CFEDCCCD}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{653321B6-25BD-4F7A-9E7D-CE68B4E18D3E}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{653321B6-25BD-4F7A-9E7D-CE68B4E18D3E}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{653321B6-25BD-4F7A-9E7D-CE68B4E18D3E}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{653321B6-25BD-4F7A-9E7D-CE68B4E18D3E}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{7F5661A7-FD68-4E22-ADFD-F1C55296C66D}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{7F5661A7-FD68-4E22-ADFD-F1C55296C66D}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{7F5661A7-FD68-4E22-ADFD-F1C55296C66D}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{7F5661A7-FD68-4E22-ADFD-F1C55296C66D}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{2D7FAA2C-0339-4117-A7EE-F8FBCEAB8407}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{2D7FAA2C-0339-4117-A7EE-F8FBCEAB8407}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{2D7FAA2C-0339-4117-A7EE-F8FBCEAB8407}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{2D7FAA2C-0339-4117-A7EE-F8FBCEAB8407}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{15291390-5D15-430C-B3F8-561FC11F48B0}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{15291390-5D15-430C-B3F8-561FC11F48B0}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{15291390-5D15-430C-B3F8-561FC11F48B0}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{15291390-5D15-430C-B3F8-561FC11F48B0}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EEC874A3-A16B-42FB-8A54-EC47103E6184}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EEC874A3-A16B-42FB-8A54-EC47103E6184}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EEC874A3-A16B-42FB-8A54-EC47103E6184}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EEC874A3-A16B-42FB-8A54-EC47103E6184}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{DD131596-5AB5-415B-9099-A9246E9064C3}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{DD131596-5AB5-415B-9099-A9246E9064C3}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{DD131596-5AB5-415B-9099-A9246E9064C3}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{DD131596-5AB5-415B-9099-A9246E9064C3}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{442D1CD0-6758-4B38-B2A5-F84A8C3C0243}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{442D1CD0-6758-4B38-B2A5-F84A8C3C0243}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{442D1CD0-6758-4B38-B2A5-F84A8C3C0243}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{442D1CD0-6758-4B38-B2A5-F84A8C3C0243}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EA392514-9B88-46EF-A4C0-C37097335292}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EA392514-9B88-46EF-A4C0-C37097335292}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EA392514-9B88-46EF-A4C0-C37097335292}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EA392514-9B88-46EF-A4C0-C37097335292}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FD4D8357-45B2-4321-B4B9-E722E98549ED}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FD4D8357-45B2-4321-B4B9-E722E98549ED}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FD4D8357-45B2-4321-B4B9-E722E98549ED}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FD4D8357-45B2-4321-B4B9-E722E98549ED}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{F7EAD558-E3CC-428C-A9DB-B2E426D3BFC5}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{F7EAD558-E3CC-428C-A9DB-B2E426D3BFC5}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{F7EAD558-E3CC-428C-A9DB-B2E426D3BFC5}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{F7EAD558-E3CC-428C-A9DB-B2E426D3BFC5}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{715A9BA1-7189-49A3-9C04-87948536A480}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{715A9BA1-7189-49A3-9C04-87948536A480}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{715A9BA1-7189-49A3-9C04-87948536A480}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{715A9BA1-7189-49A3-9C04-87948536A480}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{13C344A8-1FAF-4688-9AC4-A3BF465F9E87}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{13C344A8-1FAF-4688-9AC4-A3BF465F9E87}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{13C344A8-1FAF-4688-9AC4-A3BF465F9E87}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{13C344A8-1FAF-4688-9AC4-A3BF465F9E87}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{6264057E-8990-4DFE-8FDF-9A3540B5FB9F}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{6264057E-8990-4DFE-8FDF-9A3540B5FB9F}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{6264057E-8990-4DFE-8FDF-9A3540B5FB9F}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{6264057E-8990-4DFE-8FDF-9A3540B5FB9F}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{69EAC031-FB0B-4D86-BC36-CC9C78F9910C}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{69EAC031-FB0B-4D86-BC36-CC9C78F9910C}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{69EAC031-FB0B-4D86-BC36-CC9C78F9910C}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{69EAC031-FB0B-4D86-BC36-CC9C78F9910C}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10DCA44F-3F82-44E2-B9B9-00AE5654A20E}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10DCA44F-3F82-44E2-B9B9-00AE5654A20E}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10DCA44F-3F82-44E2-B9B9-00AE5654A20E}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10DCA44F-3F82-44E2-B9B9-00AE5654A20E}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{44078BEB-6923-44E6-BBBB-3976CFEDCCCD}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{44078BEB-6923-44E6-BBBB-3976CFEDCCCD}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{44078BEB-6923-44E6-BBBB-3976CFEDCCCD}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{44078BEB-6923-44E6-BBBB-3976CFEDCCCD}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{653321B6-25BD-4F7A-9E7D-CE68B4E18D3E}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{7F5661A7-FD68-4E22-ADFD-F1C55296C66D}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{2D7FAA2C-0339-4117-A7EE-F8FBCEAB8407}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{15291390-5D15-430C-B3F8-561FC11F48B0}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EEC874A3-A16B-42FB-8A54-EC47103E6184}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{DD131596-5AB5-415B-9099-A9246E9064C3}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{442D1CD0-6758-4B38-B2A5-F84A8C3C0243}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EA392514-9B88-46EF-A4C0-C37097335292}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FD4D8357-45B2-4321-B4B9-E722E98549ED}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{F7EAD558-E3CC-428C-A9DB-B2E426D3BFC5}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{715A9BA1-7189-49A3-9C04-87948536A480}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{13C344A8-1FAF-4688-9AC4-A3BF465F9E87}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{6264057E-8990-4DFE-8FDF-9A3540B5FB9F}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{69EAC031-FB0B-4D86-BC36-CC9C78F9910C}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10DCA44F-3F82-44E2-B9B9-00AE5654A20E}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{44078BEB-6923-44E6-BBBB-3976CFEDCCCD}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{653321B6-25BD-4F7A-9E7D-CE68B4E18D3E}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{7F5661A7-FD68-4E22-ADFD-F1C55296C66D}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{2D7FAA2C-0339-4117-A7EE-F8FBCEAB8407}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{15291390-5D15-430C-B3F8-561FC11F48B0}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EEC874A3-A16B-42FB-8A54-EC47103E6184}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{DD131596-5AB5-415B-9099-A9246E9064C3}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{442D1CD0-6758-4B38-B2A5-F84A8C3C0243}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{EA392514-9B88-46EF-A4C0-C37097335292}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FD4D8357-45B2-4321-B4B9-E722E98549ED}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{F7EAD558-E3CC-428C-A9DB-B2E426D3BFC5}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{715A9BA1-7189-49A3-9C04-87948536A480}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{13C344A8-1FAF-4688-9AC4-A3BF465F9E87}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{6264057E-8990-4DFE-8FDF-9A3540B5FB9F}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{69EAC031-FB0B-4D86-BC36-CC9C78F9910C}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10DCA44F-3F82-44E2-B9B9-00AE5654A20E}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{44078BEB-6923-44E6-BBBB-3976CFEDCCCD}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{01E4A24E-245E-4628-9392-FF104892B239}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{0F135276-44BD-4285-9443-0570EAB3A3DF}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{10828915-0B3D-498A-B0D7-A9D8175C05AD}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{38C9E351-928E-46B9-A28C-7D182AB8D396}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{39F3DD7C-74A7-47B2-8D37-19D36804A017}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{40D2D731-0F97-417A-BC7C-DB17112330B8}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{8C20A5A1-4EF6-4705-BE50-10A3F614622A}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{BEFA4C7B-FE37-433B-8A0D-DAD03115465A}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{E0ED5060-9CF7-4E0C-9EB5-38AB6AD10B0A}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{01E4A24E-245E-4628-9392-FF104892B239}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{01E4A24E-245E-4628-9392-FF104892B239}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{01E4A24E-245E-4628-9392-FF104892B239}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{01E4A24E-245E-4628-9392-FF104892B239}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{0F135276-44BD-4285-9443-0570EAB3A3DF}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{0F135276-44BD-4285-9443-0570EAB3A3DF}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{0F135276-44BD-4285-9443-0570EAB3A3DF}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{0F135276-44BD-4285-9443-0570EAB3A3DF}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10828915-0B3D-498A-B0D7-A9D8175C05AD}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10828915-0B3D-498A-B0D7-A9D8175C05AD}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10828915-0B3D-498A-B0D7-A9D8175C05AD}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10828915-0B3D-498A-B0D7-A9D8175C05AD}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{38C9E351-928E-46B9-A28C-7D182AB8D396}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{38C9E351-928E-46B9-A28C-7D182AB8D396}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{38C9E351-928E-46B9-A28C-7D182AB8D396}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{38C9E351-928E-46B9-A28C-7D182AB8D396}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39F3DD7C-74A7-47B2-8D37-19D36804A017}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39F3DD7C-74A7-47B2-8D37-19D36804A017}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39F3DD7C-74A7-47B2-8D37-19D36804A017}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39F3DD7C-74A7-47B2-8D37-19D36804A017}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{40D2D731-0F97-417A-BC7C-DB17112330B8}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{40D2D731-0F97-417A-BC7C-DB17112330B8}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{40D2D731-0F97-417A-BC7C-DB17112330B8}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{40D2D731-0F97-417A-BC7C-DB17112330B8}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{8C20A5A1-4EF6-4705-BE50-10A3F614622A}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{8C20A5A1-4EF6-4705-BE50-10A3F614622A}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{8C20A5A1-4EF6-4705-BE50-10A3F614622A}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{8C20A5A1-4EF6-4705-BE50-10A3F614622A}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{BEFA4C7B-FE37-433B-8A0D-DAD03115465A}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{BEFA4C7B-FE37-433B-8A0D-DAD03115465A}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{BEFA4C7B-FE37-433B-8A0D-DAD03115465A}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{BEFA4C7B-FE37-433B-8A0D-DAD03115465A}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{E0ED5060-9CF7-4E0C-9EB5-38AB6AD10B0A}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{E0ED5060-9CF7-4E0C-9EB5-38AB6AD10B0A}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{E0ED5060-9CF7-4E0C-9EB5-38AB6AD10B0A}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{E0ED5060-9CF7-4E0C-9EB5-38AB6AD10B0A}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{01E4A24E-245E-4628-9392-FF104892B239}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{0F135276-44BD-4285-9443-0570EAB3A3DF}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10828915-0B3D-498A-B0D7-A9D8175C05AD}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{38C9E351-928E-46B9-A28C-7D182AB8D396}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39F3DD7C-74A7-47B2-8D37-19D36804A017}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{40D2D731-0F97-417A-BC7C-DB17112330B8}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{8C20A5A1-4EF6-4705-BE50-10A3F614622A}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{BEFA4C7B-FE37-433B-8A0D-DAD03115465A}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{E0ED5060-9CF7-4E0C-9EB5-38AB6AD10B0A}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{01E4A24E-245E-4628-9392-FF104892B239}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{0F135276-44BD-4285-9443-0570EAB3A3DF}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{10828915-0B3D-498A-B0D7-A9D8175C05AD}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{38C9E351-928E-46B9-A28C-7D182AB8D396}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39F3DD7C-74A7-47B2-8D37-19D36804A017}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{40D2D731-0F97-417A-BC7C-DB17112330B8}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{8C20A5A1-4EF6-4705-BE50-10A3F614622A}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{BEFA4C7B-FE37-433B-8A0D-DAD03115465A}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{E0ED5060-9CF7-4E0C-9EB5-38AB6AD10B0A}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{FF1B7588-41E2-4F73-99A6-B212B7C1961F}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FF1B7588-41E2-4F73-99A6-B212B7C1961F}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FF1B7588-41E2-4F73-99A6-B212B7C1961F}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FF1B7588-41E2-4F73-99A6-B212B7C1961F}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FF1B7588-41E2-4F73-99A6-B212B7C1961F}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FF1B7588-41E2-4F73-99A6-B212B7C1961F}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{FF1B7588-41E2-4F73-99A6-B212B7C1961F}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{39503E1A-5327-4DFC-92EA-3A4BB3E62797}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39503E1A-5327-4DFC-92EA-3A4BB3E62797}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39503E1A-5327-4DFC-92EA-3A4BB3E62797}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39503E1A-5327-4DFC-92EA-3A4BB3E62797}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39503E1A-5327-4DFC-92EA-3A4BB3E62797}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39503E1A-5327-4DFC-92EA-3A4BB3E62797}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{39503E1A-5327-4DFC-92EA-3A4BB3E62797}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{27E0D55B-47F0-4850-A611-B057AA3122F6}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{27E0D55B-47F0-4850-A611-B057AA3122F6}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{27E0D55B-47F0-4850-A611-B057AA3122F6}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{27E0D55B-47F0-4850-A611-B057AA3122F6}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{27E0D55B-47F0-4850-A611-B057AA3122F6}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{27E0D55B-47F0-4850-A611-B057AA3122F6}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{27E0D55B-47F0-4850-A611-B057AA3122F6}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{9E2CA004-7FC1-4F19-B882-D80A5C322E51}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{{9E2CA004-BB25-478D-B223-3B1F978953DE}; Flags: deletekey
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-7FC1-4F19-B882-D80A5C322E51}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-7FC1-4F19-B882-D80A5C322E51}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-7FC1-4F19-B882-D80A5C322E51}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-7FC1-4F19-B882-D80A5C322E51}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-BB25-478D-B223-3B1F978953DE}\iexplore; ValueType: dword; ValueName: Count; ValueData: $00000002
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-BB25-478D-B223-3B1F978953DE}\iexplore; ValueType: dword; ValueName: Flags; ValueData: $00000004
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-BB25-478D-B223-3B1F978953DE}\iexplore; ValueType: dword; ValueName: Type; ValueData: $00000001
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-BB25-478D-B223-3B1F978953DE}\iexplore; ValueType: binary; ValueName: Time; ValueData: e2 07 0c 00 02 00 04 00 09 00 04 00 38 00 93 02
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-7FC1-4F19-B882-D80A5C322E51}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-BB25-478D-B223-3B1F978953DE}\iexplore\AllowedDomains
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-7FC1-4F19-B882-D80A5C322E51}\iexplore\AllowedDomains\*
Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{{9E2CA004-BB25-478D-B223-3B1F978953DE}\iexplore\AllowedDomains\*
[LangOptions]
chinesesimp.LanguageName=Chinese
chinesesimp.LanguageID=$0804
trad.LanguageName=TradChinese
trad.LanguageID=$0404
eng.LanguageName=English
eng.LanguageID=$0409

[UninstallDelete]
;ж��ʱ��Ҫɾ�����ļ�/�ļ���
Name: {pf}\NETCA\NETCA_Devices\; Type: filesandordirs; Tasks: ; Languages: 
Name: {userappdata}\Local\CrashRpt; Type: filesandordirs; Tasks: ; Languages: 
Name: {syswow64}\CNCAPki.dll; Type: files; Check: IsWin64
Name: {sys}\CNCAPki.dll; Type: files
Name: {userprograms}\��֤ͨ���\��֤ͨ��ȫ�ͻ���; Type: filesandordirs
Name: {commonprograms}\��֤ͨ���\��֤ͨ��ȫ�ͻ���; Type: filesandordirs
Name: {userappdata}\NETCA\KeyX\Plugin\CertApp\CertManagerPlugin\CertManagerPlugin.ini; Type: files
Name: {userappdata}\NETCA\KeyX\Plugin\CertApp\DeviceManagerPlugin\DeviceManagerPlugin.ini; Type: files
Name: {userappdata}\NETCA\KeyX\Plugin\CertApp\RenewCert\RenewCertPlugin.ini; Type: files
Name: {userappdata}\NETCA\KeyX\KeyX.ini; Type: files

[_ISTool]
UseAbsolutePaths=false

[InstallDelete]
;��װʱ��Ҫɾ�����ļ�/�ļ���
Name: {app}\Plugin\CertStore\USBKeyPlugin.dll; Type: files
Name: {commonstartup}\{cm:AppName,{#KEYX_APPNAME}}; Type: files
Name: {userstartup}\{cm:AppName,{#KEYX_APPNAME}}; Type: files
Name: {userprograms}\��֤ͨ���\��֤ͨ��ȫ�ͻ���\*; Type: filesandordirs
Name: {commonprograms}\��֤ͨ���\��֤ͨ��ȫ�ͻ���\*; Type: filesandordirs
Name: {app}\Unins_KeyX.dat; Type: files
Name: {app}\Unins_KeyX.exe; Type: files
Name: {app}\unins001.exe; Type: files
Name: {app}\unins001.dat; Type: files
Name: {app}\unins002.exe; Type: files
Name: {app}\unins002.dat; Type: files
Name: {app}\unins003.exe; Type: files
Name: {app}\unins003.dat; Type: files
Name: {app}\unins004.exe; Type: files
Name: {app}\unins004.dat; Type: files
Name: {app}\unins005.exe; Type: files
Name: {app}\unins005.dat; Type: files
Name: {app}\unins000.dat; Type: files
Name: {app}\unins000.exe; Type: files
Name: {userappdata}\NETCA\KeyX\Plugin\CertApp\RenewCert\RenewCertPlugin.ini; Type: files

[Code]
#include 'NETCA.iss'



function RunTask(FileName: string; bFullpath: Boolean): Boolean;
  external 'RunTask@files:ISTask.dll stdcall delayload';
function KillTask(ExeFileName: string): Integer;
  external 'KillTask@files:ISTask.dll stdcall delayload';

//���Ѱ�װ��׼��kx�Ĵ���
function  OverInstallKeyx() : Boolean;
var
oldversion:String;
begin
	//��װ��kx��
    if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') or RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') then
    begin
        if RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX', 'version', oldversion) or RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\NETCA\KeyX', 'version', oldversion)  then
	//��ȡ�汾�ųɹ�
		begin
			if (IsRunInSilent()) then
			begin
				Result:=true
				KillPro();
			end
			else
			begin
				MsgBox('Ϊ��ȷ�����������˳����װ����ȷ���Ѿ��γ����е����ܳײ��ر�IE��office��PDF����س���', mbInformation, MB_OK);
				Result:=true
				KillPro();
			end;
		end else
		begin
		//��⵽�Ѱ�װ��׼�浫��ȡ�汾��ʧ�ܣ�ɾ����鵽��ע�����Ϣ����֤�´ΰ�װʱ�ɹ���
			if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') then
			RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1');
			if RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1')   then
			RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1');
			Result:=true;
		end;
	end else
	//���ᷢ������⵽�ŵ������������
	Result:=false
end;

//�ж��Ƿ�װ��֧��
function  BranchKX() : Boolean;
var
    oldversion1:String;
begin
  Result:=false;
  if not RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') and not RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') then
  begin
    if  RunTask('KeyX.exe', false) then Result:=true else
      begin
      if RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\OrgCodeCertDriver') or RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\NETCA\OrgCodeCertDriver') or RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX', 'version', oldversion1) or RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\NETCA\KeyX', 'version', oldversion1) then
       Result:=true
      end;
   end;
end;

//ɾ����֧�汾�Ŀ��������Ϣ
function DelBranchInfo():Boolean;
var
   uid: string;
   reg32_uninstall: string;
   reg64_uninstall: string;
   installPath:string;
   installlPathDevice:string;
begin
	if BranchKX() then
	begin
	//��ȡ��֧kx��UID��Ȼ��ɾ����ж����Ϣ��
		if RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\NETCA\KeyX', 'uid', uid) or RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX', 'uid', uid) then
		begin
			reg32_uninstall:='SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{'+uid+'}_is1'
			reg64_uninstall:='SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{'+uid+'}_is1'
			//32λϵͳ
			if  RegKeyExists(HKEY_LOCAL_MACHINE,reg32_uninstall) then
				RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE,reg32_uninstall);
			//64λϵͳ
			if  RegKeyExists(HKEY_LOCAL_MACHINE, reg64_uninstall) then
			RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, reg64_uninstall);
		end;

		if MsgBox('���Ƿ�Ҫɾ����֧�汾�ͻ��˵��ļ���', mbConfirmation, MB_YESNO) = IDYES then
		begin
		//��ɾ��keyxĿ¼����Ϊ���ܻᵼ��������µĲ����ļ���ɾ�����޷��޸�
		//����֤����������İ�װĿ¼����Ŀ¼�Ѳ���ʹ��
			DelTree(ExpandConstant('{pf32}\NETCA\OrgCodeCertDriver'), True, True, True);
			DelTree(ExpandConstant('{pf}\NETCA\OrgCodeCertDriver'), True, True, True);
		//�����İ�װĿ¼
			DelTree(ExpandConstant('{pf32}\NETCA\NETCA_Devices'), True, True, True);
			DelTree(ExpandConstant('{pf}\NETCA\NETCA_Devices'), True, True, True);
		end;
	end;
end;

 //�����Ƿ�֧�汾
function OverInstallBranch(): boolean;
VAR ErrorCode: Integer;
begin

		//ͨ����������������Զ����ǰ�װ����Ĭ��װ��
	 if IsRunInSilent() then
	begin
			Result:=true;
			KillPro();
			DelBranchInfo();
	end else
	begin
		if MsgBox('���棺���������Ѱ�װ�Ŀͻ��˵�������֧�汾�����Ƿ�����ѡ�񸲸ǰ�װ��', mbConfirmation, MB_YESNO) = IDYes then
			begin
				Result:=true;
				KillPro();
				DelBranchInfo();
			end
	end
end;

function InitializeSetup(): boolean;
begin
	//���Ǳ�׼�氲װ
	if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') or RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') then
	   begin
	   // MsgBox('��鵽�����Ѱ�װ�˱�׼�棡', mbInformation, MB_OK);
		Result:=OverInstallKeyx();
		end
	else
	if BranchKX() then
	 begin
	  //  MsgBox('��鵽�����Ѱ�װ�˷�֧�棡', mbInformation, MB_OK);
		//���Ƿ�֧�氲װ
		Result:=OverInstallBranch()
		end
	else
	begin
		if (IsRunInSilent()) then
			begin
				if IsShowCPUI() then
					begin
						MsgBox('Ϊ��ȷ�����������˳����װ����ȷ���Ѿ��γ����е����ܳײ��ر�IE��office��PDF����س���', mbInformation, MB_OK);
					end
			end else
				begin

					MsgBox('Ϊ��ȷ�����������˳����װ����ȷ���Ѿ��γ����е����ܳײ��ر�IE��office��PDF����س���', mbInformation, MB_OK);
				end;
		Result:=true;
	end;
	if RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID1}}_is1') then
		begin
			// MsgBox('��鵽����ֻ��װ��crypto�м����', mbInformation, MB_OK);
		RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI','isunins','isno');
		end;
end;

function preInstall(path,filename: string): Integer;
external 'preInstall@files:NetcaInstallPort.dll stdcall delayload';
function endInstall(path,filename: string): Integer;
external 'endInstall@files:NetcaInstallPort.dll stdcall delayload';

procedure CurStepChanged (CurStep: TSetupStep );
Var
path3:String;
ResultCode: Integer;
Flag: Boolean;
uninspath, uninsname, NewUninsName: string;
begin
   path3 := ExpandConstant('{src}');
   if CurStep=ssInstall  then
      begin
      //MsgBox('1��ʵ�ʰ�װ��ʼ֮ǰ�� CurStep=ssInstall ����preInstall.iniִ����ɡ�', mbInformation, MB_OK);
      DelReg();
      preInstall(path3,'preinstall.ini');
     // MsgBox('2��ʵ�ʰ�װ��ʼ֮ǰ�� CurStep=ssInstall ����preInstall.iniִ����ɡ�', mbInformation, MB_OK);
     end;

   if CurStep=ssPostInstall  then
      begin
      // MsgBox('1ʵ�ʰ�װ���֮���� CurStep=ssPostInstall ����postInstall.iniִ����ɡ�', mbInformation, MB_OK);
      endInstall(path3,'postinstall.ini');
     // MsgBox('2ʵ�ʰ�װ���֮���� CurStep=ssPostInstall ����postInstall.iniִ����ɡ�', mbInformation, MB_OK);
     end;

   if CurStep=ssDone  then
      begin
		endInstall(path3,'endinstall.ini');
		// ָ���µ�ж���ļ�������������չ����������Ӧ�޸ģ�
		NewUninsName := 'Unins_KeyX';
		// Ӧ�ó������ƣ��� [SEUTP] �ε� AppName ����һ�£�����Ӧ�޸ģ�
		// ����������ж���ļ�
		uninspath:= ExtractFilePath(ExpandConstant('{uninstallexe}'));
		uninsname:= Copy(ExtractFileName(ExpandConstant('{uninstallexe}')),1,8);
		RenameFile(uninspath + uninsname + '.exe', uninspath + NewUninsName + '.exe');
		RenameFile(uninspath + uninsname + '.dat', uninspath + NewUninsName + '.dat');
		if RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') then
		begin
			//MsgBox('��⵽ϵͳ��Ҫ��', mbInformation, MB_OK);
			RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1', 'UninstallString', '"' + uninspath + NewUninsName + '.exe"');
			RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1', 'QuietUninstallString', '"' + uninspath + NewUninsName + '.exe" /SILENT');
			//MsgBox('��⵽ϵͳ����', mbInformation, MB_OK);
		end;
		//�������,�Ҿ�Ĭ��װ,�ͻ��Զ�����keyx
		if IsOpenKeyX() or not IsRunInSilent() then
			ShellExecAsOriginalUser('',ExpandConstant('{app}/KeyX.exe'), '', '', SW_SHOWNORMAL, ewNoWait, ResultCode);
     end;

end;

//�Ե�����װ�м����ж�ش���
function  Checkcryptoisut():Boolean;
var
   isoldversion:String;
begin
   if RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI','isunins', isoldversion) then
	begin
		Result:=false;
	// MsgBox('��鵽ֻ��װ��crypto�м��!ж�ؿͻ���ʱ��Ҫ����', mbInformation, MB_OK);
	end else
       Result:=true;
     //  MsgBox('��鵽û�а�װcrypto�м����', mbInformation, MB_OK);
end;

//�ж��Ƿ�װ���м��
function Isinstallcrypto() : Boolean;
begin
if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{A0B399CD-984F-41F2-9A5D-E3BF7A54E696}_is1') or RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{A0B399CD-984F-41F2-9A5D-E3BF7A54E696}_is1') then
   begin
    // MsgBox('��⵽ϵͳ�Ѱ�װ�ɹ������ø��ǰ�װ', mbInformation, MB_OK);
     Result:=false;
     end  else
     begin
     //MsgBox('��⵽ϵͳδ��װ�ɹ������ע�����Ϣ', mbInformation, MB_OK); ��ΪĳЩdll��ռ�õ���ж��û��ɾ������Ҫɾ������ע����������������ֱ�Ӱ�װ�ɹ�
     if RegValueExists(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager','PendingFileRenameOperations') then
		RegDeleteValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager','PendingFileRenameOperations');
		//MsgBox('��⵽ϵͳδ��װ�ɹ����ٴγ��԰�װ', mbInformation, MB_OK);
     Result:=true;
     end;
end;


// ж��ʱ�жϿͻ����Ƿ���������
function RunTask1(FileName: string; bFullpath: Boolean):Boolean;
external 'RunTask@{app}\ISTask.dll stdcall uninstallonly';
function KillTask1(ExeFileName: string): Integer;
external 'KillTask@{app}\ISTask.dll stdcall uninstallonly';
 function InitializeUninstall(): boolean;
 VAR ErrorCode: Integer;
begin
	if (IsRunInSilent()) then
	begin
		Result:= true;
		KillPro();
	while RunTask1('KeyX.exe', false) do
    begin
		KillPro();
    end;
    end else
    begin
    	MsgBox('Ϊ��ȷ�����������˳��ж�أ���ȷ���Ѿ��γ����е����ܳײ��ر�IE��office��PDF����س���', mbInformation, MB_OK);
    	Result:= true;
		KillPro();
	while RunTask1('KeyX.exe', false) do
    begin
		KillPro();
    end;
    end;
end;
function HTDRIVER() : Boolean;
begin
	if RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Cryptography\Calais\SmartCards\HaiTai') and FileExists(ExpandConstant('{sys}\Driver\HKDriver.dll')) then
		Result := false
	else
		Result:=true;
end;

//procedure DoPendingFileRenameOperationsEvent(); external 'DoNetcaCryptoInstallBeginEvent@{tmp}\InnoSetupInstallOperator.dll stdcall delayload';
//function DoIncrementTrustCACertsIfNeedEvent(a: AnsiString;b: AnsiString):Integer; external 'DoIncrementTrustCACertsIfNeedEvent@{tmp}\InnoSetupInstallOperator.dll stdcall delayload';
//
//
//procedure InitializeWizard();
//begin
//	ExtractTemporaryFile('InnoSetupInstallOperator.dll');
//
//ExtractTemporaryFile('trust');
//	//����trust����
//	ret1:=DoIncrementTrustCACertsIfNeedEvent(ExpandConstant('{commonappdata}\NETCA\certs\trust'),ExpandConstant('{tmp}\trust'));
//	if not IsXp then
//	begin
//		ret2:=DoIncrementTrustCACertsIfNeedEvent(ExpandConstant('{localappdata}\VirtualStore\ProgramData\NETCA\certs\trust'),ExpandConstant('{tmp}\trust'));
//	end
//
//end;
//
////�ж�trust�ļ��Ƿ���Ҫ�滻
//function IsTrustNoModify1():Boolean;
//begin
//
//	if  ret1=1 then
//	begin
//		//�����������֤��ɹ�������Ҫ�滻trust�ļ�
//		Result:=false;
//   end else
//   begin
//		//�����������֤��ɹ�����Ҫ�滻trust�ļ�
//		//MsgBox('�滻�ļ�ret1��'+IntToStr(ret1), mbInformation, MB_OK);
//		Result:=true;
//
//    end
//
//end;
//
//
////�ж�trust�ļ��Ƿ���Ҫ�滻
//function IsTrustNoModify2():Boolean;
//begin
//
//	if  ret2=1 then
//	begin
//		//�����������֤��ɹ�������Ҫ�滻trust�ļ�
//		//MsgBox('���滻�ļ�ret2��'+IntToStr(ret2), mbInformation, MB_OK);
//		Result:=false;
//   end else
//   begin
//		//�����������֤��ɹ�����Ҫ�滻trust�ļ�
//		//MsgBox('�滻�ļ�ret2��'+IntToStr(ret2), mbInformation, MB_OK);
//		Result:=true;
//
//    end
//
//end;
