; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SockFTP"
#define MyAppVersion "1.0"
#define MyAppPublisher "sfia.andreidaniel@gmail.com"
#define MyAppURL "https://github.com/sfia-andreidaniel/sockftp"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{70EE2255-26A3-452F-A5BF-C6840D95BDA5}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=C:\Users\andrei\Desktop\sockftp\install\LICENSE.TXT
;InfoBeforeFile=C:\Users\andrei\Desktop\sockftp\LICENSE.TXT
InfoAfterFile=C:\Users\andrei\Desktop\sockftp\install\README.TXT
OutputDir=C:\Users\andrei\Desktop\sockftp\install
OutputBaseFilename=setup-sockftpd
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\andrei\Desktop\sockftp\sockftpd.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\andrei\Desktop\sockftp\sockftpd.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\andrei\Desktop\sockftp\libmysql.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\andrei\Desktop\sockftp\mime.types"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\andrei\Desktop\sockftp\README.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\andrei\Desktop\sockftp\srvstart.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\andrei\Desktop\sockftp\srvstart.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\andrei\Desktop\sockftp\logger.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\andrei\Desktop\sockftp\sockftpdctl.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Dirs]
Name: "C:\srv\ftp"

[Run]
Filename: "{app}\sockftpd.ini"; Description: "Edit the sockftpd.ini file"; Flags: postinstall shellexec skipifsilent unchecked