EnableExplicit

IncludeFile "Funktions.pb"

;{- Enumerations / DataSections
;:PureFORM:Init:Start:
; PureFORM V1.99 ~ 14/04/2011 22:32:28
;{ Windows
Enumeration
  #Window_Main
  #Window_Tools
  #Window_ProjectConfig
EndEnumeration
;}
;{ Toolbars
Enumeration
  #Toolbar_Window_Main
EndEnumeration
;}
;{ Menu bars
Enumeration
  #Menu_Window_Main
EndEnumeration
;}
;{ Menu/Toolbar items
Enumeration
  #Menu_Window_0_Nouveau
  #Menu_Window_0_Ouvrir
  #Menu_Window_0_Enregistrer
  #Menu_Window_0_EnregistrerSous
  #Menu_Window_0_Quitter
  #Menu_Window_0_Debut
  #Menu_Window_Main_Stop
  #Menu_Window_Main_Lecture
  #Menu_Window_0_Fin
  #Menu_Window_0_ImagePrecedente
  #Menu_Window_0_ImageSuivante
  #Menu_Window_Main_Configuration
  #Toolbar_Window_Main_New
  #Toolbar_Window_Main_Save
  #Toolbar_Window_Main_Open
  #Toolbar_Window_Main_Debut
  #Toolbar_Window_Main_Stop
  #Toolbar_Window_Main_Lecture
  #Toolbar_Window_Main_Fin
  #Toolbar_Window_Main_Previous
  #Toolbar_Window_Main_Next
EndEnumeration
;}
;{ Gadgets
Enumeration
  #Button_tool_ligne
  #Button_Browse
  #Text_3
  #Text_VideoPath
  #Button_ok
  #Button_Annuler
EndEnumeration
;}
;{ Images
Enumeration
  #ToolbarImage_Window_Main_Debut_5
  #ToolbarImage_Window_Main_Stop_6
  #ToolbarImage_Window_Main_Lecture_7
  #ToolbarImage_Window_Main_Fin_8
  #ToolbarImage_Window_Main_Previous_9
  #ToolbarImage_Window_Main_Next_10
EndEnumeration
;}
;{ Included Images
DataSection
  ToolbarImage_Window_Main_Debut_5:
  IncludeBinary "Fichiers\Debut.bmp"
  ToolbarImage_Window_Main_Stop_6:
  IncludeBinary "Fichiers\Stop.bmp"
  ToolbarImage_Window_Main_Lecture_7:
  IncludeBinary "Fichiers\Lecture.bmp"
  ToolbarImage_Window_Main_Fin_8:
  IncludeBinary "Fichiers\Fin.bmp"
  ToolbarImage_Window_Main_Previous_9:
  IncludeBinary "Fichiers\Previous.bmp"
  ToolbarImage_Window_Main_Next_10:
  IncludeBinary "Fichiers\Next.bmp"
EndDataSection
;}
;:PureFORM:Init:End:
;}
;:PureFORM:Windows:Start:
;:PureFORM:Window_0_1:Start:
Procedure OpenWindow_Window_Main()
  If OpenWindow(#Window_Main, 102, 30, 227, 89, "Rotoman", #PB_Window_SystemMenu|#PB_Window_MinimizeGadget|#PB_Window_TitleBar|#PB_Window_Tool)
    If CreateMenu(#Menu_Window_Main, WindowID(#Window_Main))
      MenuTitle("Fichier")
      MenuItem(#Menu_Window_0_Nouveau, "Nouveau")
      MenuItem(#Menu_Window_0_Ouvrir, "Ouvrir")
      MenuItem(#Menu_Window_0_Enregistrer, "Enregistrer")
      MenuItem(#Menu_Window_0_EnregistrerSous, "Enregistrer sous")
      MenuItem(#Menu_Window_0_Quitter, "Quitter")
      MenuTitle("Edition")
      MenuItem(#Menu_Window_0_Debut, "Début")
      MenuItem(#Menu_Window_Main_Stop, "Stop")
      MenuItem(#Menu_Window_Main_Lecture, "Lecture")
      MenuItem(#Menu_Window_0_Fin, "Fin")
      MenuItem(#Menu_Window_0_ImagePrecedente, "Image précédente")
      MenuItem(#Menu_Window_0_ImageSuivante, "Image suivante")
      MenuTitle("Projet")
      MenuItem(#Menu_Window_Main_Configuration, "Configuration")
    EndIf
    If CreateToolBar(#Toolbar_Window_Main, WindowID(#Window_Main))
      ToolBarStandardButton(#Toolbar_Window_Main_New, #PB_ToolBarIcon_New)
      ToolBarStandardButton(#Toolbar_Window_Main_Save, #PB_ToolBarIcon_Save)
      ToolBarStandardButton(#Toolbar_Window_Main_Open, #PB_ToolBarIcon_Open)
      ToolBarSeparator()
      ToolBarImageButton(#Toolbar_Window_Main_Debut, CatchImage(#ToolbarImage_Window_Main_Debut_5, ?ToolbarImage_Window_Main_Debut_5))
      ToolBarImageButton(#Toolbar_Window_Main_Stop, CatchImage(#ToolbarImage_Window_Main_Stop_6, ?ToolbarImage_Window_Main_Stop_6))
      ToolBarImageButton(#Toolbar_Window_Main_Lecture, CatchImage(#ToolbarImage_Window_Main_Lecture_7, ?ToolbarImage_Window_Main_Lecture_7))
      ToolBarImageButton(#Toolbar_Window_Main_Fin, CatchImage(#ToolbarImage_Window_Main_Fin_8, ?ToolbarImage_Window_Main_Fin_8))
      ToolBarImageButton(#Toolbar_Window_Main_Previous, CatchImage(#ToolbarImage_Window_Main_Previous_9, ?ToolbarImage_Window_Main_Previous_9))
      ToolBarImageButton(#Toolbar_Window_Main_Next, CatchImage(#ToolbarImage_Window_Main_Next_10, ?ToolbarImage_Window_Main_Next_10))
    EndIf
    ;:PureFORM:Window_0_1:End:
    ; Your code here ...
    
    ;
    ;:PureFORM:Window_0_2:Start:
  EndIf
EndProcedure
;:PureFORM:Window_0_2:End:
;:PureFORM:Window_1_1:Start:
Procedure OpenWindow_Window_Tools()
  If OpenWindow(#Window_Tools, 76, 188, 120, 233, "Outils", #PB_Window_SystemMenu|#PB_Window_SizeGadget|#PB_Window_MinimizeGadget|#PB_Window_TitleBar|#PB_Window_Tool)
    ButtonGadget(#Button_tool_ligne, 15, 0, 70, 25, "Ligne")
    ;:PureFORM:Window_1_1:End:
    ; Your code here ...
    
    ;
    ;:PureFORM:Window_1_2:Start:
  EndIf
EndProcedure
;:PureFORM:Window_1_2:End:
;:PureFORM:Window_2_1:Start:
Procedure OpenWindow_Window_ProjectConfig()
  If OpenWindow(#Window_ProjectConfig, 454, 116, 400, 400, "Configuration du projet", #PB_Window_SizeGadget|#PB_Window_TitleBar|#PB_Window_SystemMenu)
    ButtonGadget(#Button_Browse, 275, 20, 25, 20, "...")
    TextGadget(#Text_3, 15, 20, 35, 20, "Vidéo :")
    TextGadget(#Text_VideoPath, 55, 20, 220, 20, "", #PB_Text_Border)
    ButtonGadget(#Button_ok, 50, 355, 70, 20, "OK")
    ButtonGadget(#Button_Annuler, 270, 355, 70, 20, "Annuler")
    ;:PureFORM:Window_2_1:End:
      ; Your code here ...
      DisableWindow (#Window_Main, 1)
      DisableWindow (#Window_Tools, 1)
      DisableWindow (Window_Project, 1)
      ;
    ;:PureFORM:Window_2_2:Start:
  EndIf
EndProcedure
;:PureFORM:Window_2_2:End:
;:PureFORM:Windows:End:
;
;:PureFORM:Gadgets:Start:
;:PureFORM:Gadgets:End:

OpenWindow_Window_Tools ()
OpenWindow_Window_Main()

;{- Event loop
Repeat
  Define evt.l, evtWin.l
  evt     = WaitWindowEvent ()
  evtWin  = EventWindow ()
  
  If evtWin = #Window_Main Or evtWin = #Window_Tools
    Select evt
        ; ///////////////////
      Case #PB_Event_Gadget
        Select EventGadget()
          Case #Button_tool_ligne
            Ligne ()
        EndSelect
        ; /////////////////
      Case #PB_Event_Menu
        Select EventMenu()
          Case #Menu_Window_0_Nouveau, #Toolbar_Window_Main_New
            Nouveau ()
          Case #Menu_Window_0_Ouvrir, #Toolbar_Window_Main_Open
            Ouvrir ()
          Case #Menu_Window_0_Enregistrer, #Toolbar_Window_Main_Save
            Enregistrer ()
          Case #Menu_Window_0_EnregistrerSous
            EnregistrerSous ()
          Case #Menu_Window_0_Quitter
            Quitter ()
          Case #Menu_Window_0_Debut, #Toolbar_Window_Main_Debut
            Debut ()
          Case #Menu_Window_Main_Stop, #Toolbar_Window_Main_Stop
            Stop ()
          Case #Menu_Window_Main_Lecture, #Toolbar_Window_Main_Lecture
            Lecture ()
          Case #Menu_Window_0_Fin, #Toolbar_Window_Main_Fin
            Fin ()
          Case #Menu_Window_0_ImagePrecedente, #Toolbar_Window_Main_Previous
            PreviousFrame ()
          Case #Menu_Window_0_ImageSuivante, #Toolbar_Window_Main_Next
            NextFrame ()
          Case #Menu_Window_Main_Configuration
            OpenWindow_Window_ProjectConfig ()
        EndSelect
        ; ////////////////////////
        
      Case #PB_Event_CloseWindow
        Select evtWin
          Case #Window_Main
            Quitter ()
            Break
          Case #Window_Tools
            Quitter ()
        EndSelect
    EndSelect
  ElseIf evtWin = #Window_ProjectConfig
    Select evt
      Case #PB_Event_Gadget
        Select EventGadget ()
          Case #Button_Browse
            ProjectConfig\VideoFilePath = OpenFileRequester("Sélectionnez une vidéo", "", "Vidéos|*.avi", 0)
            SetGadgetText (#Text_VideoPath, ProjectConfig\VideoFilePath)
            
            Debug (ProjectConfig\VideoFilePath)

          Case #Button_ok
          Case #Button_Annuler
            Goto CloseConfig ;beurk
        EndSelect
        
        
      Case #PB_Event_CloseWindow
        CloseConfig:
        CloseWindow (#Window_ProjectConfig)
        DisableWindow (#Window_Main, 0)
        DisableWindow (#Window_Tools, 0)
        DisableWindow (Window_Project, 0)
        
    EndSelect
    
  ElseIf evtWin = Window_Project
    Window_Project_RunLoop ()
  EndIf
ForEver
;
;}
;:PureFORM:AfterLoop:Start:
;:PureFORM:AfterLoop:End:

; IDE Options = PureBasic 4.60 Beta 2 (Windows - x86)
; CursorPosition = 225
; FirstLine = 143
; Folding = -z-
; EnableXP