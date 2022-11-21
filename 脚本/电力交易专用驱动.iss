;InnoSetupVersion=5.4.2
#define KEYX_APPNAME "网证通安全客户端签章版"
#define NETCA "广东省电子商务认证有限公司"
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


AppCopyright={#NETCA}。保留所有权利。
VersionInfoCompany={#NETCA}
VersionInfoCopyright=(C) {#NETCA}。保留所有权利。
VersionInfoDescription={#KEYX_APPNAME}32位安装包
VersionInfoProductName={#KEYX_APPNAME}

VersionInfoTextVersion={#SETUP_FILE_VERSION}
VersionInfoVersion={#SETUP_FILE_VERSION}
AlwaysShowDirOnReadyPage=false
SetupIconFile=..\..\..\current\发布版\NETCA.ico

;安装后提示用户重新启动电脑
AlwaysRestart =no
;卸载后提示用户重新启动电脑
;UninstallRestartComputer =yes
; 开启64位模式
ArchitecturesInstallIn64BitMode=x64 ia64
ArchitecturesAllowed=x86 x64 ia64
ShowLanguageDialog=no
ShowUndisplayableLanguages=true
Uninstallable=false

[Languages]
Name: chinesesimp; MessagesFile: compiler:Languages\ChineseSimp-12-5.1.11.isl; LicenseFile: G:\软件发布\统一介质管理工具\current\发布版\Lisence\Fileinfobefore签章版.txt

[Messages]

chinesesimp.SetupAppTitle=网证通安全客户端签章版
chinesesimp.SetupWindowTitle=网证通安全客户端签章版

[CustomMessages]
chinesesimp.AppName=网证通安全客户端签章版
chinesesimp.AppVerName=网证通安全客户端签章版
chinesesimp.AppPublisher=广东省电子商务认证有限公司
chinesesimp.DefaultGroupName=网证通软件\网证通安全客户端
chinesesimp.Fileinfobefore =Fileinfobefore.txt
chinesesimp.NetcaMWInstalling=正在安装网证通安全客户端签章版......请稍候......
chinesesimp.AboutMsg=欢迎使用网证通安全客户端   广东省电子商务认证有限公司
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

[Files]
Source: ..\..\..\install\测试版\标准版\Windows\网证通电子签章客户端\V1.5\网证通电子签章客户端.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\..\pdf签名方案\Adobe Plugin\output\网证通PDF签名插件_V2.0.exe; DestDir: {app}; Flags: deleteafterinstall ignoreversion
Source: ..\..\..\install\测试版\标准版\Windows\应用安装包\网证通安全客户端收集个人信息插件\网证通安全客户端收集个人信息插件.exe; DestDir: {app}; Flags: ignoreversion deleteafterinstall
Source: ..\..\..\..\NETCA_CRYPTO\current\安装包\Devices\NETCA_Devices(DX).exe; DestDir: {commonappdata}\NETCA\KeyX\Drivers\; Flags: ignoreversion
Source: ..\..\发布版\KeyX_Duilib_Version\DeviceManagerPlugin\Config\USBKey\l_DXKey.xml; DestDir: {commonappdata}\NETCA\KeyX\Drivers\Config\USBKey\; Flags: ignoreversion
Source: ..\..\发布版\KeyX_Duilib_Version\DriverInstallerPlugin\KeyPicture\DX key.jpg; DestDir: {commonappdata}\netca\keyx\Drivers\images; Flags: ignoreversion


[Run]
Filename: {app}\网证通电子签章客户端.exe; WorkingDir: {tmp}; Parameters: /SP- /SILENT /NORESTART /verysilent; Flags: runascurrentuser runminimized runhidden; StatusMsg: 正在安装，可能要耗时几分钟，请稍等。
Filename: {app}\网证通安全客户端收集个人信息插件.exe; WorkingDir: {app}; Parameters: /SP- /SILENT /NORESTART /verysilent; Flags: runminimized runhidden runascurrentuser; StatusMsg: 正在安装，可能要耗时几分钟，请稍等。
Filename: {app}\网证通PDF签名插件_V2.0.exe; Parameters: /sp- /VERYSILENT /norestart; WorkingDir: {tmp}; Flags: runascurrentuser runminimized runhidden; StatusMsg: 正在安装，可能要耗时几分钟，请稍等。; Check: IsAdobe
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
		MsgBox('为了确保驱动程序的顺利安装，将自动关闭IE、office和PDF等相关程序，请您确认已经拔出所有电子密匙！', mbInformation, MB_OK);
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
          //MsgBox('64位执行添加注册表',mbConfirmation, MB_OK);
          RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','uid','{#UID1}');
          RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','MonitorTitle','{#KEYX_APPNAME}');
          RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','version','{#SETUP_FILE_VERSION}');
         //MsgBox('64位执行添加注册表完成2',mbConfirmation, MB_OK);
        end  else
        begin
         // MsgBox('32位执行添加注册表',mbConfirmation, MB_OK);
         RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','MonitorTitle','{#KEYX_APPNAME}');
         RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','uid','{#UID1}');
         RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','version','{#SETUP_FILE_VERSION}');
          // MsgBox('32位执行添加注册表2',mbConfirmation, MB_OK);
        end;
        //如果调用,且静默安装,就会自动弹出keyx
		if IsOpenKeyX() or not IsRunInSilent() then
			ShellExecAsOriginalUser('',ExpandConstant('{app}/KeyX.exe'), '', '', SW_SHOWNORMAL, ewNoWait, ResultCode);

     end;
end;
