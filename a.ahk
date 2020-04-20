SetWorkingDir,%A_ScriptFullPath%
Send,^!z
Sleep,2000
WinActivate, QQ ahk_class TXGuiFoundation
Click, 97, 213
Sleep,50
Click, 97, 213
Sleep,2000
WinActivate, 有福同享 有难退群 ahk_class TXGuiFoundation
Sleep,2000
Send, ^v
Send, {Enter}
Sleep,1000
Send,{Esc}
Send,!{F4}
Run,云视讯
WinActivate, ViLin ahk_class YSXForm
Sleep,5000
ImageSearch, OutputVarX, OutputVarY,0,0,500,500,*50 2.bmp
Click %OutputVarX% %OutputVarY%
Sleep,1000
ImageSearch, OutputVarX, OutputVarY,0,0,500,500,*50 1.bmp
Click %OutputVarX% %OutputVarY%
Sleep,1000
Send,{Tab}
Send, ^v
Send,{Enter}
Return