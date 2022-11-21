#define KEYX_APPNAME "网证通安全客户端"
#define NETCA "广东省电子商务认证有限公司"
#define APP_VERSION "4.4.1"
#define SETUP_FILE_VERSION "4.4.1.1"
#define CERTSERVICE_VERSION "2.0.9.2"
#define CertActivation_VERSION "1.0.1.4"
#define UID "FE5C424E-446E-4C3C-BEA4-553F53E2261C"
#define UID1 "A0B399CD-984F-41F2-9A5D-E3BF7A54E696"
[Setup]
AppId={{FE5C424E-446E-4C3C-BEA4-553F53E2261C}
;应用程序信息
AppName={cm:AppName}
AppVerName={cm:AppVerName}
AppCopyright={#NETCA}。保留所有权利。
;控制面板卸载信息
AppVersion={#SETUP_FILE_VERSION}
AppPublisher={cm:AppPublisher}
UninstallDisplayName={#KEYX_APPNAME}
AppPublisherURL=http://www.cnca.net
AppSupportURL=http://www.cnca.net
AppUpdatesURL=http://www.cnca.net
OutputBaseFilename={#KEYX_APPNAME}
;安装目录
DefaultDirName={pf32}\NETCA\KeyX
DefaultGroupName={cm:DefaultGroupName}
;编译信息
UseSetupLdr=true
MergeDuplicateFiles=true
DisableDirPage=true
DisableProgramGroupPage=true
Compression=lzma
SolidCompression=true
;版本信息
VersionInfoCompany={#NETCA}
VersionInfoCopyright=(C) {#NETCA}。保留所有权利。
VersionInfoDescription={#KEYX_APPNAME}32&64位安装包
VersionInfoProductName={#KEYX_APPNAME}
VersionInfoVersion={#SETUP_FILE_VERSION}
VersionInfoProductVersion={#APP_VERSION}
AlwaysShowDirOnReadyPage=false
;协议
LicenseFile=..\发布版\Lisence\Fileinfobefore.txt
;安装包的图标
SetupIconFile=..\发布版\NETCA.ico
;安装后提示用户重新启动电脑
AlwaysRestart =no
;卸载后提示用户重新启动电脑
UninstallRestartComputer=false
; 开启64位模式
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
;显示安装欢迎界面
DisableWelcomePage=no
UsePreviousAppDir=false
RestartIfNeededByRun =no

[Languages]
Name: chinesesimp; MessagesFile: compiler:Languages\ChineseSimp-12-5.1.11.isl; LicenseFile: ..\发布版\Lisence\Fileinfobefore.txt
Name: trad; MessagesFile: compiler:Languages\ChineseTrad-2-5.1.11.isl; LicenseFile: ..\发布版\Lisence\Fileinfobefore_trad.txt
Name: eng; MessagesFile: compiler:Default.isl; LicenseFile: ..\发布版\Lisence\Fileinfobefore_eng.txt

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: 

[Messages]
chinesesimp.SetupAppTitle=网证通安全客户端
chinesesimp.SetupWindowTitle=网证通安全客户端
trad.SetupAppTitle=網證通安全客戶端
trad.SetupWindowTitle=網證通安全客戶端
eng.SetupAppTitle=KeyX
eng.SetupWindowTitle=KeyX

[CustomMessages]
;简体安装
chinesesimp.AppName=网证通安全客户端
chinesesimp.AppVerName=网证通安全客户端
chinesesimp.AppPublisher=广东省电子商务认证有限公司
chinesesimp.DefaultGroupName=网证通软件\{#KEYX_APPNAME}
chinesesimp.Fileinfobefore =Fileinfobefore.txt
chinesesimp.NetcaMWInstalling=正在安装网证通安全客户端......请稍候......
chinesesimp.AboutMsg=欢迎使用网证通安全客户端   广东省电子商务认证有限公司
chinesesimp.InstallMsg=为了确保驱动程序的顺利安装，请确认已经拔出所有电子密匙并关闭IE、office和PDF等相关程序！
chinesesimp.HelpMsg=使用手册
chinesesimp.UninstallProgram=卸载网证通安全客户端
chinesesimp.AboutButtonTitle=[关于(&A)]
chinesesimp.UrlLableCaption=NETCA网站
chinesesimp.UrlLableHint=欢迎访问Netca网站
chinesesimp.InstallMsg1=安装程序检测到网证通安全客户端驱动程序正在运行！
chinesesimp.InstallMsg2=单击“是”按钮强制安装程序；
chinesesimp.InstallMsg3=单击“否”按钮退出安装！
chinesesimp.UninstllMsg=警告：即将卸载此软件的旧版本.
chinesesimp.UninstallRestartMsg1=重新启动电脑后，安装程序会继续执行，请不要移动或删除安装文件！
chinesesimp.UninstallRestartMsg2=点击[确定]则重启...
;繁体安装
trad.AppName=網證通安全客戶端
trad.AppVerName=網證通安全客戶端
trad.AppPublisher=廣東省電子商務認證有限公司
trad.DefaultGroupName=網證通軟件\網證通安全客戶端
trad.Fileinfobefore =Fileinfobefore_trad.txt
trad.NetcaMWInstalling=正在安裝網證通安全客戶端......請稍候......
trad.AboutMsg=歡迎使用網證通安全客戶端   廣東省電子商務認證有限公司
trad.HelpMsg=使用手冊
trad.UninstallProgram=卸載網證通安全客戶端
trad.AboutButtonTitle=[關于(&A)]
trad.UrlLableCaption=NETCA網站
trad.UrlLableHint=歡迎訪問Netca網站
trad.InstallMsg1=安裝程序檢測到網證通安全客戶端驅動程序正在運行！
trad.InstallMsg2=單擊“是”按鈕強制安裝程序；
trad.InstallMsg3=單擊“否”按鈕退出安裝！
trad.UninstllMsg=警告：即將卸載此軟件的舊版本.
trad.UninstallRestartMsg1=重新啓動電腦後，安裝程序會繼續執行，請不要移動或刪除安裝文件！
trad.UninstallRestartMsg2=點擊[確定]則重啓...
;英文安装
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
;KeyX模块
Source: ..\发布版\KeyX_Duilib_Version\KeyX\x86\KeyX.exe; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\x86\NETCA_Language.dll; DestDir: {app}; Flags: uninsrestartdelete ignoreversion restartreplace
Source: ..\发布版\KeyX_Duilib_Version\KeyX\x86\NetcaConfigFile.dll; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\x86\ConfigFileCollection.dll; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\Contributors.txt; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\KeyX.ini; DestDir: {commonappdata}\netca\keyx; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\lang\1028.lng; DestDir: {commonappdata}\NETCA\keyx\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\KeyX\lang\1033.lng; DestDir: {commonappdata}\NETCA\keyx\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\KeyX\lang\2052.lng; DestDir: {commonappdata}\NETCA\keyx\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\KeyX\lang\3076.lng; DestDir: {commonappdata}\NETCA\keyx\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\KeyX\lang\5124.lng; DestDir: {commonappdata}\NETCA\keyx\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\Caption\*; DestDir: {app}\skin\Caption; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\Common\*; DestDir: {app}\skin\Common; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\FirstBar\*; DestDir: {app}\skin\FirstBar; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\Home\*; DestDir: {app}\skin\Home; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\oftenAppBar\*; DestDir: {app}\skin\oftenAppBar; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\SubXml\*; DestDir: {app}\skin\SubXml; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\sysbtn\*; DestDir: {app}\skin\sysbtn; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\CopyRight\*; DestDir: {app}\skin\CopyRight; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\ConfigModule\*; DestDir: {app}\skin\ConfigModule; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\scrollbar\*; DestDir: {app}\skin\scrollbar; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\*; DestDir: {app}\skin; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\CertInfo\*; DestDir: {app}\skin\CertInfo; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\skin\Logo\*; DestDir: {app}\skin\Logo; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\KeyX\DefaultConfig\*; DestDir: {app}\skin; Flags: uninsrestartdelete ignoreversion; Check: not IsXP
Source: ..\发布版\KeyX_Duilib_Version\KeyX\DefaultConfig\Xp\*; DestDir: {app}\skin; Flags: uninsrestartdelete ignoreversion; Check: IsXP
;CertManagerPlugin模块
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\X86\CertManagerPlugin.dll; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin.plugin; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\CertManagerPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\Caption\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\Caption; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\Common\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\Common; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\MainFrame\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\MainFrame; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\NoUSBKey\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\NoUSBKey; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\scrollbar\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\scrollbar; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\SubXml\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\SubXml; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\sysbtn\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\sysbtn; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\ConfigModule\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\ConfigModule; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\NoDeviceCertNotify\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\NoDeviceCertNotify; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin\skin\NotifyUI\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin\NotifyUI; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\DefaultConfig\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: not IsXP
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\DefaultConfig\Xp\*; DestDir: {app}\Plugin\CertApp\CertManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: IsXP
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\Lang\2052\2052.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\CertManagerPlugin\Lang\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertManagerPlugin\CertManagerPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\CertManagerPlugin\; Flags: ignoreversion uninsrestartdelete
;CertService模块
Source: ..\发布版\KeyX_Duilib_Version\CertService\X86\CertServicePlugin.dll; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\x86\RenewCertInterface.dll; DestDir: {app}; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\CertServicePlugin.plugin; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\CertServicePlugin\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\lang\1033.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\lang\2052.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\lang\1028.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\lang\3076.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\lang\5124.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\MimeType.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\RenewCertInterface.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\RenewCertPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\RenewCert; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\Caption\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\Caption; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\Common\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\Common; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\List\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\List; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\QueryStatus\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\QueryStatus; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\scrollbar\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\scrollbar; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\SubXml\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\SubXml; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\sysbtn\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\sysbtn; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\CertServicePlugin\skin\ConfigModule\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin\ConfigModule; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\DefaultConfig\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: not IsXP
Source: ..\发布版\KeyX_Duilib_Version\CertService\DefaultConfig\Xp\*; DestDir: {app}\Plugin\CertApp\CertServicePlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: IsXP
;4.4.0新增
Source: ..\发布版\KeyX_Duilib_Version\CertService\X86\CertServiceUtil.exe; DestDir: {app}; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\CertService\userprotocol.txt; DestDir: {commonappdata}\netca\keyx; Flags: ignoreversion uninsrestartdelete



;DeviceManagerPlugin模块
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\X86\DeviceManagerPlugin.dll; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\x86\sqlite3.dll; DestDir: {app}; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\DeviceManagerPlugin.plugin; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\DeviceManagerPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\lang\1033.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\lang\2052.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\lang\1028.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\lang\3076.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\lang\5124.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DeviceManagerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\DeviceManagerPlugin\skin\*; DestDir: {app}\Plugin\CertApp\DeviceManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\DeviceManagerPlugin\skin\ConfigModule\*; DestDir: {app}\Plugin\CertApp\DeviceManagerPlugin\skin\ConfigModule; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\DefaultConfig\*; DestDir: {app}\Plugin\CertApp\DeviceManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: not IsXP
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\DefaultConfig\Xp\*; DestDir: {app}\Plugin\CertApp\DeviceManagerPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: IsXP
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\a_HTSM2COS.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\b_FT3000GM.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\c_FT3003.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\d_ES.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\e_Weepal2001.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\f_MWV2V3.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\g_LongMaiOTG.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\h_HDSDCard.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\i_FTBluetoothKey.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\j_ESBluetoothKey.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\n_FTA.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\o_ESA.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: uninsrestartdelete ignoreversion
;DownloadCenterPlugin模块
Source: ..\发布版\KeyX_Duilib_Version\DownloadCenterPlugin\X86\DownloadCenterPlugin.dll; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DownloadCenterPlugin\DownloadCenterPlugin.plugin; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DownloadCenterPlugin\DownloadCenterPlugin\icon_download.png; DestDir: {app}\Plugin\CertApp\DownloadCenterPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DownloadCenterPlugin\DownloadCenterPlugin\icon_commondownload.png; DestDir: {app}\Plugin\CertApp\DownloadCenterPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DownloadCenterPlugin\DownloadCenterPlugin\icon_commondownload_hot.png; DestDir: {app}\Plugin\CertApp\DownloadCenterPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DownloadCenterPlugin\DownloadCenterPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DownloadCenterPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DownloadCenterPlugin\DownLoadCenterPlugin\skin\Common\*; DestDir: {app}\Plugin\CertApp\DownloadCenterPlugin\skin\Common; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DownloadCenterPlugin\DownLoadCenterPlugin\skin\skin.xml; DestDir: {app}\Plugin\CertApp\DownloadCenterPlugin\skin; Flags: ignoreversion uninsrestartdelete
;DriverInstallerPlugin模块
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\X86\DriverInstallerPlugin.dll; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\DriverInstallerPlugin.plugin; DestDir: {app}\Plugin\CertApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\DriverInstallerPlugin\*; DestDir: {app}\Plugin\CertApp\DriverInstallerPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\DriverInstallerPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\lang\1033.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\lang\2052.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\lang\1028.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\lang\3076.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\lang\5124.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\DriverInstallerPlugin\lang; Flags: ignoreversion uninsrestartdelete
;Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\*; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\龙脉.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\ES.jpg; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\ESBluetooth.jpg; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\FT3000GM.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\FT3003.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\FTBluetooth.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\HDSDCard.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\HT.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\LongMaiGM3000.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\MWV2.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\MWV3.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\weepal2001.JPG; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\F6.png; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\W2.png; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\DriverInstallerPlugin\skin\*; DestDir: {app}\Plugin\CertApp\DriverInstallerPlugin\skin; Flags: ignoreversion uninsrestartdelete
;SoftwareEnvironmentCheckingPlugin模块
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\X86\SoftwareEnvironmentCheckingPlugin.dll; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin.plugin; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin\icon_repair.png; DestDir: {app}\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin\icon_commonapprepair.png; DestDir: {app}\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin\icon_commonapprepair_hot.png; DestDir: {app}\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\ServerCheck.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\lang\1033.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\lang\2052.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\lang\1028.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\lang\3076.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\lang\5124.lng; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\lang; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\RegCerts.bat; DestDir: {commonappdata}\netca\keyx; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\证书链\NETCA_CA.reg; DestDir: {commonappdata}\netca\keyx\certs_reg; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\证书链\NETCA_ROOT.reg; DestDir: {commonappdata}\netca\keyx\certs_reg; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\证书链\NETCA_SM2.reg; DestDir: {commonappdata}\netca\keyx\certs_reg; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin\skin\scrollbar\*; DestDir: {app}\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\skin\scrollbar; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\SoftwareEnvironmentCheckingPlugin\SoftwareEnvironmentCheckingPlugin\skin\*; DestDir: {app}\Plugin\CertApp\SoftwareEnvironmentCheckingPlugin\skin; Flags: ignoreversion uninsrestartdelete
;MainPageCompanyHome模块
Source: ..\发布版\KeyX_Duilib_Version\MainPageCompanyHome\X86\MainPageCompanyHomePlugin.dll; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MainPageCompanyHome\MainPageCompanyHomePlugin.plugin; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MainPageCompanyHome\MainPageCompanyHomePlugin\home.jpg; DestDir: {app}\plugin\certApp\MainPageCompanyHomePlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MainPageCompanyHome\MainPageCompanyHomePlugin.ini; DestDir: {commonappdata}\netca\keyx\plugin\certApp\MainPageCompanyHomePlugin; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MainPageCompanyHome\MainPageCompanyHomePlugin\skin\*; DestDir: {app}\plugin\certApp\MainPageCompanyHomePlugin\skin; Flags: ignoreversion uninsrestartdelete
;MessagePushCenterMainPagePlugin模块
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\X86\MessagePushCenterMainPagePlugin.dll; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin.plugin; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\home.jpg; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\sysbtn\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\sysbtn\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\SubXml\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\SubXml\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\scrollbar\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\scrollbar\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\Logo\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\Logo\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\MessagePushCenterMainPagePlugin\skin\Common\*; DestDir: {app}\plugin\CertApp\MessagePushCenterMainPagePlugin\skin\Common\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\DefaultConfig\*; DestDir: {app}\Plugin\CertApp\MessagePushCenterMainPagePlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: not IsXP
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterMainPagePlugin\DefaultConfig\Xp\*; DestDir: {app}\Plugin\CertApp\MessagePushCenterMainPagePlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: IsXP
;MessagePushCenterPlugin模块
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\x86\MessagePushCenterPlugin.dll; DestDir: {app}\plugin\certApp\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin.plugin; DestDir: {app}\plugin\certApp; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\home.png; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\sysbtn\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\sysbtn\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\SubXml\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\SubXml\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\scrollbar\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\scrollbar\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\Logo\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\Logo\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\ConfigModule\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\ConfigModule\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin\skin\Common\*; DestDir: {app}\plugin\CertApp\MessagePushCenterPlugin\skin\Common\; Flags: ignoreversion uninsrestartdelete
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\DefaultConfig\*; DestDir: {app}\Plugin\CertApp\MessagePushCenterPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: not IsXP
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\DefaultConfig\Xp\*; DestDir: {app}\Plugin\CertApp\MessagePushCenterPlugin\skin; Flags: ignoreversion uninsrestartdelete; Check: IsXP
Source: ..\发布版\KeyX_Duilib_Version\MessagePushCenterPlugin\MessagePushCenterPlugin.ini; DestDir: {commonappdata}\netca\keyx\Plugin\CertApp\MessagePushCenterPlugin\; Flags: ignoreversion uninsrestartdelete
;CertActivationPlugin模块
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\x86\CertActivationPlugin.dll; DestDir: {app}\plugin\certApp\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\x86\CertActivationPlugin.plugin; DestDir: {app}\plugin\certApp\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\lang\1028.lng; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\lang\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\lang\1033.lng; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\lang\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\lang\2052.lng; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\lang\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\lang\3076.lng; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\lang\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\lang\5124.lng; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\lang\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\CertActivationPlugin.ini; DestDir: {commonappdata}\NETCA\KeyX\plugin\CertApp\CertActivationPlugin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\DefaultConfig\*; DestDir: {app}\plugin\certApp\CertActivationPlugin\skin\; Flags: restartreplace uninsrestartdelete ignoreversion; Check: not IsXP
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\DefaultConfig\Xp\*; DestDir: {app}\plugin\certApp\CertActivationPlugin\skin\; Flags: restartreplace uninsrestartdelete ignoreversion; Check: IsXP
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\SkinConfig\icon_activation.png; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\SkinConfig\icon_common_activation.PNG; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\SkinConfig\icon_common_activation_hot.PNG; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\SkinConfig\icon_common_activation_hot.ico; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\Common\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\Common\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\ConfigModule\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\ConfigModule\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\mainframe\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\mainframe\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\SubXml\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\SubXml\; Flags: restartreplace uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\CertActivation\SkinConfig\skin\scrollbar\*; DestDir: {app}\Plugin\CertApp\CertActivationPlugin\skin\scrollbar\; Flags: restartreplace uninsrestartdelete ignoreversion
;Crypto 以及驱动模块
Source: ..\..\..\NETCA_CRYPTO\current\安装包\NETCA_Crypto.exe; DestDir: {commonappdata}\NETCA\KeyX; Flags: uninsrestartdelete ignoreversion deleteafterinstall
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\NETCA_Devices_x86(MWV2V3).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\NETCA_Devices(ES).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\NETCA_Devices(FT3003).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\NETCA_Devices(HTSM2COS).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\NETCA_Devices(weepal2001).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\NETCA_Devices(FT3000GM).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\NETCA_Devices(HDSDCard).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\NETCA_Devices(FTBluetoothKey).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\NETCA_Devices(LongMaiOTG).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\NETCA_Devices(ESBluetoothKey).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\文鼎创安可Key\Output\NETCA_Devices(ESA).exe; DestDir: {commonappdata}\netca\keyx\Drivers\; Flags: uninsrestartdelete ignoreversion
Source: ..\..\..\NETCA_CRYPTO\current\安装包\Devices\飞天SJK1104G\NETCA_Devices(FTA).exe; DestDir: {commonappdata}\netca\keyx\Drivers\; Flags: uninsrestartdelete ignoreversion
;插件
Source: ..\..\install\测试版\标准版\Windows\应用安装包\兼容多浏览器应用插件\测试中\网证通安全客户端兼容多浏览器应用插件.exe; DestDir: {commonappdata}\NETCA\KeyX; Flags: uninsrestartdelete ignoreversion; DestName: 网证通安全客户端兼容多浏览器应用插件.exe
Source: ..\..\install\测试版\标准版\Windows\应用安装包\忘记密码应用插件安装包.exe; DestDir: {commonappdata}\NETCA\KeyX; Flags: uninsrestartdelete ignoreversion
Source: ..\..\install\测试版\标准版\Windows\应用安装包\我的印章应用插件\测试中\我的印章应用插件.exe; DestDir: {commonappdata}\netca\keyx; Flags: uninsrestartdelete ignoreversion deleteafterinstall
;软件更新
Source: ..\..\..\软件更新\安装包\网证通在线更新客户端\网证通在线更新客户端.exe; DestDir: {app}; Flags: deleteafterinstall uninsrestartdelete
;其他
Source: ..\发布版\NETCA.ico; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\打包的插件\ISTask.dll; DestDir: {app}; Flags: uninsrestartdelete
Source: ..\..\..\证书介质\驱动及开发包\飞天SM2\FT_USB_TOKEN_3000GM\XP系统下ccid驱动\dpinstx86.exe; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsX86xpWin7
Source: ..\..\..\证书介质\驱动及开发包\飞天SM2\FT_USB_TOKEN_3000GM\XP系统下ccid驱动\oem21.CAT; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsX86xpWin7
Source: ..\..\..\证书介质\驱动及开发包\飞天SM2\FT_USB_TOKEN_3000GM\XP系统下ccid驱动\oem21.inf; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsX86xpWin7
Source: ..\..\..\证书介质\驱动及开发包\飞天SM2\FT_USB_TOKEN_3000GM\XP系统下ccid驱动\RestartScardService.bat; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsXP
Source: ..\..\..\证书介质\驱动及开发包\飞天SM2\FT_USB_TOKEN_3000GM\XP系统下ccid驱动\usbccid.cat; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsX86xpWin7
Source: ..\..\..\证书介质\驱动及开发包\飞天SM2\FT_USB_TOKEN_3000GM\XP系统下ccid驱动\usbccid.sys; DestDir: {app}; Flags: uninsrestartdelete ignoreversion; Check: IsX86xpWin7
;数据操作接口Netca
Source: ..\..\..\建设交易\数据操作接口\x86\NetcaDataCtl.dll; DestDir: {sys}; Flags: uninsrestartdelete ignoreversion; Check: not IsWin64
Source: ..\..\..\建设交易\数据操作接口\x64\NetcaDataCtl.dll; DestDir: {sys}; Flags: uninsrestartdelete ignoreversion; Check: IsWin64
Source: ..\..\..\建设交易\数据操作接口\x86\NetcaDataCtl.dll; DestDir: {syswow64}; Flags: uninsrestartdelete ignoreversion; Check: IsWin64
Source: ..\发布版\打包的插件\del.bat; DestDir: {app}
;海泰介质依赖运行库
Source: ..\发布版\VC Runtime\vs2008_vcredist_x86.exe; DestDir: {app}; Flags: uninsrestartdelete ignoreversion deleteafterinstall
Source: ..\发布版\打包的插件\ISTask.dll; DestDir: {sys}; Flags: onlyifdoesntexist; Check: not IsWin64
Source: ..\发布版\打包的插件\ISTask.dll; DestDir: {syswow64}; Flags: onlyifdoesntexist; Check: IsWin64
;NETCA安装接口库
Source: ..\发布版\KeyX_Duilib_Version\NetcaInstallPort\动态库\x86\NetcaInstallPort.dll; DestDir: {app}; Flags: uninsrestartdelete ignoreversion
;客户端多浏览器RPC接口
Source: ..\发布版\KeyX_Duilib_Version\WebSocketPlugin\x86\KeyX_JSONRPC.dll; DestDir: {app}\Plugin\CertApp\WebSocketPlugin\NetcaWebSocketServer\; Flags: uninsrestartdelete ignoreversion
Source: ..\发布版\KeyX_Duilib_Version\WebSocketPlugin\x64\KeyX_JSONRPC.dll; DestDir: {pf}\NETCA\KeyX\Plugin\CertApp\WebSocketPlugin\NetcaWebSocketServer\; Flags: uninsrestartdelete ignoreversion; Check: IsWin64


;trust文件
;Source: ..\发布版\InnoSetup\Netca_Crypto\InnoSetupInstallOperator.dll; DestDir: {tmp}; Flags: dontcopy solidbreak
;Source: ..\..\..\NETCA_CRYPTO\current\安全环境\trust; DestDir: {tmp}; Flags: uninsrestartdelete ignoreversion
;Source: ..\..\..\NETCA_CRYPTO\current\安全环境\trust; DestDir: {commonappdata}\NETCA\certs; Flags: uninsrestartdelete restartreplace ignoreversion; check: IsTrustNoModify1
;Source: ..\..\..\NETCA_CRYPTO\current\安全环境\trust; DestDir: {localappdata}\VirtualStore\ProgramData\NETCA\certs; Flags: uninsrestartdelete restartreplace ignoreversion; Check: IsTrustNoModify2 and (not IsXp)

[Icons]
;创建桌面快捷方式、开始菜单
Name: {group}\{cm:UninstallProgram,{#KEYX_APPNAME}}; Filename: {app}\Unins_KeyX.exe; WorkingDir: {app}
Name: {group}\{cm:AppName,{#KEYX_APPNAME}}; Filename: {app}\KeyX.exe
Name: {commondesktop}\{cm:AppName,{#KEYX_APPNAME}}; Filename: {app}\KeyX.exe; Tasks: desktopicon; WorkingDir: {app}; IconIndex: 0; Components: 

[Run]
;安装客户端端时需要运行的程序，注意设置的参数
Filename: {app}\vs2008_vcredist_x86.exe; Parameters: /q /norestart; Flags: runascurrentuser runminimized runhidden; WorkingDir: {app}; Check: VC2008Isinstall
Filename: {commonappdata}\NETCA\KeyX\NETCA_Crypto.exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {commonappdata}\NETCA\KeyX; StatusMsg: {cm:NetcaMWInstalling, 正在安装网证通安全中间件,请稍候..........}; Flags: runascurrentuser runminimized runhidden; BeforeInstall: DelRegPendingFileRename()
Filename: {app}\dpinstx86.exe; WorkingDir: {sys}; Flags: runascurrentuser runminimized runhidden; Parameters: " /s /F /sa"; Check: IsXP
Filename: {app}\RestartScardService.bat; WorkingDir: {app}; Flags: shellexec runascurrentuser runminimized runhidden; Check: IsXP; Parameters: /sp- /VERYSILENT /norestart
;插件
Filename: {commonappdata}\NETCA\KeyX\忘记密码应用插件安装包.exe; Parameters: /sp- /VERYSILENT /norestart /NETCA_MAINFRAME_NOAUTORUN; Flags: runascurrentuser runminimized runhidden; WorkingDir: {commonappdata}\NETCA\KeyX; StatusMsg: 正在安装忘记密码应用插件,请稍候.......
Filename: {commonappdata}\netca\keyx\我的印章应用插件.exe; WorkingDir: {commonappdata}\NETCA\KeyX; Flags: runhidden runascurrentuser runminimized; Parameters: /sp- /VERYSILENT /norestart; StatusMsg: 正在安装我的印章应用插件,请稍候.......
Filename: {commonappdata}\NETCA\KeyX\网证通安全客户端兼容多浏览器应用插件.exe; Parameters: /sp- /VERYSILENT /norestart; Flags: runhidden runascurrentuser runminimized; WorkingDir: {commonappdata}\NETCA\KeyX; StatusMsg: 正在安装网证通安全客户端兼容多浏览器应用插件,请稍候.......
Filename: {app}\网证通在线更新客户端.exe; Parameters: /sp- /VERYSILENT /norestart; Flags: runhidden runascurrentuser runminimized; WorkingDir: {commonappdata}\NETCA\KeyX; StatusMsg: 正在安装网通在线更新客户端,请稍候.......
;设备驱动
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
;卸载客户端时需要运行的程序
;插件
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
;软件更新
Filename: {pf32}\NETCA\LiveUpdate\Unins_UpdateMgr.exe; Parameters: /SILENT /VERYSILENT /NORESTART; WorkingDir: {pf32}\NETCA\LiveUpdate; Flags: skipifdoesntexist
;设备驱动
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
;中间件
Filename: {pf}\NETCA\NETCA_Crypto\unins000.exe; WorkingDir: {pf}\NETCA\NETCA_Crypto; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist
Filename: {pf32}\NETCA\KeyX\ADOBE\unins000.exe; WorkingDir: {pf32}\NETCA\KeyX; Parameters: /SILENT /VERYSILENT /NORESTART; Flags: skipifdoesntexist

[Registry]
;32位注册表
Root: HKLM; SubKey: SOFTWARE\Microsoft\Windows\CurrentVersion\Run; ValueType: string; ValueName: KeyX; ValueData: "{app}\KeyX.exe ""/ShowWindow=hide"""; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: version; ValueData: {#SETUP_FILE_VERSION}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: uid; ValueData: {#UID}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: supportupdate; ValueData: 0; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: name; ValueData: KeyX; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: MonitorClassName; ValueData: netcaKeyXMainFrame; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: Path; ValueData: {app}\KeyX.exe; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: MonitorTitle; ValueData: 网证通安全客户端; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: checkPath; ValueData: {app}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: InstallPath; ValueData: {app}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: Cryptopath; ValueData: {sys}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX; ValueType: string; ValueName: userType; ValueData: Administrator; Check: not IsWin64; Flags: uninsdeletekey
;64位系统32位注册表
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Run; ValueType: string; ValueName: KeyX; ValueData: "{app}\KeyX.exe ""/ShowWindow=hide"""; Flags: uninsdeletekey; Check: IsWin64
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: version; ValueData: {#SETUP_FILE_VERSION}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: uid; ValueData: {#UID}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: supportupdate; ValueData: 0; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: name; ValueData: KeyX; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: MonitorClassName; ValueData: netcaKeyXMainFrame; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: Path; ValueData: {app}\KeyX.exe; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: MonitorTitle; ValueData: 网证通安全客户端; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: checkPath; ValueData: {app}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: InstallPath; ValueData: {app}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: Cryptopath; ValueData: {sys}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX; ValueType: string; ValueName: userType; ValueData: Administrator; Check: IsWin64; Flags: uninsdeletekey
;证书续期插件32位系统
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: string; ValueName: version; ValueData: {#CERTSERVICE_VERSION}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: string; ValueName: uid; ValueData: 9979FFD2-CBA0-4530-8926-20B4769BE404; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: string; ValueName: MonitorTitle; ValueData: 网证通证书续期插件; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: string; ValueName: Iconpath; ValueData: {app}\Plugin\CertApp\CertServicePlugin\icon_common_business.PNG; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: dword; ValueName: AccessToProtocol; ValueData: $00000000; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertService; ValueType: dword; ValueName: AccessToProtocol; ValueData: $00000001; Check: IsXP; Flags: uninsdeletekey
;证书续期插件64位系统
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX\CertService; ValueType: string; ValueName: version; ValueData: {#CERTSERVICE_VERSION}; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX\CertService; ValueType: string; ValueName: uid; ValueData: 9979FFD2-CBA0-4530-8926-20B4769BE404; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX\CertService; ValueType: string; ValueName: MonitorTitle; ValueData: 网证通证书续期插件; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX\CertService; ValueType: string; ValueName: Iconpath; ValueData: {app}\Plugin\CertApp\CertServicePlugin\icon_common_business.PNG; Check: IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\WOW6432NODE\NETCA\KeyX\CertService; ValueType: dword; ValueName: AccessToProtocol; ValueData: $00000000; Check: IsWin64; Flags: uninsdeletekey
;证书激活插件32
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertActivation; ValueType: string; ValueName: uid; ValueData: 1ECA9A03-64C6-4b0f-BDED-5359D7D06789; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertActivation; ValueType: string; ValueName: version; ValueData: {#CertActivation_VERSION}; Check: not IsWin64; Flags: uninsdeletekey
Root: HKLM; SubKey: SOFTWARE\NETCA\KeyX\CertActivation; ValueType: string; ValueName: name; ValueData: 网证通证书激活插件; Check: not IsWin64; Flags: uninsdeletekey
;证书激活插件64
Root: HKLM; SubKey: SOFTWARE\Wow6432Node\NETCA\KeyX\CertActivation; ValueType: string; ValueName: name; ValueData: 网证通证书激活插件; Check: IsWin64; Flags: uninsdeletekey
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
;Https配置
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

;自动加载com
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
;卸载时需要删除的文件/文件夹
Name: {pf}\NETCA\NETCA_Devices\; Type: filesandordirs; Tasks: ; Languages: 
Name: {userappdata}\Local\CrashRpt; Type: filesandordirs; Tasks: ; Languages: 
Name: {syswow64}\CNCAPki.dll; Type: files; Check: IsWin64
Name: {sys}\CNCAPki.dll; Type: files
Name: {userprograms}\网证通软件\网证通安全客户端; Type: filesandordirs
Name: {commonprograms}\网证通软件\网证通安全客户端; Type: filesandordirs
Name: {userappdata}\NETCA\KeyX\Plugin\CertApp\CertManagerPlugin\CertManagerPlugin.ini; Type: files
Name: {userappdata}\NETCA\KeyX\Plugin\CertApp\DeviceManagerPlugin\DeviceManagerPlugin.ini; Type: files
Name: {userappdata}\NETCA\KeyX\Plugin\CertApp\RenewCert\RenewCertPlugin.ini; Type: files
Name: {userappdata}\NETCA\KeyX\KeyX.ini; Type: files

[_ISTool]
UseAbsolutePaths=false

[InstallDelete]
;安装时需要删除的文件/文件夹
Name: {app}\Plugin\CertStore\USBKeyPlugin.dll; Type: files
Name: {commonstartup}\{cm:AppName,{#KEYX_APPNAME}}; Type: files
Name: {userstartup}\{cm:AppName,{#KEYX_APPNAME}}; Type: files
Name: {userprograms}\网证通软件\网证通安全客户端\*; Type: filesandordirs
Name: {commonprograms}\网证通软件\网证通安全客户端\*; Type: filesandordirs
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

//对已安装标准版kx的处理
function  OverInstallKeyx() : Boolean;
var
oldversion:String;
begin
	//安装了kx的
    if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') or RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') then
    begin
        if RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX', 'version', oldversion) or RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\NETCA\KeyX', 'version', oldversion)  then
	//获取版本号成功
		begin
			if (IsRunInSilent()) then
			begin
				Result:=true
				KillPro();
			end
			else
			begin
				MsgBox('为了确保驱动程序的顺利安装，请确认已经拔出所有电子密匙并关闭IE、office和PDF等相关程序！', mbInformation, MB_OK);
				Result:=true
				KillPro();
			end;
		end else
		begin
		//检测到已安装标准版但获取版本号失败，删除检查到的注册表信息，保证下次安装时成功。
			if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') then
			RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1');
			if RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1')   then
			RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1');
			Result:=true;
		end;
	end else
	//不会发生。检测到才调用这个函数的
	Result:=false
end;

//判断是否安装分支版
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

//删除分支版本的控制面板信息
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
	//获取分支kx的UID，然后删除其卸载信息等
		if RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\NETCA\KeyX', 'uid', uid) or RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX', 'uid', uid) then
		begin
			reg32_uninstall:='SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{'+uid+'}_is1'
			reg64_uninstall:='SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{'+uid+'}_is1'
			//32位系统
			if  RegKeyExists(HKEY_LOCAL_MACHINE,reg32_uninstall) then
				RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE,reg32_uninstall);
			//64位系统
			if  RegKeyExists(HKEY_LOCAL_MACHINE, reg64_uninstall) then
			RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, reg64_uninstall);
		end;

		if MsgBox('您是否要删除分支版本客户端的文件？', mbConfirmation, MB_YESNO) = IDYES then
		begin
		//不删除keyx目录，因为可能会导致软件更新的部分文件被删除，无法修复
		//数字证书驱动程序的安装目录，此目录已不再使用
			DelTree(ExpandConstant('{pf32}\NETCA\OrgCodeCertDriver'), True, True, True);
			DelTree(ExpandConstant('{pf}\NETCA\OrgCodeCertDriver'), True, True, True);
		//驱动的安装目录
			DelTree(ExpandConstant('{pf32}\NETCA\NETCA_Devices'), True, True, True);
			DelTree(ExpandConstant('{pf}\NETCA\NETCA_Devices'), True, True, True);
		end;
	end;
end;

 //处理覆盖分支版本
function OverInstallBranch(): boolean;
VAR ErrorCode: Integer;
begin

		//通过软件更新升级，自动覆盖安装（静默安装）
	 if IsRunInSilent() then
	begin
			Result:=true;
			KillPro();
			DelBranchInfo();
	end else
	begin
		if MsgBox('警告：您机器上已安装的客户端的其他分支版本，您是否依旧选择覆盖安装？', mbConfirmation, MB_YESNO) = IDYes then
			begin
				Result:=true;
				KillPro();
				DelBranchInfo();
			end
	end
end;

function InitializeSetup(): boolean;
begin
	//覆盖标准版安装
	if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') or RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') then
	   begin
	   // MsgBox('检查到本机已安装了标准版！', mbInformation, MB_OK);
		Result:=OverInstallKeyx();
		end
	else
	if BranchKX() then
	 begin
	  //  MsgBox('检查到本机已安装了分支版！', mbInformation, MB_OK);
		//覆盖分支版安装
		Result:=OverInstallBranch()
		end
	else
	begin
		if (IsRunInSilent()) then
			begin
				if IsShowCPUI() then
					begin
						MsgBox('为了确保驱动程序的顺利安装，请确认已经拔出所有电子密匙并关闭IE、office和PDF等相关程序！', mbInformation, MB_OK);
					end
			end else
				begin

					MsgBox('为了确保驱动程序的顺利安装，请确认已经拔出所有电子密匙并关闭IE、office和PDF等相关程序！', mbInformation, MB_OK);
				end;
		Result:=true;
	end;
	if RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID1}}_is1') then
		begin
			// MsgBox('检查到本机只安装了crypto中间件！', mbInformation, MB_OK);
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
      //MsgBox('1在实际安装开始之前用 CurStep=ssInstall 调用preInstall.ini执行完成。', mbInformation, MB_OK);
      DelReg();
      preInstall(path3,'preinstall.ini');
     // MsgBox('2在实际安装开始之前用 CurStep=ssInstall 调用preInstall.ini执行完成。', mbInformation, MB_OK);
     end;

   if CurStep=ssPostInstall  then
      begin
      // MsgBox('1实际安装完成之后用 CurStep=ssPostInstall 调用postInstall.ini执行完成。', mbInformation, MB_OK);
      endInstall(path3,'postinstall.ini');
     // MsgBox('2实际安装完成之后用 CurStep=ssPostInstall 调用postInstall.ini执行完成。', mbInformation, MB_OK);
     end;

   if CurStep=ssDone  then
      begin
		endInstall(path3,'endinstall.ini');
		// 指定新的卸载文件名（不包含扩展名），请相应修改！
		NewUninsName := 'Unins_KeyX';
		// 应用程序名称，与 [SEUTP] 段的 AppName 必须一致，请相应修改！
		// 以下重命名卸载文件
		uninspath:= ExtractFilePath(ExpandConstant('{uninstallexe}'));
		uninsname:= Copy(ExtractFileName(ExpandConstant('{uninstallexe}')),1,8);
		RenameFile(uninspath + uninsname + '.exe', uninspath + NewUninsName + '.exe');
		RenameFile(uninspath + uninsname + '.dat', uninspath + NewUninsName + '.dat');
		if RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1') then
		begin
			//MsgBox('检测到系统需要改', mbInformation, MB_OK);
			RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1', 'UninstallString', '"' + uninspath + NewUninsName + '.exe"');
			RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{{#UID}}_is1', 'QuietUninstallString', '"' + uninspath + NewUninsName + '.exe" /SILENT');
			//MsgBox('检测到系统改完', mbInformation, MB_OK);
		end;
		//如果调用,且静默安装,就会自动弹出keyx
		if IsOpenKeyX() or not IsRunInSilent() then
			ShellExecAsOriginalUser('',ExpandConstant('{app}/KeyX.exe'), '', '', SW_SHOWNORMAL, ewNoWait, ResultCode);
     end;

end;

//对单独安装中间件的卸载处理
function  Checkcryptoisut():Boolean;
var
   isoldversion:String;
begin
   if RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI','isunins', isoldversion) then
	begin
		Result:=false;
	// MsgBox('检查到只安装了crypto中间件!卸载客户端时需要保留', mbInformation, MB_OK);
	end else
       Result:=true;
     //  MsgBox('检查到没有安装crypto中间件！', mbInformation, MB_OK);
end;

//判断是否安装了中间件
function Isinstallcrypto() : Boolean;
begin
if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{A0B399CD-984F-41F2-9A5D-E3BF7A54E696}_is1') or RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{A0B399CD-984F-41F2-9A5D-E3BF7A54E696}_is1') then
   begin
    // MsgBox('检测到系统已安装成功，不用覆盖安装', mbInformation, MB_OK);
     Result:=false;
     end  else
     begin
     //MsgBox('检测到系统未安装成功，清除注册表信息', mbInformation, MB_OK); 因为某些dll被占用导致卸载没有删除，需要删除以下注册表才能无需重启，直接安装成功
     if RegValueExists(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager','PendingFileRenameOperations') then
		RegDeleteValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager','PendingFileRenameOperations');
		//MsgBox('检测到系统未安装成功，再次尝试安装', mbInformation, MB_OK);
     Result:=true;
     end;
end;


// 卸载时判断客户端是否正在运行
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
    	MsgBox('为了确保驱动程序的顺利卸载，请确认已经拔出所有电子密匙并关闭IE、office和PDF等相关程序！', mbInformation, MB_OK);
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
//	//信任trust处理
//	ret1:=DoIncrementTrustCACertsIfNeedEvent(ExpandConstant('{commonappdata}\NETCA\certs\trust'),ExpandConstant('{tmp}\trust'));
//	if not IsXp then
//	begin
//		ret2:=DoIncrementTrustCACertsIfNeedEvent(ExpandConstant('{localappdata}\VirtualStore\ProgramData\NETCA\certs\trust'),ExpandConstant('{tmp}\trust'));
//	end
//
//end;
//
////判断trust文件是否需要替换
//function IsTrustNoModify1():Boolean;
//begin
//
//	if  ret1=1 then
//	begin
//		//增量添加信任证书成功，不需要替换trust文件
//		Result:=false;
//   end else
//   begin
//		//增量添加信任证书成功，需要替换trust文件
//		//MsgBox('替换文件ret1！'+IntToStr(ret1), mbInformation, MB_OK);
//		Result:=true;
//
//    end
//
//end;
//
//
////判断trust文件是否需要替换
//function IsTrustNoModify2():Boolean;
//begin
//
//	if  ret2=1 then
//	begin
//		//增量添加信任证书成功，不需要替换trust文件
//		//MsgBox('不替换文件ret2！'+IntToStr(ret2), mbInformation, MB_OK);
//		Result:=false;
//   end else
//   begin
//		//增量添加信任证书成功，需要替换trust文件
//		//MsgBox('替换文件ret2！'+IntToStr(ret2), mbInformation, MB_OK);
//		Result:=true;
//
//    end
//
//end;
