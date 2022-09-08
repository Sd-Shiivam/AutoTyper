import os
code = '''
 ok
 hello
 '''
listcode = code.splitlines()

head = '''
set master = wscript.CreateObject("WScript.Shell")
master.run "notepad"
'''
body = ''' '''
for l in listcode:
    s1 = '''
        wscript.sleep 1000
        master.sendkeys "'''+str(l)+'''"
        master.sendkeys "{Enter}"'''

    body = str(body) + "\n" + str(s1)

m = str(head)+str(body)
file = open('main.vbs', 'w')
file.write(m)
file.close()
