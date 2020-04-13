SetWorkingDir,%A_ScriptFullPath%
Run,云视讯
WinActivate, ViLin ahk_class YSXForm
Sleep,8000
ImageSearch, OutputVarX, OutputVarY,0,0,500,500,*50 2.bmp
Click %OutputVarX% %OutputVarY%
Sleep,1000
ImageSearch, OutputVarX, OutputVarY,0,0,500,500,*50 1.bmp
Click %OutputVarX% %OutputVarY%
Send,{Tab}
Send, {LControl Down}
Send, {v}
Send, {LControl Up}
Send,{Enter}
Return