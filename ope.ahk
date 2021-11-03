;;; ^ Ctrl
;;; ! Alt
;;; + Shift
;;; # winkey
;;; & used between any two keys to combine them into a custom hotkey
#InstallKeybdHook
#UseHook
;; alt+1
!1::
FormatTime, tdm, ,yyMMddHHmmss
SendInput %tdm%
return

;; shft+alt+1
+!1::
FormatTime, tdm, ,yyMMdd
SendInput %tdm%%A_DDD%.md
return

;; shift:alt+2
+!2::
FormatTime, tm, ,yyMM
FormatTime, md, ,MMdd
SendInput {#}%tm% {#}%md% {#}
return

;; shift:alt+3
+!3::
FormatTime, tmd
SendInput {#}{#} logged at %tmd%
return

!h::Send,{Left}
return
!j::Send,{Down}
return
!k::Send,{Up}
return
!l::Send,{Right}
return
!^::Send,{Home}
return
!-::Send,{End}
return
!$::Send,{End}
return
!b::Send,{PGUP}
return
!d::Send,{PGUP}
return
!f::Send,{PGDN}
return
!u::Send,{PGDN}
return


^+j::
    Input,InputChar,C I L1 T2,{Esc},x,s
    if ErrorLevel=Match
    {
        if InputChar=x
            Send,!{F4}
        if InputChar=s
            Send,^s
    }
    return

