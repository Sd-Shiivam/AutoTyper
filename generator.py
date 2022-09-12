import os
normal_text=['q',' ' ,'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'z', 'x', 'c', 'v', 'b', 'n', 'm', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0','Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M']
special_text1={'[':"chr(91)", 
              '@':"chr(64)", 
              '_':"chr(95)", 
              '!':"chr(33)", 
              '#':"chr(35)", 
              '$':"chr(36)",
              '*':"chr(42)", 
              '<':"chr(60)", 
              '>':"chr(62)", 
              '?':"chr(63)", 
              ':':"chr(58)", 
              ']':"chr(93)", 
              '=':"chr(61)", 
              "'":"chr(39)"}

special_text2={ 
              '%':"{%}",
              '+':"{+}",
              '"':'{""}',
              ',':'{,}',
              '.':'{.'+'}',
              '^':"{^}", 
              '&':"{&}",
              '(':"{(}", 
              ')':"{)}",
              '/':"{/}", 
              '\\':"{\\}", 
              '|':"{|}", 
              '{': str("{{"+"}"), 
              '}':str("{"+"}}"), 
              '~':"{~}", 
}

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
            # print(i)
            # word += i
            body += f'master.sendkeys "{i}"'+'\n'
        else:
            pass
            # print(word)
            # body += f'master.sendkeys "{word}"'+'\n'
        for sp in special_text1:
            if sp == i:
                new=special_text1[sp] 
                body += f'master.sendkeys {new}'+'\n'
        for sp2 in special_text2:
            if sp2 == i:
                new2=special_text2[sp2] 
                body += f'master.sendkeys "{new2}"'+'\n'
        

    body += "\nwscript.sleep 300\n"
    body += 'master.sendkeys "{Enter'+'}"'+'\n'
    word =''' '''


footer='''\n
master.sendkeys "^{w}"
wscript.sleep 300
master.sendkeys "{Enter'''+'''}"
wscript.sleep 300
master.sendkeys "Code.txt"
master.sendkeys "{Enter'''+'''}"
master.sendkeys "{Tab"+"}"
master.sendkeys "{Enter'''+'''}"
wscript.sleep 300
'''
m = str(head)+str(body) + str(footer)
file = open('main.vbs', 'w')
file.write(m)
file.close()
