SetWorkingDir,%A_ScriptFullPath%
WinActivate,  ahk_class Shell_TrayWnd
Click, 1118, 748
Sleep,3000
WinActivate, QQ ahk_class TXGuiFoundation
Click, 97, 213
Sleep,50
Click, 97, 213
Sleep,3000
WinActivate, 有福同享 有难退群 ahk_class TXGuiFoundation
Sleep,3000
Send, {LControl Down}
Send, {v}
Send, {LControl Up}
Send, {Enter}
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