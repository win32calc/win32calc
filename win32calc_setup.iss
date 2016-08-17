#define AppName "Calculator"
#define AppExeName "win32calc.exe"
#define SourceDir "Source\"
#define ShortcutFilename "Calculator.lnk"
#define ShortcutDestDir "{commonstartmenu}\Programs\Accessories"

#define GetResourceDir(str Arch, str LangTag) \
  LangTag = StringChange(LangTag, "Latn", ".."), \
  SourceDir + \
  FindGetFileName( FindFirst( SourceDir + Arch + \
                              "_microsoft-windows-win32calc" + \
                              (LangTag == "none" ? "" : ".resources") + \
                              "*" + LangTag + "*", \
                              faDirectory ) ) + "\"

#define GetAppPath(str Arch) \
  Arch = StringChange(Arch, "x86", "wow64"), \
  GetResourceDir(Arch, "none" ) + AppExeName

#define GetMUIPath(str Arch, str LangTag) \
  GetResourceDir(Arch, LangTag) + AppExeName + ".mui"

#define GetShortcutPath \
  GetResourceDir("amd64", "none") + ShortcutFilename

#define AppVersion GetFileVersion( GetAppPath('amd64') )

[Setup]
AppId={{FC211C17-798B-4E74-BE2D-D179B0FC316A}
AppName={#AppName}
AppVersion={#AppVersion}
AppUpdatesURL=https://github.com/win32calc/win32calc
CreateAppDir=no
OutputBaseFilename=win32calc_setup
Compression=lzma/max
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
OutputDir=Output\{#AppVersion}
WizardSmallImageFile=win32calc_setup.bmp
WizardImageAlphaFormat=premultiplied
SetupIconFile=win32calc_setup.ico
UninstallDisplayIcon={sys}\{#AppExeName}
UninstallDisplayName={#AppName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.islu"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Files]
Source: "{#GetAppPath('amd64')}"; DestDir: "{sys}"; Check: Is64BitInstallMode
Source: "{#GetMUIPath('amd64', 'ar-SA')}"; DestDir: "{sys}\ar-SA"; Check: Is64BitInstallMode and IsInstalledLanguage('ar-SA')
Source: "{#GetMUIPath('amd64', 'bg-BG')}"; DestDir: "{sys}\bg-BG"; Check: Is64BitInstallMode and IsInstalledLanguage('bg-BG')
Source: "{#GetMUIPath('amd64', 'zh-CN')}"; DestDir: "{sys}\zh-CN"; Check: Is64BitInstallMode and IsInstalledLanguage('zh-CN')
Source: "{#GetMUIPath('amd64', 'zh-TW')}"; DestDir: "{sys}\zh-TW"; Check: Is64BitInstallMode and IsInstalledLanguage('zh-TW')
Source: "{#GetMUIPath('amd64', 'hr-HR')}"; DestDir: "{sys}\hr-HR"; Check: Is64BitInstallMode and IsInstalledLanguage('hr-HR')
Source: "{#GetMUIPath('amd64', 'cs-CZ')}"; DestDir: "{sys}\cs-CZ"; Check: Is64BitInstallMode and IsInstalledLanguage('cs-CZ')
Source: "{#GetMUIPath('amd64', 'da-DK')}"; DestDir: "{sys}\da-DK"; Check: Is64BitInstallMode and IsInstalledLanguage('da-DK')
Source: "{#GetMUIPath('amd64', 'nl-NL')}"; DestDir: "{sys}\nl-NL"; Check: Is64BitInstallMode and IsInstalledLanguage('nl-NL')
Source: "{#GetMUIPath('amd64', 'en-US')}"; DestDir: "{sys}\en-US"; Check: Is64BitInstallMode and IsInstalledLanguage('en-US')
Source: "{#GetMUIPath('amd64', 'en-GB')}"; DestDir: "{sys}\en-GB"; Check: Is64BitInstallMode and IsInstalledLanguage('en-GB')
Source: "{#GetMUIPath('amd64', 'et-EE')}"; DestDir: "{sys}\et-EE"; Check: Is64BitInstallMode and IsInstalledLanguage('et-EE')
Source: "{#GetMUIPath('amd64', 'fi-FI')}"; DestDir: "{sys}\fi-FI"; Check: Is64BitInstallMode and IsInstalledLanguage('fi-FI')
Source: "{#GetMUIPath('amd64', 'fr-CA')}"; DestDir: "{sys}\fr-CA"; Check: Is64BitInstallMode and IsInstalledLanguage('fr-CA')
Source: "{#GetMUIPath('amd64', 'fr-FR')}"; DestDir: "{sys}\fr-FR"; Check: Is64BitInstallMode and IsInstalledLanguage('fr-FR')
Source: "{#GetMUIPath('amd64', 'de-DE')}"; DestDir: "{sys}\de-DE"; Check: Is64BitInstallMode and IsInstalledLanguage('de-DE')
Source: "{#GetMUIPath('amd64', 'el-GR')}"; DestDir: "{sys}\el-GR"; Check: Is64BitInstallMode and IsInstalledLanguage('el-GR')
Source: "{#GetMUIPath('amd64', 'he-IL')}"; DestDir: "{sys}\he-IL"; Check: Is64BitInstallMode and IsInstalledLanguage('he-IL')
Source: "{#GetMUIPath('amd64', 'hu-HU')}"; DestDir: "{sys}\hu-HU"; Check: Is64BitInstallMode and IsInstalledLanguage('hu-HU')
Source: "{#GetMUIPath('amd64', 'it-IT')}"; DestDir: "{sys}\it-IT"; Check: Is64BitInstallMode and IsInstalledLanguage('it-IT')
Source: "{#GetMUIPath('amd64', 'ja-JP')}"; DestDir: "{sys}\ja-JP"; Check: Is64BitInstallMode and IsInstalledLanguage('ja-JP')
Source: "{#GetMUIPath('amd64', 'ko-KR')}"; DestDir: "{sys}\ko-KR"; Check: Is64BitInstallMode and IsInstalledLanguage('ko-KR')
Source: "{#GetMUIPath('amd64', 'lv-LV')}"; DestDir: "{sys}\lv-LV"; Check: Is64BitInstallMode and IsInstalledLanguage('lv-LV')
Source: "{#GetMUIPath('amd64', 'lt-LT')}"; DestDir: "{sys}\lt-LT"; Check: Is64BitInstallMode and IsInstalledLanguage('lt-LT')
Source: "{#GetMUIPath('amd64', 'nb-NO')}"; DestDir: "{sys}\nb-NO"; Check: Is64BitInstallMode and IsInstalledLanguage('nb-NO')
Source: "{#GetMUIPath('amd64', 'pl-PL')}"; DestDir: "{sys}\pl-PL"; Check: Is64BitInstallMode and IsInstalledLanguage('pl-PL')
Source: "{#GetMUIPath('amd64', 'pt-BR')}"; DestDir: "{sys}\pt-BR"; Check: Is64BitInstallMode and IsInstalledLanguage('pt-BR')
Source: "{#GetMUIPath('amd64', 'pt-PT')}"; DestDir: "{sys}\pt-PT"; Check: Is64BitInstallMode and IsInstalledLanguage('pt-PT')
Source: "{#GetMUIPath('amd64', 'ro-RO')}"; DestDir: "{sys}\ro-RO"; Check: Is64BitInstallMode and IsInstalledLanguage('ro-RO')
Source: "{#GetMUIPath('amd64', 'ru-RU')}"; DestDir: "{sys}\ru-RU"; Check: Is64BitInstallMode and IsInstalledLanguage('ru-RU')
Source: "{#GetMUIPath('amd64', 'sr-Latn-RS')}"; DestDir: "{sys}\sr-Latn-RS"; Check: Is64BitInstallMode and IsInstalledLanguage('sr-Latn-RS')
Source: "{#GetMUIPath('amd64', 'sk-SK')}"; DestDir: "{sys}\sk-SK"; Check: Is64BitInstallMode and IsInstalledLanguage('sk-SK')
Source: "{#GetMUIPath('amd64', 'sl-SI')}"; DestDir: "{sys}\sl-SI"; Check: Is64BitInstallMode and IsInstalledLanguage('sl-SI')
Source: "{#GetMUIPath('amd64', 'es-MX')}"; DestDir: "{sys}\es-MX"; Check: Is64BitInstallMode and IsInstalledLanguage('es-MX')
Source: "{#GetMUIPath('amd64', 'es-ES')}"; DestDir: "{sys}\es-ES"; Check: Is64BitInstallMode and IsInstalledLanguage('es-ES')
Source: "{#GetMUIPath('amd64', 'sv-SE')}"; DestDir: "{sys}\sv-SE"; Check: Is64BitInstallMode and IsInstalledLanguage('sv-SE')
Source: "{#GetMUIPath('amd64', 'th-TH')}"; DestDir: "{sys}\th-TH"; Check: Is64BitInstallMode and IsInstalledLanguage('th-TH')
Source: "{#GetMUIPath('amd64', 'tr-TR')}"; DestDir: "{sys}\tr-TR"; Check: Is64BitInstallMode and IsInstalledLanguage('tr-TR')
Source: "{#GetMUIPath('amd64', 'uk-UA')}"; DestDir: "{sys}\uk-UA"; Check: Is64BitInstallMode and IsInstalledLanguage('uk-UA')

Source: "{#GetAppPath('x86')}"; DestDir: "{syswow64}"
Source: "{#GetMUIPath('x86', 'ar-SA')}"; DestDir: "{syswow64}\ar-SA"; Check: IsInstalledLanguage('ar-SA')
Source: "{#GetMUIPath('x86', 'bg-BG')}"; DestDir: "{syswow64}\bg-BG"; Check: IsInstalledLanguage('bg-BG')
Source: "{#GetMUIPath('x86', 'zh-CN')}"; DestDir: "{syswow64}\zh-CN"; Check: IsInstalledLanguage('zh-CN')
Source: "{#GetMUIPath('x86', 'zh-TW')}"; DestDir: "{syswow64}\zh-TW"; Check: IsInstalledLanguage('zh-TW')
Source: "{#GetMUIPath('x86', 'hr-HR')}"; DestDir: "{syswow64}\hr-HR"; Check: IsInstalledLanguage('hr-HR')
Source: "{#GetMUIPath('x86', 'cs-CZ')}"; DestDir: "{syswow64}\cs-CZ"; Check: IsInstalledLanguage('cs-CZ')
Source: "{#GetMUIPath('x86', 'da-DK')}"; DestDir: "{syswow64}\da-DK"; Check: IsInstalledLanguage('da-DK')
Source: "{#GetMUIPath('x86', 'nl-NL')}"; DestDir: "{syswow64}\nl-NL"; Check: IsInstalledLanguage('nl-NL')
Source: "{#GetMUIPath('x86', 'en-US')}"; DestDir: "{syswow64}\en-US"; Check: IsInstalledLanguage('en-US')
Source: "{#GetMUIPath('x86', 'en-GB')}"; DestDir: "{syswow64}\en-GB"; Check: IsInstalledLanguage('en-GB')
Source: "{#GetMUIPath('x86', 'et-EE')}"; DestDir: "{syswow64}\et-EE"; Check: IsInstalledLanguage('et-EE')
Source: "{#GetMUIPath('x86', 'fi-FI')}"; DestDir: "{syswow64}\fi-FI"; Check: IsInstalledLanguage('fi-FI')
Source: "{#GetMUIPath('x86', 'fr-CA')}"; DestDir: "{syswow64}\fr-CA"; Check: IsInstalledLanguage('fr-CA')
Source: "{#GetMUIPath('x86', 'fr-FR')}"; DestDir: "{syswow64}\fr-FR"; Check: IsInstalledLanguage('fr-FR')
Source: "{#GetMUIPath('x86', 'de-DE')}"; DestDir: "{syswow64}\de-DE"; Check: IsInstalledLanguage('de-DE')
Source: "{#GetMUIPath('x86', 'el-GR')}"; DestDir: "{syswow64}\el-GR"; Check: IsInstalledLanguage('el-GR')
Source: "{#GetMUIPath('x86', 'he-IL')}"; DestDir: "{syswow64}\he-IL"; Check: IsInstalledLanguage('he-IL')
Source: "{#GetMUIPath('x86', 'hu-HU')}"; DestDir: "{syswow64}\hu-HU"; Check: IsInstalledLanguage('hu-HU')
Source: "{#GetMUIPath('x86', 'it-IT')}"; DestDir: "{syswow64}\it-IT"; Check: IsInstalledLanguage('it-IT')
Source: "{#GetMUIPath('x86', 'ja-JP')}"; DestDir: "{syswow64}\ja-JP"; Check: IsInstalledLanguage('ja-JP')
Source: "{#GetMUIPath('x86', 'ko-KR')}"; DestDir: "{syswow64}\ko-KR"; Check: IsInstalledLanguage('ko-KR')
Source: "{#GetMUIPath('x86', 'lv-LV')}"; DestDir: "{syswow64}\lv-LV"; Check: IsInstalledLanguage('lv-LV')
Source: "{#GetMUIPath('x86', 'lt-LT')}"; DestDir: "{syswow64}\lt-LT"; Check: IsInstalledLanguage('lt-LT')
Source: "{#GetMUIPath('x86', 'nb-NO')}"; DestDir: "{syswow64}\nb-NO"; Check: IsInstalledLanguage('nb-NO')
Source: "{#GetMUIPath('x86', 'pl-PL')}"; DestDir: "{syswow64}\pl-PL"; Check: IsInstalledLanguage('pl-PL')
Source: "{#GetMUIPath('x86', 'pt-BR')}"; DestDir: "{syswow64}\pt-BR"; Check: IsInstalledLanguage('pt-BR')
Source: "{#GetMUIPath('x86', 'pt-PT')}"; DestDir: "{syswow64}\pt-PT"; Check: IsInstalledLanguage('pt-PT')
Source: "{#GetMUIPath('x86', 'ro-RO')}"; DestDir: "{syswow64}\ro-RO"; Check: IsInstalledLanguage('ro-RO')
Source: "{#GetMUIPath('x86', 'ru-RU')}"; DestDir: "{syswow64}\ru-RU"; Check: IsInstalledLanguage('ru-RU')
Source: "{#GetMUIPath('x86', 'sr-Latn-RS')}"; DestDir: "{syswow64}\sr-Latn-RS"; Check: IsInstalledLanguage('sr-Latn-RS')
Source: "{#GetMUIPath('x86', 'sk-SK')}"; DestDir: "{syswow64}\sk-SK"; Check: IsInstalledLanguage('sk-SK')
Source: "{#GetMUIPath('x86', 'sl-SI')}"; DestDir: "{syswow64}\sl-SI"; Check: IsInstalledLanguage('sl-SI')
Source: "{#GetMUIPath('x86', 'es-MX')}"; DestDir: "{syswow64}\es-MX"; Check: IsInstalledLanguage('es-MX')
Source: "{#GetMUIPath('x86', 'es-ES')}"; DestDir: "{syswow64}\es-ES"; Check: IsInstalledLanguage('es-ES')
Source: "{#GetMUIPath('x86', 'sv-SE')}"; DestDir: "{syswow64}\sv-SE"; Check: IsInstalledLanguage('sv-SE')
Source: "{#GetMUIPath('x86', 'th-TH')}"; DestDir: "{syswow64}\th-TH"; Check: IsInstalledLanguage('th-TH')
Source: "{#GetMUIPath('x86', 'tr-TR')}"; DestDir: "{syswow64}\tr-TR"; Check: IsInstalledLanguage('tr-TR')
Source: "{#GetMUIPath('x86', 'uk-UA')}"; DestDir: "{syswow64}\uk-UA"; Check: IsInstalledLanguage('uk-UA')

Source: {#GetShortcutPath}; DestDir: "{#ShortcutDestDir}"; AfterInstall: MakeShortcutLocalizedName

[Code]
function
  GetUILanguageInfo( dwFlags: Word;
                     pwmszLanguage,
                     pwszFallbackLanguages: String;
                     pcchFallbackLanguages: Word;
                     var pdwAttributes: Word ): Boolean;
external 'GetUILanguageInfo@kernel32.dll';

function IsInstalledLanguage(LangTag: String): Boolean;
var
  pdwAttributes: Word;
begin
  if GetUILanguageInfo(8, LangTag + #0, '', 0, pdwAttributes)
  then Result := True
  else Result := False;
end;

function GetDesktopIniPath: String;
begin
  Result := ExpandConstant('{#ShortcutDestDir}\desktop.ini');
end;

procedure MakeShortcutLocalizedName;
begin
  if not
    SetIniString( 'LocalizedFileNames',
                  '{#ShortcutFilename}',
                  '@%SystemRoot%\system32\{#AppExeName},-217',
                  GetDesktopIniPath )
  then
    MsgBox('"SetIniString" error (' + GetDesktopIniPath + ').', mbError, MB_OK);
end;

procedure UnmakeShortcutLocalizedName;
begin
  DeleteIniEntry('LocalizedFileNames', '{#ShortcutFilename}', GetDesktopIniPath);
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usPostUninstall then UnmakeShortcutLocalizedName;
end;
