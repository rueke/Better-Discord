@echo off


:ThemeName
set /p ThemeName=Theme Name (NoSpaces):
set META=//META{"name":"%ThemeName%","description":"Github: https://git.io/v7ovg    |   Support Server: https://discord.gg/kWRYPrq    |  Website: https://nfld99.com/","author":"NFLD99","version":"ersion auto updates"}*//{}
set MasterCode=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Master_Code.css);
goto Animations

:Animations
set /p answer=Use Animations (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Animations=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Animations/Yes.css); & goto fonts
if /i "%answer:~,1%" EQU "N" set Animations=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Animations/No.css); & goto fonts
GOTO Animations

:fonts
set /p answer=Use Fonts (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Fonts=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Fonts/Yes.css); & goto Mini
if /i "%answer:~,1%" EQU "N" set Fonts=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Fonts/No.css); & goto Mini
GOTO Fonts

:Mini
set /p answer=Use Mini (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Minimal=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Minimal/Yes.css); & goto Settings
if /i "%answer:~,1%" EQU "N" set Minimal=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Minimal/No.css); & goto Settings
GOTO Mini

:Settings
set /p answer=Use Settings Dock Popup (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Settings=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Popup/Yes.css); & GOTO Channels
if /i "%answer:~,1%" EQU "N" set Settings=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Popup/No.css); & GOTO Channels
GOTO Settings

:Channels
set /p answer=Hide Channels (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Channels=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Channels/Yes.css); & GOTO Chat_Title_Bar
if /i "%answer:~,1%" EQU "N" set Channels=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Channels/No.css); & GOTO Chat_Title_Bar
GOTO Channels

:Chat_Title_Bar
set /p answer=Hide Chat Title Bar (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Chat_Title_Bar=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Chat_Title_Bar/Yes.css); & GOTO Guilds
if /i "%answer:~,1%" EQU "N" set Chat_Title_Bar=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Chat_Title_Bar/No.css); & GOTO Guilds
GOTO Chat_Title_Bar

:Guilds
set /p answer=Hide Guilds (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Guilds=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Guilds/Yes.css); & GOTO Invites
if /i "%answer:~,1%" EQU "N" set Guilds=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Guilds/No.css); & GOTO Invites
GOTO Guilds

:Invites
set /p answer=Hide Invites (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Invites=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Invites/Yes.css); & GOTO Members
if /i "%answer:~,1%" EQU "N" set Invites=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Invites/No.css); & GOTO Members
GOTO Invites

:Members
set /p answer=Hide Members (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Members=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Members/Yes.css); & GOTO Windows_Bar
if /i "%answer:~,1%" EQU "N" set Members=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Members/No.css); & GOTO Windows_Bar
GOTO Members

:Windows_Bar
set /p answer=Hide Windows Bar (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Windows_Bar=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Windows_Bar/Yes.css); & GOTO Offline
if /i "%answer:~,1%" EQU "N" set Windows_Bar=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Windows_Bar/No.css); & GOTO Offline
GOTO Windows_Bar

:Offline
set /p answer=Hide Offline (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Offline=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Offline/Yes.css); & GOTO Popout_Footer
if /i "%answer:~,1%" EQU "N" set Offline=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Offline/No.css); & GOTO Popout_Footer
GOTO Offline

:Popout_Footer
set /p answer=Hide Popout Footer (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Popout_Footer=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Popout_Footer/Yes.css); & GOTO Use_Transparency
if /i "%answer:~,1%" EQU "N" set Popout_Footer=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Hide/Popout_Footer/No.css); & GOTO Use_Transparency
GOTO Popout_Footer

:Use_Transparency
set /p answer=Use Transparency (Y/N)?
if /i "%answer:~,1%" EQU "Y" set Use_Transparency=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Transparency/Yes.css); & GOTO root
if /i "%answer:~,1%" EQU "N" set Use_Transparency=@import url(https://nfld99.github.io/Better-Discord/Source_Code/Use_Transparency/No.css); & GOTO root
GOTO Use_Transparency

:root
set root=:root {
Goto Main-Colour

:Main-Colour
set /p Main-Colour=Main Colour R,G,B:
set Main=  --Main-Colour: rgba(%Main-Colour%,1);
goto Background-Colour

:Background-Colour
set /p Background-Colour=Background Colour R,G,B:
set BackgroundColour=  --Background-Colour: rgba(%Background-Colour%,1);
set SColour=  --S-Colour: rgba(%Background-Colour%,.3);
set MColour=  --M-Colour: rgba(%Main-Colour%,.5);
set TextShadowColour=  --Text-Shadow-Colour: rgba(%Background-Colour%,.45);
goto Scroller

:Scroller
set /p Scroller=Scroller Visablity (0.0-1):
set Scroller-Colour=  --Scroller-Colour: rgba(%Main-Colour%,%Scroller%);
set Notification-Colour=  --Notification-Colour: rgba(%Main-Colour%,1);
goto Chat-Input-Background

:Chat-Input-Background
set /p Chat-Input-Background=Chat Input Background Transparency (0.0-1):
set ChatInputBackground=  --Chat-Input-Background: rgba(%Background-Colour%,%Chat-Input-Background%);
set ChatInputColour=  --Chat-Input-Colour: rgba(%Main-Colour%,1);
set UnreadMessage1=  --Unread-Message-1: rgba(%Main-Colour%,1);
set UnreadMessage2=  --Unread-Message-2: rgba(%Background-Colour%,1);
goto Chat-Background

:Chat-Background
set /p Chat-Background=Chat Background rgba(r,g,b,a) OR url(https://link.png) OR Transparent:
set ChatBackground=  --Chat-Background: %Chat-Background%;
goto Settings-Background

:Settings-Background
set /p Settings-Background=Settings Background rgba(r,g,b,a) OR url(https://link.png) OR Transparent:
set SettingsBackground=  --Settings-Background: %Settings-Background%;
goto Callout-Background

:Callout-Background
set /p Callout-Background=Callout Background rgba(r,g,b,a) OR url(https://link.png) OR Transparent:
set CalloutBackground=  --Callout-Background: %Callout-Background%;
goto Title-Background

:Title-Background
set /p Title-Background=Title-Background rgba(r,g,b,a) OR url(https://link.png) OR Transparent:
set TitleBackground=  --Title-Background: %Title-Background%;
set ThemeVariant=  --Theme-Variant:"%ThemeName%";
goto Chat-Font-Used

:Chat-Font-Used
set /p Chat-Font-Used=Chat Font Used (leave blank for none):
set ChatFontUsed=  --Chat-Font-Used: %Chat-Font-Used%;
goto Chat-Font-Size

:Chat-Font-Size
set /p Chat-Font-Size=Chat Font Size (in pixels, 15px is default):
set ChatFontSize=  --Chat-Font-Size: %Chat-Font-Size%px;
goto Unread-Message-Speed

:Unread-Message-Speed
set /p Unread-Message-Speed=Unread Message Speed (in Seconds):
set UnreadMessageSpeed=  --Unread-Message-Speed: %Unread-Message-Speed%s;
goto Popout-Main-Colour

:Popout-Main-Colour
set /p Popout-Main-Colour=Popout Main Colour R,G,B:
set PopoutMainColour=  --Popout-Main-Colour: rgba(%Popout-Main-Colour%,1);
goto Popout-Background

:Popout-Background
set /p Popout-Background=Popout Background rgba(r,g,b,a) OR url(https://link.png) OR Transparent:
set PopoutBackground=  --Popout-Background: %Popout-Background%;
set PopoutTextShadowColour=  --Popout-Text-Shadow-Colour: rgba(%Background-Colour%,.45);
goto Emote-Popout-Background

:Emote-Popout-Background
set /p Emote-Popout-Background=Emote Popout Background rgba(r,g,b,a) OR url(https://link.png) OR Transparent:
set EmotePopoutBackground=  --Emote-Popout-Background: %Emote-Popout-Background%;
set load1=  --load1: "Thank You!";
set load2=  --load2: "Please Enjoy!";
set load3=  --load3: "➢NFLD99";
set SettingsDockColour=  --Settings-Dock-Colour: rgba(%Main-Colour%,1);
set TimestampColour=  --Timestamp-Colour: rgba(%Main-Colour%,.5);
goto Background-Brightness

:Background-Brightness
set /p Background-Brightness=Background Brightness (0 is Transparent, 1 is Black):
set BackgroundBrightness=  --Background-Brightness: %Background-Brightness%;
goto Guild-Rows

:Guild-Rows
set /p Guild-Rows=Guild Rows:
set GuildRows=  --Guild-Rows: %Guild-Rows%;
goto Chat-Avatar-Border-Radius

:Chat-Avatar-Border-Radius
set /p Chat-Avatar-Border-Radius=Chat-Avatar-Border-Radius:
set ChatAvatarBorderRadius=  --Chat-Avatar-Border-Radius: %Chat-Avatar-Border-Radius%;
set close= }
goto Confirm

:Confirm
set /p answer=Save File? (Y/N)?
if /i "%answer:~,1%" EQU "Y" GOTO Exit
if /i "%answer:~,1%" EQU "N" GOTO Cancel

:Cancel
del %ThemeName%.theme.css
cls
echo Theme Scraped, closing window.
@TIMEOUT /T 1 > NUL
exit


:Exit

echo %META% >> %ThemeName%.theme.css

echo %MasterCode% >> %ThemeName%.theme.css

echo %Animations% >> %ThemeName%.theme.css

echo %Fonts% >> %ThemeName%.theme.css

echo %Minimal% >> %ThemeName%.theme.css

echo %Settings% >> %ThemeName%.theme.css

echo %Channels% >> %ThemeName%.theme.css

echo %Chat_Title_Bar% >> %ThemeName%.theme.css

echo %Guilds% >> %ThemeName%.theme.css

echo %Invites% >> %ThemeName%.theme.css

echo %Members% >> %ThemeName%.theme.css

echo %Windows_Bar% >> %ThemeName%.theme.css

echo %Offline% >> %ThemeName%.theme.css

echo %Popout_Footer% >> %ThemeName%.theme.css

echo %Use_Transparency% >> %ThemeName%.theme.css

echo %root% >> %ThemeName%.theme.css

echo %Main% >> %ThemeName%.theme.css

echo %BackgroundColour% >> %ThemeName%.theme.css

echo %SColour% >> %ThemeName%.theme.css

echo %MColour% >> %ThemeName%.theme.css

echo %TextShadowColour% >> %ThemeName%.theme.css

echo %Scroller-Colour% >> %ThemeName%.theme.css

echo %Notification-Colour% >> %ThemeName%.theme.css

echo %ChatInputBackground% >> %ThemeName%.theme.css

echo %ChatInputColour% >> %ThemeName%.theme.css

echo %UnreadMessage1% >> %ThemeName%.theme.css

echo %UnreadMessage2% >> %ThemeName%.theme.css

echo %ChatBackground% >> %ThemeName%.theme.css

echo %SettingsBackground% >> %ThemeName%.theme.css

echo %CalloutBackground% >> %ThemeName%.theme.css

echo %TitleBackground% >> %ThemeName%.theme.css

echo %ThemeVariant% >> %ThemeName%.theme.css

echo %ChatFontUsed% >> %ThemeName%.theme.css

echo %ChatFontSize% >> %ThemeName%.theme.css

echo %UnreadMessageSpeed% >> %ThemeName%.theme.css

echo %PopoutMainColour% >> %ThemeName%.theme.css

echo %PopoutBackground% >> %ThemeName%.theme.css

echo %PopoutTextShadowColour% >> %ThemeName%.theme.css

echo %EmotePopoutBackground% >> %ThemeName%.theme.css

echo %load1% >> %ThemeName%.theme.css

echo %load2% >> %ThemeName%.theme.css

echo %load3% >> %ThemeName%.theme.css

echo %SettingsDockColour% >> %ThemeName%.theme.css

echo %TimestampColour% >> %ThemeName%.theme.css

echo %BackgroundBrightness% >> %ThemeName%.theme.css

echo %GuildRows% >> %ThemeName%.theme.css

echo %ChatAvatarBorderRadius% >> %ThemeName%.theme.css

echo %close% >> %ThemeName%.theme.css

move %ThemeName%.theme.css %appdata%\BetterDiscord\themes
cls
echo Theme Saved and installed, closing window.
endlocal
@TIMEOUT /T 1 > NUL
exit
