import os
normal_text=['q',' ' ,'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'z', 'x', 'c', 'v', 'b', 'n', 'm', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0','Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M']
special_text=['[', '@', '_', '!', '#', '$', '%', '^', '&', '*', '(', ')', '<', '>', '?', '/', '\\', '|', '{', '}', '~', ':', ']']
f1=open('data.txt','r')
code=f1.read()
listcode = code.splitlines()

head = '''
set master = wscript.CreateObject("WScript.Shell")
master.run "notepad"
'''
body = '''
    wscript.sleep 300
    '''
for l in listcode:
    word=''''''
    for i in l: 
        if i in normal_text:
            word += i
        else:
            body += f'master.sendkeys "{word}"'+'\n'
            word=''''''
        if i in special_text:
            if '(' == str(i) :
                body += 'master.sendkeys "{(}"'+'\n'
            elif ')' == str(i):
                body += 'master.sendkeys "{)}"'+'\n'
            elif '+' == str(i):
                body += 'master.sendkeys "{+}"'+'\n'
            elif ':' == str(i):
                body += 'master.sendkeys "{:}"'+'\n'
            elif ',' == str(i):
                body += 'master.sendkeys "{,}"'+'\n'
            elif '=' == str(i):
                body += 'master.sendkeys "{=}"'+'\n'
            elif '"'+'\n' == str(i):
                body += '''master.sendkeys "{'}"'+'\n'''
            elif '[' == str(i):
                body += 'master.sendkeys "{['+'}"'+'\n'
            elif ']' == str(i):
                body += 'master.sendkeys "{]'+'}"'+'\n'
            elif '*' == str(i):
                body += 'master.sendkeys "{*}"'+'\n'
            elif '-' == str(i):
                body += 'master.sendkeys "{-}"'+'\n'
            elif '\\' == str(i):
                body += 'master.sendkeys "{\\}"'+'\n'
            elif '/' == str(i):
                body += 'master.sendkeys "{/}"'+'\n'
            elif '#' == str(i):
                body += 'master.sendkeys "{#}"'+'\n'
            elif '_' == str(i):
                body += 'master.sendkeys "{_'+'}"'+'\n'
            elif '<' == str(i):
                body += 'master.sendkeys "{<}"'+'\n'
            elif '>' == str(i):
                body += 'master.sendkeys "{>}"'+'\n'

    body += "\nwscript.sleep 300\n"
    body += 'master.sendkeys "{Enter'+'}"'+'\n'
    word =''' '''

m = str(head)+str(body)
# print(m)
file = open('main.vbs', 'w')
file.write(m)
file.close()
