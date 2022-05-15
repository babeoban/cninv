;CNINV BY CANHVJP
;ahk reset cho thể loại creative no inventory

global seed := "-576742227278694724" ; world seed, default is -576742227278694724
global runningMode := "SSG" ; SSG or RSG

TabAndWait() {

	Send {Tab}
	Sleep, 5
}

CreateWorldSSG() {

	TabAndWait()
	Send {Enter}
	TabAndWait()
	TabAndWait()
	TabAndWait()
	Send {Enter}
	TabAndWait()
	Send {Enter}
	Send {Enter}
	TabAndWait()
	Send {Enter}
	TabAndWait()
	Send {Enter}
	TabAndWait()
	TabAndWait()
	TabAndWait()
	Send {Enter}
	TabAndWait()
	TabAndWait()
	TabAndWait()
	SendInput, %seed%
	TabAndWait()
	TabAndWait()
	TabAndWait()
	TabAndWait()
	TabAndWait()
	TabAndWait()
	Send {Enter}

}
CreateWorld() {

	TabAndWait()
	Send {Enter}
	TabAndWait()
	TabAndWait()
	TabAndWait()
	Send {Enter}
	TabAndWait()
	Send {Enter}
	Send {Enter}
	TabAndWait()
	Send {Enter}
	TabAndWait()
	Send {Enter}
	TabAndWait()
	TabAndWait()
	TabAndWait()
	TabAndWait()
	Send {Enter}

}

ExitWorld()
{
   send {Esc}+{Tab}{Enter} 
}

U::
   ExitWorld()
   Sleep, 500
   if (runningMode = "RSG") {
	CreateWorld()
   } else if (runningMode = "SSG") {
	CreateWorldSSG()
   } else {
	
		MsgBox, Your running mode is invalid. Set it to either SSG or RSG at the top of ahk file.
	
	}
return

Y::
   if (runningMode = "RSG") {
	CreateWorld()
   } else if (runningMode = "SSG") {
	CreateWorldSSG()
   } else {
	
		MsgBox, Your running mode is invalid. Set it to either SSG or RSG at the top of ahk file.
	
	}