
set master = wscript.CreateObject("WScript.Shell")
master.run "notepad"

    wscript.sleep 300
    
wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "def find"
master.sendkeys "{_}"
master.sendkeys "package"
master.sendkeys "{_}"
master.sendkeys "data"
master.sendkeys "{(}"
master.sendkeys "base"
master.sendkeys " globs"
master.sendkeys " root"
master.sendkeys ""
master.sendkeys "mypy"
master.sendkeys ""
master.sendkeys "{)}"
master.sendkeys ""
master.sendkeys "{:}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "    "
master.sendkeys ""
master.sendkeys ""
master.sendkeys "Find all interesting data files"
master.sendkeys " for setup"
master.sendkeys "{(}"
master.sendkeys "package"
master.sendkeys "{_}"
master.sendkeys "data"
master.sendkeys ""
master.sendkeys "{)}"

wscript.sleep 300
master.sendkeys "{Enter}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "    Arguments"
master.sendkeys "{:}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "      root"
master.sendkeys "{:}"
master.sendkeys "  The directory to search in"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "      globs"
master.sendkeys "{:}"
master.sendkeys " A list of glob patterns to accept files"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "    "
master.sendkeys ""
master.sendkeys ""

wscript.sleep 300
master.sendkeys "{Enter}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "    rv"
master.sendkeys "{_}"
master.sendkeys "dirs "
master.sendkeys " "
master.sendkeys "{[}"
master.sendkeys "root for root"
master.sendkeys " dirs"
master.sendkeys " files in os"
master.sendkeys "walk"
master.sendkeys "{(}"
master.sendkeys "base"
master.sendkeys "{)}"
master.sendkeys ""
master.sendkeys "{]}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "    rv "
master.sendkeys " "
master.sendkeys "{[}"
master.sendkeys ""
master.sendkeys "{]}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "    for rv"
master.sendkeys "{_}"
master.sendkeys "dir in rv"
master.sendkeys "{_}"
master.sendkeys "dirs"
master.sendkeys "{:}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "        files "
master.sendkeys " "
master.sendkeys "{[}"
master.sendkeys ""
master.sendkeys "{]}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "        for pat in globs"
master.sendkeys "{:}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "            files "
master.sendkeys ""
master.sendkeys " glob"
master.sendkeys "glob"
master.sendkeys "{(}"
master.sendkeys "os"
master.sendkeys "path"
master.sendkeys "join"
master.sendkeys "{(}"
master.sendkeys "rv"
master.sendkeys "{_}"
master.sendkeys "dir"
master.sendkeys " pat"
master.sendkeys "{)}"
master.sendkeys ""
master.sendkeys "{)}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "        if not files"
master.sendkeys "{:}"

wscript.sleep 300
master.sendkeys "{Enter}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "        rv"
master.sendkeys "extend"
master.sendkeys "{(}"
master.sendkeys ""
master.sendkeys "{[}"
master.sendkeys "os"
master.sendkeys "path"
master.sendkeys "relpath"
master.sendkeys "{(}"
master.sendkeys "f"
master.sendkeys " root"
master.sendkeys "{)}"
master.sendkeys " for f in files"
master.sendkeys "{]}"
master.sendkeys ""
master.sendkeys "{)}"

wscript.sleep 300
master.sendkeys "{Enter}"

wscript.sleep 300
master.sendkeys "{Enter}"

wscript.sleep 300
master.sendkeys "{Enter}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "class CustomPythonBuild"
master.sendkeys "{(}"
master.sendkeys "build"
master.sendkeys "{_}"
master.sendkeys "py"
master.sendkeys "{)}"
master.sendkeys ""
master.sendkeys "{:}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "    def pin"
master.sendkeys "{_}"
master.sendkeys "version"
master.sendkeys "{(}"
master.sendkeys "self"
master.sendkeys "{)}"
master.sendkeys ""
master.sendkeys "{:}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "        path "
master.sendkeys " os"
master.sendkeys "path"
master.sendkeys "join"
master.sendkeys "{(}"
master.sendkeys "self"
master.sendkeys "build"
master.sendkeys "{_}"
master.sendkeys "lib"
master.sendkeys " "
master.sendkeys "mypy"
master.sendkeys ""
master.sendkeys "{)}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "        self"
master.sendkeys "mkpath"
master.sendkeys "{(}"
master.sendkeys "path"
master.sendkeys "{)}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "        with open"
master.sendkeys "{(}"
master.sendkeys "os"
master.sendkeys "path"
master.sendkeys "join"
master.sendkeys "{(}"
master.sendkeys "path"
master.sendkeys " "
master.sendkeys "version"
master.sendkeys "py"
master.sendkeys ""
master.sendkeys "{)}"
master.sendkeys ""
master.sendkeys " "
master.sendkeys "w"
master.sendkeys ""
master.sendkeys "{)}"
master.sendkeys " as stream"
master.sendkeys "{:}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "            stream"
master.sendkeys "write"
master.sendkeys "{(}"
master.sendkeys "f"
master.sendkeys ""
master.sendkeys "{_}"
master.sendkeys ""
master.sendkeys "{_}"
master.sendkeys "version"
master.sendkeys "{_}"
master.sendkeys ""
master.sendkeys "{_}"
master.sendkeys " "
master.sendkeys " "
master.sendkeys ""
master.sendkeys "version"
master.sendkeys ""
master.sendkeys ""
master.sendkeys "{\}"
master.sendkeys "n"
master.sendkeys ""
master.sendkeys "{)}"

wscript.sleep 300
master.sendkeys "{Enter}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "    def run"
master.sendkeys "{(}"
master.sendkeys "self"
master.sendkeys "{)}"
master.sendkeys ""
master.sendkeys "{:}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "        self"
master.sendkeys "execute"
master.sendkeys "{(}"
master.sendkeys "self"
master.sendkeys "pin"
master.sendkeys "{_}"
master.sendkeys "version"
master.sendkeys " "
master.sendkeys "{(}"
master.sendkeys ""
master.sendkeys "{)}"
master.sendkeys ""
master.sendkeys "{)}"

wscript.sleep 300
master.sendkeys "{Enter}"
master.sendkeys "        build"
master.sendkeys "{_}"
master.sendkeys "py"
master.sendkeys "run"
master.sendkeys "{(}"
master.sendkeys "self"
master.sendkeys "{)}"

wscript.sleep 300
master.sendkeys "{Enter}"
