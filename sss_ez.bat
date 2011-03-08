CHOICE  /C "SG" /D S /M "SOFT or GL" /T 5
GOTO %ERRORLEVEL%

:2
start ezquake-gl.exe -dinput -m_smooth -bpp 32 -width 1024 -height 600 -freq 60 -conwidth 256 -conheight 150 -userdir sss 4 +exec settings.cfg %1 %2 %3 %4 %5
GOTO END

:1
echo soft
start ezquake.exe -dinput -m_smooth -userdir sss 4 +exec settings.cfg %1 %2 %3 %4 %5

:END
