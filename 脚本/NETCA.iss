[Code]
//*****************�жϲ���ϵͳ**************************************
//64λ����ϵͳ
function IsX64: Boolean;
begin
  Result := (ProcessorArchitecture = paX64);
end;

function IsIA64: Boolean;
begin
  Result := (ProcessorArchitecture = paIA64);
end;

//32λ����ϵͳ
function IsOtherArch: Boolean;
begin
  Result := not IsX64 and not IsIA64;
end;

//64λ����ϵͳ
function IsWin64: Boolean;
begin
  Result :=IsX64 or IsIA64;
end;

//xp����win7 32
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

//xpϵͳ
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

//win10ϵͳ
function IsWin10():Boolean;
var
	ProductName:String;//ϵͳ����
begin
	RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'ProductName', ProductName);

	if (Pos('Windows 10', ProductName) > 0) then
	Result:=true
	else
	Result:=false
end;

//vista���µ�ϵͳ
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

//*****************�Ƿ��Ѱ�װVC����************************************
//���VC2008�Ƿ��Ѱ�װ
function VC2008Isinstall():Boolean;
begin
// �����ͬ�汾���л�����Ӧ��GUID��ͬ
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

//���VC2017�Ƿ��Ѱ�װ
function VC2017Isinstall():Boolean;
begin
// �����ͬ�汾���л�����Ӧ��GUID��ͬ
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



//�Ƿ��Ѱ�װvcredist_x86
function Isinstallvcredist_x86():Boolean;
begin
	if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{A49F249F-0C91-497F-86DF-B2585E8E76B7}') or RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{A49F249F-0C91-497F-86DF-B2585E8E76B7}') then
		 Result:=true;
end;

//*****************�ж��Ƿ��Ѱ�װAdobe Reader/Acrobat���************************************

//����Ƿ�װread9
function Isread9 : Boolean;
begin
	Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Acrobat Reader\9.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Acrobat Reader\9.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Acrobat Reader\9.0\InstallPath');
end;

//����Ƿ�װread10
function Isread10 : Boolean;
begin
	Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Acrobat Reader\10.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Acrobat Reader\10.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Acrobat Reader\10.0\InstallPath');
end;

//����Ƿ�װreadDC
function Isread11 : Boolean;
begin
	Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Acrobat Reader\11.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Acrobat Reader\11.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Acrobat Reader\11.0\InstallPath');
end;

//����Ƿ�װreadDC
function IsreadDC : Boolean;
begin
	Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Acrobat Reader\DC\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Acrobat Reader\DC\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Acrobat Reader\DC\InstallPath');
end;

//��⵽רҵ��9
function Isacrobat9 : Boolean;
begin
  Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Adobe Acrobat\9.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Adobe Acrobat\9.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Adobe Acrobat\9.0\InstallPath')
end;

//��⵽רҵ��10
function Isacrobat10 : Boolean;
begin
  Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Adobe Acrobat\10.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Adobe Acrobat\10.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Adobe Acrobat\10.0\InstallPath')
end;

//��⵽רҵ��11
function Isacrobat11 : Boolean;
begin
  Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Adobe Acrobat\11.0\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Adobe Acrobat\11.0\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Adobe Acrobat\11.0\InstallPath')
end;

//��⵽רҵ��DC
function IsacrobatDC : Boolean;
begin
  Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Adobe\Adobe Acrobat\DC\InstallPath') or RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\Adobe\Adobe Acrobat\DC\InstallPath') or RegKeyExists(HKEY_CURRENT_USER, 'Software\Adobe\Adobe Acrobat\DC\InstallPath')
end;

//����Ƿ��Ѱ�װAdobe Reader
function IsReader : Boolean;
var Flag:boolean;
begin
  Flag:= Isread9  or  Isread10  or Isread11 or IsreadDC ;
  if Flag then
  Result:= true
  else
  Result:=false
end;

//����Ƿ��Ѱ�װAdobe Acrobat
function IsAcrobat : Boolean;
var Flag:boolean;
begin
  Flag:= Isacrobat9  or  Isacrobat10  or Isacrobat11 or IsacrobatDC ;
  if Flag then
  Result:= true
  else
  Result:=false
end;

//����Ƿ��Ѱ�װAdobe Reader����Acrobat
function IsAdobe : Boolean;
var Flag:boolean;
begin
  Flag:=IsAcrobat or  IsReader;
  if Flag then
  Result:= true
  else
  Result:=false
end;

//*****************�汾�Ա�************************************
//�Ѱ汾���ַ�����������
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

// �˺������ڱȽϰ汾�ַ���
// �� ver1 > ver2 ����ֵ  1  �Ѱ�װ�汾��   �ɸ��ǰ�װ�°汾
// �� ver1 = ver2 ����ֵ  0   �汾һ��      �ɸ��ǰ�װ�°汾
// �� ver1 < ver2 ����ֵ -1  �Ѱ�װ�汾��   ���밲װ�°汾
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

//*****************���û�kill����************************************
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


//��ʼ************************************���ͬʱ��װ�����������ģ��İ�װ����������************************************
//2020-09-27 Ҷ�������

//�ж��Ƿ�װ����Keyx�����
function IsInstallKX():boolean;

begin
if RegValueExists(HKLM, 'SOFTWARE\Wow6432Node\NETCA\KeyX','uid') or RegValueExists(HKLM, 'SOFTWARE\NETCA\KeyX','uid') then
	begin
	Result := true;
	end else begin
	Result := false;
	end;
end;

//�ж��Ƿ�װ��׼�����ǩ�����
function IsInstallSeal():boolean;

begin
if RegValueExists(HKLM, 'SOFTWARE\Wow6432Node\NETCA\SealSign','uid') or RegValueExists(HKLM, 'SOFTWARE\NETCA\SealSign','uid') then
	begin
	Result := true;
	end else begin
	Result := false;
	end;
end;

//����Ƿ����ж�أ���Ӧ����ģ��
//����true ��ʾ����ж�أ�false ������
//ԭ���жϹ���ģ���ע������Ƿ����һ��
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
          if L>1 then  //������ڶ��UID ����Ҫж��
          begin
              Result :=false;
          end;
		end;
   end;
end;


//����д�빲��ģ���ע�����Ϣ
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

//����ɾ������ģ���ע�����Ϣ
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



//��ȡ�Ѱ�װ��KX UID
function GetKXuid():string;
var
uid: string;
RegPath: boolean;
begin

	if RegValueExists(HKLM, 'SOFTWARE\Wow6432Node\NETCA\KeyX','uid') then
		begin
			RegPath := RegQueryStringValue(HKLM, 'SOFTWARE\Wow6432Node\NETCA\KeyX','uid',uid);
			Result :=uid;
			//MsgBox('64λϵͳ32λע���UIDΪ'+uid, mbInformation, MB_OK);
		end else if RegValueExists(HKLM, 'SOFTWARE\NETCA\KeyX','uid') then
		begin
			RegPath := RegQueryStringValue(HKLM, 'SOFTWARE\NETCA\KeyX','uid',uid);
			Result :=uid;
			//MsgBox('32λϵͳע���UIDΪ'+uid, mbInformation, MB_OK);
		end;

end;

//����************************************���ͬʱ��װ�����������ģ��İ�װ����������************************************



//��ʼ************************************��鰲װ�����������ͻ��˼���ж������************************************�÷����ݲ��ã����������Ա���Ҫ

//��װ�����޸İ�װ����
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
				//�ַ���ת����
				N := StrToInt(num);
				//MsgBox('����δ��װ����'+'NΪ'+num , mbInformation, MB_OK);
				N := N+1;
				num := IntToStr(N);
				//MsgBox('�޸�N=N+1��'+'NΪ'+num , mbInformation, MB_OK);
				//����δ��װ���Ҵ���N����N+1
				RegWriteStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count',num);
			end;

		end else begin
			if RegValueExists(HKLM, 'SOFTWARE\Wow6432Node\NETCA\KeyX','Path') or RegValueExists(HKLM, 'SOFTWARE\NETCA\KeyX','Path') then
				begin
				//MsgBox('û��N�Ұ�װ��KX��', mbInformation, MB_OK);
				RegWriteStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count','2');
				end else begin
					//MsgBox('û��N��û��װKX��', mbInformation, MB_OK);
					RegWriteStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count','1');
					end;

		end;
end;

//ж�غ����޸İ�װ����
procedure UnisAlterN();
var
num: string;
N: Integer;
RegPath: boolean;
begin
	RegPath := RegQueryStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count',num);
	N := StrToInt(num);
	MsgBox('ж���޸�ǰ'+'NΪ'+num , mbInformation, MB_OK);
	N := N-1;
	if N>0 then
		begin
		num := IntToStr(N);
		MsgBox('ж�غ��޸�N=N-1��'+'NΪ'+num , mbInformation, MB_OK);
		RegWriteStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count',num);
		end else begin
			RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\NETCA\InstallInfo');
			end;
end;


//��װ�������ڵ���2�򷵻�false��ж�أ���װ����С��2�򷵻�trueж��
function InstallCount():Boolean;
var
RegPath: boolean;
N: string;
begin
	RegPath := RegQueryStringValue(HKLM, 'SOFTWARE\NETCA\InstallInfo','count',N);
	if (N>'1') then
	begin
	Result := false;
	MsgBox('N>1'+'NΪ'+N , mbInformation, MB_OK);
	end else begin
		MsgBox('N��1'+'NΪ'+N, mbInformation, MB_OK);
	Result := true;
	end;
end;



//����************************************��鰲װ�����������ͻ��˼���ж������************************************�÷����ݲ��ã����������Ա���Ҫ


//���ⲿ������ã�����ĳЩ�����������˰�װ���Ƿ�Ĭ��װ
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
	//MsgBox('��������Ϊ' , mbInformation, MB_OK);
    for i:=0 to CmdLineLen do
    begin
    CmdLine:=ParamStr(i);
	//MsgBox('����Ϊ' , mbInformation, MB_OK);
    if (CmdLine  = flag1) or (CmdLine  = flag2) or (CmdLine  = flag3) then
      begin
         result := true;
		 exit;
      end;
    end;
	result := false;
end;

//���ⲿ������ã�����ĳЩ�����������˰�װ���Ƿ񴴽������ݷ�ʽͼ��
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
	//MsgBox('��������Ϊ' , mbInformation, MB_OK);
    for i:=0 to CmdLineLen do
    begin
    CmdLine:=ParamStr(i);
	//MsgBox('����Ϊ' , mbInformation, MB_OK);
    if (CmdLine  = flag1) or (CmdLine  = flag2) then
      begin
         result := false;
		 exit;
      end;
    end;
	result := true;
end;


//�����Ƿ񵯳���װʱ�����ʾ��
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
	//MsgBox('��������Ϊ' , mbInformation, MB_OK);
    for i:=0 to CmdLineLen do
    begin
    CmdLine:=ParamStr(i);
	//MsgBox('����Ϊ' , mbInformation, MB_OK);
    if (CmdLine  = flag1) or (CmdLine  = flag2) then
      begin
         result := true;
		 exit;
      end;
    end;
	result := false;
end;

//�����Ƿ��trust�ļ�
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
	//MsgBox('��������Ϊ' , mbInformation, MB_OK);
    for i:=0 to CmdLineLen do
    begin
    CmdLine:=ParamStr(i);
	//MsgBox('����Ϊ' , mbInformation, MB_OK);
    if (CmdLine  = flag1) or (CmdLine  = flag2) then
      begin
         result := false;
		 exit;
      end;
    end;
	result := true;
end;

//���ⲿ������ã�����ĳЩ����������keyx��װ��ɺ��Ƿ��keyx
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
	//MsgBox('��������Ϊ' , mbInformation, MB_OK);
    for i:=0 to CmdLineLen do
    begin
    CmdLine:=ParamStr(i);
	//MsgBox('����Ϊ' , mbInformation, MB_OK);
    if (CmdLine  = flag1) or (CmdLine  = flag2) then
      begin
         result := true;
		 exit;
      end;
    end;
	result := false;
end;


//�˺��������ж��Ƿ�װ��Ӧ����
function Isinstall(uid: String) : Boolean;
begin
if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{'+uid+'}_is1') or RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{'+uid+'}_is1') then
   begin
     // MsgBox('��⵽ϵͳ�Ѱ�װ'+uid, mbInformation, MB_OK);
      Result:=true;
     end  else
     begin
     MsgBox('��װʧ�ܣ�ϵͳ��⵽��δ��װ��֤ͨ��ȫ�м�����������а�װ��лл��' , mbInformation, MB_OK);
      Result:=false;
     end;
end;


//;//��װ��ɺ��޸�KeyX��UID���ļ������汾��
//;procedure ChangeUid();
//;begin
//;    if IsWin64 then
//;    begin
//;        //	MsgBox('64λִ�����ע���',mbConfirmation, MB_OK);
//;        RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','uid','{#UID}');
//;        RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','MonitorTitle','{#KEYX_APPNAME}');
//;        RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Wow6432Node\NETCA\KeyX','version','{#SETUP_FILE_VERSION}');
//;         //MsgBox('64λִ�����ע������',mbConfirmation, MB_OK);
//;   end  else
//;		begin
//;		// MsgBox('32λִ�����ע���',mbConfirmation, MB_OK);
//;		RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','uid','{#UID}');
//;        RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','MonitorTitle','{#KEYX_APPNAME}');
//;        RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\NETCA\KeyX','version','{#SETUP_FILE_VERSION}');
//;         // MsgBox('32λִ�����ע���',mbConfirmation, MB_OK);
//;        end;
//;end;


//ɾ����ռ���ļ���ע���
procedure DelRegPendingFileRename();
begin
		//ɾ����ռ���ļ���ע���
		if RegValueExists(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager','PendingFileRenameOperations') then
			RegDeleteValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager','PendingFileRenameOperations');
end;

//ɾ���������豸����ע����Ϣ
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
            //�������ж����Ϣ
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
            //���ӷ�������keyɾ����Ϣ����
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{9F7E355F-4C13-4BF4-B099-59851B342111}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{9F7E355F-4C13-4BF4-B099-59851B342111}_is1');
            if  RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{9F7E355F-4C13-4BF4-B099-59851B342111}_is1') then
            RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{9F7E355F-4C13-4BF4-B099-59851B342111}_is1');
end;

////��Ĭ��װ�Ĵ���
////�ؼ����뾲Ĭ��װ
//procedure InitializeWizard();
//var
//ErrorCode: Integer;
//begin
//  //����ʾ�߿��������ܴﵽ������������
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
// //��Ϊ��װ���̽������ز��ˣ��������ô��ڿ��Ϊ0
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

//��ʼ************************************��CA������������************************************
//��װ�µ�vidpid����ȡ�ɵ�vid+�µ�vid��ȥ�أ������������¾�vidƴ�Ӻ��vid
function getAllVidPid(newVid:array of string;oldVid:string): string;
var
i,res: integer;
allVid: string;
begin
	//��װǰvidpid��ֵ�����
	if Length(oldVid)>0 then
	begin
		//�ɵ�vid��Ҫȥ�����Ķ���
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
	//��װǰvidpidΪ�յ����
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

	//�����¾�vidƴ�Ӻ��vid
	Result:= allVid;
end;

procedure delUninsInfo();
begin
	//ɾ�������ڿ�������ж����ʾ
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{0F343437-42E4-4042-A8A0-33DF29715903}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{133E929D-A847-43F4-A534-4928CCB17D1A}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6918D487-4079-4BF0-9130-68924C722680}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{4904D61A-C8E3-4B64-A9F6-948F9E4A6ED5}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{FF6165AF-9771-4B4E-9743-102E53F7BA9C}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{ADCFCE9D-6F72-40EA-BC28-E5F5021E54C6}_is1');

	//ɾ�������ڿ�������ж����ʾ
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{0F343437-42E4-4042-A8A0-33DF29715903}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{133E929D-A847-43F4-A534-4928CCB17D1A}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{6918D487-4079-4BF0-9130-68924C722680}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{4904D61A-C8E3-4B64-A9F6-948F9E4A6ED5}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{FF6165AF-9771-4B4E-9743-102E53F7BA9C}_is1');
	RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\WOW6432NODE\Microsoft\Windows\CurrentVersion\Uninstall\{ADCFCE9D-6F72-40EA-BC28-E5F5021E54C6}_is1');
end;
