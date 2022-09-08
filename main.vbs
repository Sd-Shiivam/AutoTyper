
set master = wscript.CreateObject("WScript.Shell")
master.run "notepad"
 

        wscript.sleep 1000
        master.sendkeys ""

        wscript.sleep 1000
        master.sendkeys " ok"

        wscript.sleep 1000
        master.sendkeys " hello"

        wscript.sleep 1000
        master.sendkeys " "