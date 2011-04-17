


IncludeFile "DShowMedia.pbi"

Global Window_Project
#ScreenWidth  = 800
#ScreenHeight = 600
#Film         = 1

Global TrameEnCours = 1

Structure strProjectConfig
  VideoFilePath.s
EndStructure

Global ProjectConfig.strProjectConfig


;{ ------ Constantes pour le pointeur de souris ------
#IDC_NO = 32648 ; curseur "interdit" (panneau d'interdiction)
#IDC_ARROW = 32512 ; la flèche (le curseur normal)
#IDC_IBEAM = 32513 ; curseur sélection de texte
#IDC_UPARROW = 32516 ; flèche qui pointe vers le haut
#IDC_APPSTARTING = 32650 ; curseur attente (flèche + sablier)
#IDC_WAIT = 32514 ; curseur occupé (sablier)
#IDC_CROSS = 32515 ; curseur précision de la sélection (croix)
#IDC_SIZENWSE = 32642 ; curseur de dimensionnment, pointe le NordOuest et le SudEst
#IDC_SIZENESW = 32643 ; curseur de dimensionnment, pointe le NE et le SO
#IDC_SIZEWE = 32644 ; curseur de dimensionnment, pointe le E et le O
#IDC_SIZENS = 32645 ; curseur de dimensionnment, pointe le N et le S
#IDC_SIZEALL = 32646 ; curseur de déplacement, pointe le N, S, E et O
#IDC_HELP = 32651 ; curseur aide
#IDC_HAND = 32649 ; curseur main
;}
Procedure SetMousePointer(IdCursor.l) ; modifie le curseur de la fenêtre en cours
  SetClassLong_(WindowID(Window_Project), #GCL_HCURSOR, LoadCursor_(0, IdCursor))
EndProcedure
Procedure ProjectConfiguration ()
  
EndProcedure
Procedure Quitter ()
  End
EndProcedure
Procedure Enregistrer ()
  
EndProcedure
Procedure EnregistrerSous ()
  
EndProcedure
Procedure Nouveau ()
  InitMouse ()
  InitSprite ()
  Window_Project = OpenWindow(#PB_Any, 494, 52, #ScreenWidth, #ScreenHeight, "Nouveau projet", #PB_Window_SystemMenu|#PB_Window_MinimizeGadget|#PB_Window_TitleBar|#PB_Window_ScreenCentered)
  OpenWindowedScreen (WindowID (Window_Project), 0, 0, WindowWidth (Window_Project), WindowHeight (Window_Project), 0,0,0)
  
  
;   File$ = "C:\Users\seb\Desktop\Films à voir\Anvil! The Story of Anvil.avi"
;   
;   
;   Global hMedia = InitMedia ()
;   If Not LoadMedia(hMedia, File$, WindowID (Window_Project), #VMR7_Windowed, #WaveOutRenderer)
;     MessageRequester ("Erreur", "Erreur !")
;   EndIf
;   
;   MediaSetWindowPosition (hmedia, 0,0, #ScreenWidth, #ScreenHeight)
;   
;   
;   ;  PlayMedia (hMedia)
;   
;   
;   MediaSetTimeFormatFrame (hMedia)
;   MediaSeek (hMedia, 1000)
;   PlayMedia (hMedia)
;   PauseMedia (hMedia)
;   
;   Select MediaGetTimeFormat (hMedia)
;     Case #Time_Format_Frame
;       Debug ("TIME FORMAT FRAME")
;     Case #Time_Format_Media_Time
;       Debug ("TIME MEDIA TIME")
;   EndSelect
  
  
  
EndProcedure
Procedure Ouvrir ()
  
EndProcedure
Procedure Debut ()
  
EndProcedure
Procedure Stop ()
  PauseMovie (1)
EndProcedure
Procedure Lecture ()
  ;PlayMovie(1,ScreenID ())
  ;PlayMedia (hMedia)
EndProcedure
Procedure Fin ()
  
EndProcedure
Procedure PreviousFrame ()
  
EndProcedure
Procedure NextFrame ()
  
  TrameEnCours = TrameEnCours + 1
  
;   PlayMovie(1,ScreenID ())
;   MovieSeek (#Film, TrameEnCours)
;   PauseMovie (#Film)
  
EndProcedure
Procedure Ligne ()
  SetMousePointer (#IDC_HAND)
EndProcedure

Procedure Window_Project_RunLoop ()
  Static inscreen.b
  Protected x.l, y.l

  
  If inscreen
      If MouseX() > #ScreenWidth Or MouseY() > #ScreenHeight Or MouseX() < 1 Or MouseY() < 1 
         ReleaseMouse(1) 
         inscreen = #False 
       Else
         
         ExamineMouse ()
         If MouseButton (#PB_MouseButton_Left)
           If StartDrawing (ScreenOutput ())
             ;Plot (MouseX (), MouseY (), RGB (255,255,255))
             Circle (MouseX (), MouseY (), 10, RGB (255,255,255))
             StopDrawing ()
           EndIf
         EndIf
         
         FlipBuffers ()
         
      EndIf  
  Else
    
    
    x = WindowMouseX (Window_Project)
    y = WindowMouseY (Window_Project)
    
    
    If x >= 0 And x < 800 And y > 0 And y < 600
      ReleaseMouse(0) 
      MouseLocate(x,y)
      inscreen = #True 
    EndIf
  EndIf

  
EndProcedure
; IDE Options = PureBasic 4.60 Beta 2 (Windows - x86)
; CursorPosition = 1
; Folding = ER9
; EnableXP