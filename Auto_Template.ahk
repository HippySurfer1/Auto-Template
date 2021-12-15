; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


F3::
Macro1:
FileDelete, C:\Format_Dread\Completed_Template.txt
FileRead, Template, C:\Format_Dread\Template.txt
Loop, 37
{
    FileReadLine, Line, C:\Format_Dread\Template_Questions.txt, %A_Index%
    InputBox, Replace, Fill out the Template, %Line%
    Template := StrReplace(Template, Line , Replace, 0, Limit:=1)
    MsgBox, 0, , %Template%
}
/*
FileAppend, %Template%, C:\Format_Dread\Completed_Template.txt
*/
Return

