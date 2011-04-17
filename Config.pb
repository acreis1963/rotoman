;{- Enumerations / DataSections
;:PureFORM:Init:Start:
; PureFORM V1.99 ~ 14/04/2011 22:14:01
;{ Windows
Enumeration
  #Window_ProjectConfig
EndEnumeration
;}
;{ Gadgets
Enumeration
  #Text_VideoPath
  #Button_2
  #Text_3
  #Button_ok
  #Button_Annuler
EndEnumeration
;}
;:PureFORM:Init:End:
;}
;:PureFORM:Windows:Start:
;:PureFORM:Window_0_1:Start:
Procedure OpenWindow_Window_ProjectConfig()
  If OpenWindow(#Window_ProjectConfig, 565, 114, 322, 400, "Configuration du projet", #PB_Window_SizeGadget|#PB_Window_TitleBar|#PB_Window_SystemMenu)
    TextGadget(#Text_VideoPath, 65, 20, 195, 20, "", #PB_Text_Border)
    ButtonGadget(#Button_2, 260, 20, 35, 20, "...")
    TextGadget(#Text_3, 20, 20, 45, 20, "Vidéo :")
    ButtonGadget(#Button_ok, 35, 360, 60, 25, "OK")
    ButtonGadget(#Button_Annuler, 225, 360, 55, 25, "Annuler")
    ;:PureFORM:Window_0_1:End:
    ; Your code here ...
    
    ;
    ;:PureFORM:Window_0_2:Start:
  EndIf
EndProcedure
;:PureFORM:Window_0_2:End:
;:PureFORM:Windows:End:
;
;:PureFORM:Gadgets:Start:
;:PureFORM:Gadgets:End:

OpenWindow_Window_0()
;:PureFORM:Main:Start:
;:PureFORM:Main:End:

;{- Event loop
Repeat
  ;:PureFORM:Loop:Start:
  Select WaitWindowEvent()
    ; ///////////////////
    Case #PB_Event_Gadget
      Select EventGadget()
        Case #Button_2
        Case #Button_ok
        Case #Button_Annuler
      EndSelect
    ; ////////////////////////
    Case #PB_Event_CloseWindow
      Select EventWindow()
        Case #Window_ProjectConfig
          CloseWindow(#Window_ProjectConfig)
          Break
      EndSelect
  EndSelect
  ;:PureFORM:Loop:End:
Forever
;
;}
;:PureFORM:AfterLoop:Start:
;:PureFORM:AfterLoop:End:
