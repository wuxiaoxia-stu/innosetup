[Code]
//*****************判断操作系统**************************************
//64位操作系统
function IsX64: Boolean;
begin
  Result := (ProcessorArchitecture = paX64);
end;

function IsIA64: Boolean;
begin
  Result := (ProcessorArchitecture = paIA64);
end;

//32位操作系统
function IsOtherArch: Boolean;
begin
  Result := not IsX64 and not IsIA64;
end;

//64位操作系统
function IsWin64: Boolean;
begin
  Result :=IsX64 or IsIA64;
end;

//xp或者win7 32
function IsX86xpWin7:Boolean;
var
  Version: TWindowsVersion;
  windows: String;
begin
	if IsOtherArch then
	begin
		GetWindowsVersionEx(Version);
		if Version.NTPlatform and ((Version.Major =6) and (Version.minor=1)) or ((Version.Major =5) and (Version.minor=1)) then
		begin
			Result:= true;
		end;
	end;
end;

//xp系统
function IsXP() : Boolean;
var
  Version: TWindowsVersion;
begin
   GetWindowsVersionEx(Version);
   if Version.NTPlatform and
     (Version.Major = 5) and
     (Version.Minor = 1) then
  begin
        Result := true;
    end else begin
  Result:=false;
end;
end;

//win10系统
function IsWin10():Boolean;
var
	ProductName:String;//系统名称
begin
	RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'ProductName', ProductName);

	if (Pos('Windows 10', ProductName) > 0) then
	Result:=true
	else
	Result:=false
end;

//vista以下的系统
function IsLessNT6: Boolean;
var
  Version: TWindowsVersion;
  windows: String;
begin
	if IsOtherArch then
	begin
		GetWindowsVersionEx(Version);
		if Version.NTPlatform and (Version.Major < 6)  then
		begin
			Result :=true;
		end;
	end;
end;

//*****************是否已安装VC程序************************************
//检测VC2008是否已安装
function VC2008Isinstall():Boolean;
begin
// 这里，不同版本运行环境对应的GUID不同
  if RegKeyExists(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{86CE1746-9EFF-3C9C-8755-81EA8903AC34}') or RegKeyExists(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{86CE1746-9EFF-3C9C-8755-81EA8903AC34}')
  or RegKeyExists(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{1F1C2DFC-2D24-3E06-BCB8-725134ADF989}') or RegKeyExists(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{1F1C2DFC-2D24-3E06-BCB8-725134ADF989}')
  or RegKeyExists(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{5FCE6D76-F5DC-37AB-B2B8-22AB8CEDB1D4}') or RegKeyExists(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{5FCE6D76-F5DC-37AB-B2B8-22AB8CEDB1D4}')
    then
      begin
        Result := false;
      end
    else
      begin
        Result := true;
      end;
end;

//检测VC2017是否已安装
function VC2017Isinstall():Boolean;
begin
// 这里，不同版本运行环境对应的GUID不同
  if RegKeyExists(HKLM, 'SOFTWARE\Wow6432Node\Microsoft\VisualStudio\14.0\VC\Runtimes\x86')
  or RegKeyExists(HKLM, 'SOFTWARE\Wow6432Node\Microsoft\VisualStudio\14.0\VC\Runtimes\x64')
    then
      begin
        Result := false;
      end
    else
      begin
        Result := true;
      end;
end;



//是否已安装vcredist_x86
function Isinstallvcredist_x86():Boolean;
begin
	if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{A49F249F-0C91-497F-86DF-B2585E8E76B7}') or RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{A49F249F-0C91-497F-86DF-B2585E8E76B7}') then
		 Result:=true;
end;

//*****************判断是否已安装Adobe Reader/Acrobat软件************************************

//检测是否安装read9
function Isread9 : Boolean;
begin
	Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Acrobat Reader\9.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Acrobat Reader\9.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Acrobat Reader\9.0\InstallPath');
end;

//检测是否安装read10
function Isread10 : Boolean;
begin
	Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Acrobat Reader\10.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Acrobat Reader\10.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Acrobat Reader\10.0\InstallPath');
end;

//检测是否安装readDC
function Isread11 : Boolean;
begin
	Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Acrobat Reader\11.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Acrobat Reader\11.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Acrobat Reader\11.0\InstallPath');
end;

//检测是否安装readDC
function IsreadDC : Boolean;
begin
	Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Acrobat Reader\DC\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Acrobat Reader\DC\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Acrobat Reader\DC\InstallPath');
end;

//检测到专业版9
function Isacrobat9 : Boolean;
begin
  Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Adobe Acrobat\9.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Adobe Acrobat\9.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Adobe Acrobat\9.0\InstallPath')
end;

//检测到专业版10
function Isacrobat10 : Boolean;
begin
  Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Adobe Acrobat\10.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Adobe Acrobat\10.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Adobe Acrobat\10.0\InstallPath')
end;

//检测到专业版11
function Isacrobat11 : Boolean;
begin
  Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Adobe Acrobat\11.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Adobe Acrobat\11.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Adobe Acrobat\11.0\InstallPath')
end;

//检测到专业版DC
function IsacrobatDC : Boolean;
begin
  Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Adobe Acrobat\DC\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Adobe Acrobat\DC\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Adobe Acrobat\DC\InstallPath')
end;

//检测是否已安装Adobe Reader
function IsReader : Boolean;
var Flag:boolean;
begin
  Flag:= Isread9  or  Isread10  or Isread11 or IsreadDC ;
  if Flag then
  Result:= true
  else
  Result:=false
end;

//检测是否已安装Adobe Acrobat
function IsAcrobat : Boolean;
var Flag:boolean;
begin
  Flag:= Isacrobat9  or  Isacrobat10  or Isacrobat11 or IsacrobatDC ;
  if Flag then
  Result:= true
  else
  Result:=false
end;

//检测是否已安装Adobe Reader或者Acrobat
function IsAdobe : Boolean;
var Flag:boolean;
begin
  Flag:=IsAcrobat or  IsReader;
  if Flag then
  Result:= true
  else
  Result:=false
end;

//*****************版本对比************************************
//把版本号字符串换成数组
procedure DecodeVersion (verstr: String; var verint: array of Integer);
var
  i,p: Integer; s: string;
begin
  verint := [0,0,0,0];
  i := 0;
  while ((Length(verstr) > 0) and (i < 4)) do
  begin
    p := pos ('.', verstr);
    if p > 0 then
    begin
      if p = 1 then s:= '0' else s:= Copy (verstr, 1, p - 1);
      verint[i] := StrToInt(s);
      i := i + 1;
      verstr := Copy (verstr, p+1, Length(verstr));
    end
    else
    begin
      verint[i] := StrToInt (verstr);
      verstr := '';
    end;
  end;
end;

// 此函数用于比较版本字符串
// 若 ver1 > ver2 返回值  1  已安装版本新   可覆盖安装新版本
// 若 ver1 = ver2 返回值  0   版本一致      可覆盖安装新版本
// 若 ver1 < ver2 返回值 -1  已安装版本旧   不须安装新版本
function CompareVersion (ver1, ver2: String) : Integer;
var
  verint1, verint2: array of Integer;
  i: integer;
begin
  SetArrayLength (verint1, 4);
  DecodeVersion (ver1, verint1);
  SetArrayLength (verint2, 4);
  DecodeVersion (ver2, verint2);
  Result := 0; i := 0;
  while ((Result = 0) and (i < 4)) do
  begin
    if verint1[i] > verint2[i] then
      Result := 1
    else
      if verint1[i] < verint2[i] then
        Result := -1
      else
        Result := 0;
    i := i + 1;
  end;
end;

//*****************跨用户kill进程************************************
procedure KillPro();
var
ErrorCode:Integer;
begin
	ShellExec('open','taskkill.exe','/f /im  KeyX.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  UpdateMgr.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  NetcaWebSocketServer.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  NetcaWebSocketImp.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  ElectCodeCard.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  MobileKeyPluginConfigRun.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  UpdateSelf.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  bjcacertd_3kgm.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  ODCMainForm.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  NetcaWebSocketDaemon.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  NetcaServerDaemon.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  NetcaKeyXServer.exe','',SW_HIDE,ewNoWait,ErrorCode);
end;

procedure KillPDFSignPro();
var
ErrorCode:Integer;
begin
	ShellExec('open','taskkill.exe','/f /im  gacutil.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  RegAsm.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  Netca_PDFReader.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  NetcaWebSocketImp.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  KeyX.exe','',SW_HIDE,ewNoWait,ErrorCode);
end;

procedure KillOtherPro();
var
ErrorCode:Integer;
begin
	ShellExec('open','taskkill.exe','/f /im  iexplore.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  AcroRd32.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  Acrobat.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  WINWORD.EXE','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  OUTLOOK.EXE','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  EXCEL.EXE','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  POWERPNT.EXE','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  firefox.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  chrome.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  360se.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  msedge.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  MicrosoftEdge.exe','',SW_HIDE,ewNoWait,ErrorCode);
	ShellExec('open','taskkill.exe','/f /im  Microsoft Edge.exe','',SW_HIDE,ewNoWait,ErrorCode);
end;


//开始************************************解决同时安装多个包含共用模块的安装包兼容问题************************************
//2020-09-27 叶秋菊增加

//判断是否安装包含Keyx的软件
function IsInstallKX():boolean;

begin
if RegValueExists(HKLM, 'SOFTWARE\Wow6432Node\NETCA\KeyX','uid') or RegValueExists(HKLM, 'SOFTWARE\NETCA\KeyX','uid') then
	begin
	Result := true;
	end else begin
	Result := false;
	end;
end;

//判断是否安装标准版电子签章软件
function IsInstallSeal():boolean;

begin
if RegValueExists(HKLM, 'SOFTWARE\Wow6432Node\NETCA\SealSign','uid') or RegValueExists(HKLM, 'SOFTWARE\NETCA\SealSign','uid') then
	begin
	Result := true;
	end else begin
	Result := false;
	end;
end;

//检查是否可以卸载，对应共享模块
//返回true 表示可以卸载，false 不可以
//原理，判断共享模块的注册表项是否多余一个
function IsCanUnloadModule(moduleName:string):boolean;
var
  Names: TArrayOfString;
  L: Integer;
  subPath:string;
begin
  subPath:='SOFTWARE\NETCA\Global\SharePackage\'+moduleName;
  Result :=true;
  if RegKeyExists(HKLM, subPath) then
    begin
        if RegGetSubkeyNames(HKLM, subPath, Names) then
        begin
          L := GetArrayLength(Names);
          if L>1 then  //如果存在多个UID 不需要卸载
          begin
              Result :=false;
          end;
		end;
   end;
end;


//用于写入共用模块的注册表信息
procedure AddShareReg(Names:array of string;uid:string);
var
i:integer;
begin
	for i:=0 to GetArrayLength(Names)-1 do
	begin
		if (Names[i]<>'') then
			begin
			RegWriteStringValue(HKLM,'SOFTWARE\NETCA\Global\SharePackage\'+Names[i]+'\'+uid,'','');
			end;
	end;
end;

//用于删除共用模块的注册表信息
procedure DelShareReg(Names:array of string;uid:string);
var
i:integer;
begin
	for i:=0 to GetArrayLength(Names)-1 do
	begin
		if (Names[i]<>'') then
			begin
			RegDeleteKeyIncludingSubkeys(HKLM,'SOFTWARE\NETCA\Global\SharePackage\'+Names[i]+'\'+uid);
			end;
	end;
end;



//获取已安装的KX UID
function GetKXuid():string;
var
uid: string;
RegPath: boolean;
begin

	if RegValueExists(HKLM, 'SOFTWARE\Wow6432Node\NETCA\KeyX','uid') then
		begin
			RegPath := RegQueryStringValue(HKLM, 'SOFTWARE\Wow6432Node\NETCA\KeyX','uid',uid);
			Result :=uid;
			//MsgBox('64位系统32位注册表UID为'+uid, mbInformation, MB_OK);
		end else if RegValueExists(HKLM, 'SOFTWARE\NETCA\KeyX','uid') then
		begin
			RegPath := RegQueryStringValue(HKLM, 'SOFTWARE\NETCA\KeyX','uid',uid);
			Result :=uid;
			//MsgBox('32位系统注册表UID为'+uid, mbInformation, MB_OK);
		end;

end;

//结束************************************解决同时安装多个包含共用模块的安装包兼容问题************************************



//开始************************************检查安装次数，解决多客户端兼容卸载问题************************************该方法暂不用，保留代码以备需要

//安装后检查修改安装次数
procedure InstallAlterN(uid:string);
var
num: string;
N: Integer;
RegPath: boolean;
begin
	if RegValueExists(HKLM, 'SOFTWARE\NETCA\InstallInfo','count') then
		begin
			if not(RegKeyExists(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{'+uid+'}_is1') or RegKeyExists(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{'+uid+'}_is1')) then
			begin
				RegPath := RegQueryStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count',num);
				//字符串转整型
				N := StrToInt(num);
				//MsgBox('本身未安装过。'+'N为'+num , mbInformation, MB_OK);
				N := N+1;
				num := IntToStr(N);
				//MsgBox('修改N=N+1。'+'N为'+num , mbInformation, MB_OK);
				//本身未安装过且存在N，则N+1
				RegWriteStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count',num);
			end;

		end else begin
			if RegValueExists(HKLM, 'SOFTWARE\Wow6432Node\NETCA\KeyX','Path') or RegValueExists(HKLM, 'SOFTWARE\NETCA\KeyX','Path') then
				begin
				//MsgBox('没有N且安装了KX。', mbInformation, MB_OK);
				RegWriteStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count','2');
				end else begin
					//MsgBox('没有N且没安装KX。', mbInformation, MB_OK);
					RegWriteStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count','1');
					end;

		end;
end;

//卸载后检查修改安装次数
procedure UnisAlterN();
var
num: string;
N: Integer;
RegPath: boolean;
begin
	RegPath := RegQueryStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count',num);
	N := StrToInt(num);
	MsgBox('卸载修改前'+'N为'+num , mbInformation, MB_OK);
	N := N-1;
	if N>0 then
		begin
		num := IntToStr(N);
		MsgBox('卸载后修改N=N-1。'+'N为'+num , mbInformation, MB_OK);
		RegWriteStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count',num);
		end else begin
			RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\NETCA\InstallInfo');
			end;
end;


//安装次数大于等于2则返回false不卸载，安装次数小于2则返回true卸载
function InstallCount():Boolean;
var
RegPath: boolean;
N: string;
begin
	RegPath := RegQueryStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count',N);
	if (N>'1') then
	begin
	Result := false;
	MsgBox('N>1'+'N为'+N , mbInformation, MB_OK);
	end else begin
		MsgBox('N≤1'+'N为'+N, mbInformation, MB_OK);
	Result := true;
	end;
end;



//结束************************************检查安装次数，解决多客户端兼容卸载问题************************************该方法暂不用，保留代码以备需要


//供外部程序调用，传入某些参数来决定此安装包是否静默安装
function IsRunInSilent():Boolean;
var
  CmdLine : String;
  CmdLineLen : Integer;
  i : Integer;
  flag1 : String;
  flag2 : String;
  flag3 : String;
begin
    flag1 := '/verysilent';
    flag2 :='/silent';
    flag3 :='/VERYSILENT';
    CmdLineLen:=ParamCount();
	//MsgBox('参数长度为' , mbInformation, MB_OK);
    for i:=0 to CmdLineLen do
    begin
    CmdLine:=ParamStr(i);
	//MsgBox('参数为' , mbInformation, MB_OK);
    if (CmdLine  = flag1) or (CmdLine  = flag2) or (CmdLine  = flag3) then
      begin
         result := true;
		 exit;
      end;
    end;
	result := false;
end;

//供外部程序调用，传入某些参数来决定此安装包是否创建桌面快捷方式图标
function IsNoAppShortcut():Boolean;
var
  CmdLine : String;
  CmdLineLen : Integer;
  i : Integer;
  flag1 : String;
  flag2 : String;
begin
    flag1 := '/noappshortcut';
    flag2 :='/NOAPPSHORTCUT';
    CmdLineLen:=ParamCount();
	//MsgBox('参数长度为' , mbInformation, MB_OK);
    for i:=0 to CmdLineLen do
    begin
    CmdLine:=ParamStr(i);
	//MsgBox('参数为' , mbInformation, MB_OK);
    if (CmdLine  = flag1) or (CmdLine  = flag2) then
      begin
         result := false;
		 exit;
      end;
    end;
	result := true;
end;


//控制是否弹出安装时候的提示框
function IsShowCPUI():Boolean;
var
  CmdLine : String;
  CmdLineLen : Integer;
  i : Integer;
  flag1 : String;
  flag2 : String;
begin
    flag1 := '/SHOWCPUI';
    flag2 :='/showcpui';
    CmdLineLen:=ParamCount();
	//MsgBox('参数长度为' , mbInformation, MB_OK);
    for i:=0 to CmdLineLen do
    begin
    CmdLine:=ParamStr(i);
	//MsgBox('参数为' , mbInformation, MB_OK);
    if (CmdLine  = flag1) or (CmdLine  = flag2) then
      begin
         result := true;
		 exit;
      end;
    end;
	result := false;
end;

//控制是否放trust文件
function IsNoTrust():Boolean;
var
  CmdLine : String;
  CmdLineLen : Integer;
  i : Integer;
  flag1 : String;
  flag2 : String;
begin
    flag1 := '/NOTRUST';
    flag2 :='/notrust';
    CmdLineLen:=ParamCount();
	//MsgBox('参数长度为' , mbInformation, MB_OK);
    for i:=0 to CmdLineLen do
    begin
    CmdLine:=ParamStr(i);
	//MsgBox('参数为' , mbInformation, MB_OK);
    if (CmdLine  = flag1) or (CmdLine  = flag2) then
      begin
         result := false;
		 exit;
      end;
    end;
	result := true;
end;

//供外部程序调用，传入某些参数来决定keyx安装完成后是否打开keyx
function IsOpenKeyX():Boolean;
var
  CmdLine : String;
  CmdLineLen : Integer;
  i : Integer;
  flag1 : String;
  flag2 : String;
begin
    flag1 := '/open';
    flag2 :='/OPEN';
    CmdLineLen:=ParamCount();
	//MsgBox('参数长度为' , mbInformation, MB_OK);
    for i:=0 to CmdLineLen do
    begin
    CmdLine:=ParamStr(i);
	//MsgBox('参数为' , mbInformation, MB_OK);
    if (CmdLine  = flag1) or (CmdLine  = flag2) then
      begin
         result := true;
		 exit;
      end;
    end;
	result := false;
end;


//此函数用于判断是否安装对应程序
function Isinstall(uid: String) : Boolean;
begin
if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{'+uid+'}_is1') or RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{'+uid+'}_is1') then
   begin
     // MsgBox('检测到系统已安装'+uid, mbInformation, MB_OK);
      Result:=true;
     end  else
     begin
     MsgBox('安装失败：系统检测到您未安装网证通安全中间件，请先自行安装，谢谢。' , mbInformation, MB_OK);
      Result:=false;
     end;
end;


//;//安装完成后修改KeyX的UID、文件名、版本号
//;procedure ChangeUid();
//;begin
//;    if IsWin64 then
//;    begin
//;        //	MsgBox('64位执行添加注册表',mbConfirmation, MB_OK);
//;        RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','uid','{#UID}');
//;        RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','MonitorTitle','{#KEYX_APPNAME}');
//;        RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','version','{#SETUP_FILE_VERSION}');
//;         //MsgBox('64位执行添加注册表完成',mbConfirmation, MB_OK);
//;   end  else
//;		begin
//;		// MsgBox('32位执行添加注册表',mbConfirmation, MB_OK);
//;		RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','uid','{#UID}');
//;        RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','MonitorTitle','{#KEYX_APPNAME}');
//;        RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','version','{#SETUP_FILE_VERSION}');
//;         // MsgBox('32位执行添加注册表',mbConfirmation, MB_OK);
//;        end;
//;end;


//删除被占用文件的注册表
procedure DelRegPendingFileRename();
begin
		//删除被占用文件的注册表
		if RegValueExists(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager','PendingFileRenameOperations') then
			RegDeleteValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager','PendingFileRenameOperations');
end;

//删除残留的设备驱动注册信息
procedure DelReg();
begin

            //NETCAKeyMw2
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyMw2') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyMw2');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyMw3') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyMw3');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyMw2') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyMw2');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyMw3') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyMw3');
            //HTSM2
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\HTSM2') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\HTSM2');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\HTSM2') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\HTSM2');
            //NETCAKeyFT3000GMHID
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFT3000GMHID') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFT3000GMHID');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFT3000GMHID') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFT3000GMHID');
            //NETCAKeyHTRSA
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyHTRSA') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyHTRSA');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyHTRSA') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyHTRSA');
            //NETCAKeyHTSM2
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyHTSM2') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyHTSM2');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyHTSM2') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyHTSM2');
            //NETCAKeyFT3
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFT3') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFT3');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFT3') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFT3');
            //NETCAKeyFTSM2
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFTSM2') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFTSM2');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFTSM2') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFTSM2');
            //NETCAKeyHT
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyHT') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyHT');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyHT') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyHT');
            //NETCAKeyWeepal
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyWeepal') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyWeepal');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyWeepal') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyWeepal');
            //NETCAKeyFT3000GM
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFT3000GM') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFT3000GM');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFT3000GM') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFT3000GM');
            //NETCAKeymTokenGM3000
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeymTokenGM3000') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeymTokenGM3000');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeymTokenGM3000') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeymTokenGM3000');
            //NETCAKeyMwES
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyMwES') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyMwES');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyMwES') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyMwES');
            //NETCAKeyFTGM
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFTGM') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFTGM');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFTGM') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFTGM');
            //NETCAKeyFTBLE
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFTBLE') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyFTBLE');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFTBLE') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyFTBLE');
            //NETCAKeyLMgm
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyLMgm') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyLMgm');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyLMgm') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyLMgm');
            //NETCAKeyLMOTG
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyLMOTG') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyLMOTG');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyLMOTG') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyLMOTG');
            //NETCAKeyEtaxViton
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyEtaxViton') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyEtaxViton');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyEtaxViton') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyEtaxViton');
            //NETCA_Devices(ESBluetoothKey)
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyEsBLE') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyEsBLE');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyEsBLE') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyEsBLE');
            //NETCA_Devices(ESBluetoothKey)
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyEsBLE') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyEsBLE');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyEsBLE') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyEsBLE');
            //NETCA_Devices(HDSDCard).exe
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyHDTF') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\PKI\Devices\NETCAKeyHDTF');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyHDTF') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\PKI\Devices\NETCAKeyHDTF');
            //控制面板卸载信息
            //NETCA_Devices(HTSM2)
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{EAB2175A-C7CE-4FFF-BF32-C56C7CDBAD64}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{EAB2175A-C7CE-4FFF-BF32-C56C7CDBAD64}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{EAB2175A-C7CE-4FFF-BF32-C56C7CDBAD64}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{EAB2175A-C7CE-4FFF-BF32-C56C7CDBAD64}_is1');
            //NETCA_Devices(FT3003)_VIP
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{868DD5BC-6F47-4901-8ADD-741F6FF93272}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{868DD5BC-6F47-4901-8ADD-741F6FF93272}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{868DD5BC-6F47-4901-8ADD-741F6FF93272}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{868DD5BC-6F47-4901-8ADD-741F6FF93272}_is1');
            //NETCA_Devices(LongMaiOTG).exe,
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6918D487-4079-4BF0-9130-68924C722680}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6918D487-4079-4BF0-9130-68924C722680}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{6918D487-4079-4BF0-9130-68924C722680}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{6918D487-4079-4BF0-9130-68924C722680}_is1');
            //NETCA_Devices(HTSM2COS),
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{1394738E-C44C-4FB2-AEB5-5407C998792A}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{1394738E-C44C-4FB2-AEB5-5407C998792A}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{1394738E-C44C-4FB2-AEB5-5407C998792A}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{1394738E-C44C-4FB2-AEB5-5407C998792A}_is1');
            //NETCA_Devices(weepal2001),
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{4904D61A-C8E3-4B64-A9F6-948F9E4A6ED5}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{4904D61A-C8E3-4B64-A9F6-948F9E4A6ED5}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{4904D61A-C8E3-4B64-A9F6-948F9E4A6ED5}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{4904D61A-C8E3-4B64-A9F6-948F9E4A6ED5}_is1');
            //NETCA_Devices(FT3003),
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{99DF1990-C302-4DA3-BCEE-AE6F7721E635}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{99DF1990-C302-4DA3-BCEE-AE6F7721E635}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{99DF1990-C302-4DA3-BCEE-AE6F7721E635}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{99DF1990-C302-4DA3-BCEE-AE6F7721E635}_is1');
            //NETCA_Devices(FT3000GM),
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{02B0D586-F717-4090-B6FB-44A972E7DEF5}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{02B0D586-F717-4090-B6FB-44A972E7DEF5}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{02B0D586-F717-4090-B6FB-44A972E7DEF5}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{02B0D586-F717-4090-B6FB-44A972E7DEF5}_is1');
            //NETCA_Devices(ES),
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{5EFB2F66-0220-47D9-AC47-8CCAC42104BB}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{5EFB2F66-0220-47D9-AC47-8CCAC42104BB}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{5EFB2F66-0220-47D9-AC47-8CCAC42104BB}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{5EFB2F66-0220-47D9-AC47-8CCAC42104BB}_is1');
            //NETCA_Devices(HDSDCard),
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{133E929D-A847-43F4-A534-4928CCB17D1A}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{133E929D-A847-43F4-A534-4928CCB17D1A}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{133E929D-A847-43F4-A534-4928CCB17D1A}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{133E929D-A847-43F4-A534-4928CCB17D1A}_is1');
            //NETCA_Devices(ESBluetoothKey)
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{0F343437-42E4-4042-A8A0-33DF29715903}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{0F343437-42E4-4042-A8A0-33DF29715903}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{0F343437-42E4-4042-A8A0-33DF29715903}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{0F343437-42E4-4042-A8A0-33DF29715903}_is1');
            //增加飞天蓝牙key删除信息功能
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{9F7E355F-4C13-4BF4-B099-59851B342111}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{9F7E355F-4C13-4BF4-B099-59851B342111}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{9F7E355F-4C13-4BF4-B099-59851B342111}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{9F7E355F-4C13-4BF4-B099-59851B342111}_is1');
end;

////静默安装的代码
////关键代码静默安装
//procedure InitializeWizard();
//var
//ErrorCode: Integer;
//begin
//  //不显示边框，这样就能达到不会闪两下了
//	WizardForm.BorderStyle:=bsNone;
//    ShellExec('open','taskkill.exe','/f /im  KeyX.exe','',SW_HIDE,ewNoWait,ErrorCode);
//	ShellExec('open','taskkill.exe','/f /im  NetcaWebSocketServer.exe','',SW_HIDE,ewNoWait,ErrorCode);
//	ShellExec('open','taskkill.exe','/f /im  NetcaWebSocketImp.exe','',SW_HIDE,ewNoWait,ErrorCode);
//	ShellExec('open','taskkill.exe','/f /im  ElectCodeCard.exe','',SW_HIDE,ewNoWait,ErrorCode);
//	ShellExec('open','taskkill.exe','/f /im  MobileKeyPluginConfigRun.exe','',SW_HIDE,ewNoWait,ErrorCode);
//end;
//
//procedure CurPageChanged(CurPageID: Integer);
//begin
// //因为安装过程界面隐藏不了，所以设置窗口宽高为0
//  WizardForm.ClientWidth := ScaleX(0)
//  WizardForm.ClientHeight := ScaleY(0)
//if CurPageID = wpWelcome then
//WizardForm.NextButton.OnClick(WizardForm);
//if CurPageID >= wpInstalling then
//    WizardForm.Visible := False
//  else
//    WizardForm.Visible := True;
// // WizardForm.NextButton.OnClick(WizardForm);
//end;
//
//function ShouldSkipPage(PageID: Integer): Boolean;
//begin
//result := true;
//end;

//开始************************************多CA驱动兼容问题************************************
//组装新的vidpid：获取旧的vid+新的vid（去重），函数返回新旧vid拼接后的vid
function getAllVidPid(newVid:array of string;oldVid:string): string;
var
i,res: integer;
allVid: string;
begin
	//安装前vidpid有值的情况
	if Length(oldVid)>0 then
	begin
		//旧的vid需要去除最后的断行
		allVid := copy(oldVid, 1, Length(oldVid)-1);
		for i:=0 to GetArrayLength(newVid)-1 do
		begin
			if (newVid[i]<>'') then
				begin
					res := Pos(newVid[i]+#0,oldVid);
					if res=0 then
						begin
							allVid := allVid + #0 + newVid[i];
						end;
				end;
		end;
	//安装前vidpid为空的情况
	end else begin
		allVid := newVid[0];
		for i:=1 to GetArrayLength(newVid)-1 do
		begin
			if (newVid[i]<>'') then
				begin
					allVid := allVid + #0 + newVid[i];
				end;
		end;
	end;

	//返回新旧vid拼接后的vid
	Result:= allVid;
end;

procedure delUninsInfo();
begin
	//删除驱动在控制面板的卸载显示
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{0F343437-42E4-4042-A8A0-33DF29715903}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{133E929D-A847-43F4-A534-4928CCB17D1A}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6918D487-4079-4BF0-9130-68924C722680}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{4904D61A-C8E3-4B64-A9F6-948F9E4A6ED5}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{FF6165AF-9771-4B4E-9743-102E53F7BA9C}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{ADCFCE9D-6F72-40EA-BC28-E5F5021E54C6}_is1');

	//删除驱动在控制面板的卸载显示
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{0F343437-42E4-4042-A8A0-33DF29715903}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{133E929D-A847-43F4-A534-4928CCB17D1A}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{6918D487-4079-4BF0-9130-68924C722680}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{4904D61A-C8E3-4B64-A9F6-948F9E4A6ED5}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{FF6165AF-9771-4B4E-9743-102E53F7BA9C}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{ADCFCE9D-6F72-40EA-BC28-E5F5021E54C6}_is1');
end;
