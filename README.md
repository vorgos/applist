# applist
Short command line tool to list OSX application Z-Order


All of the work is done by 

https://gist.github.com/0xced/163918#file-copylaunchedapplicationsinfronttobackorder-c

I've included a copy here, with minor change to compile cleanly.

Assuming you have XCode installed, run like this,

sh ./applist.sh 

and it will compile, create an executable called applist and then run it. The output should be list this...

$ ./applist.sh  
78540 com.apple.Terminal
80897 com.barebones.textwrangler
89228 org.mozilla.firefox
1627 com.apple.finder
68976 com.apple.ScriptEditor2
84894 com.azureus.vuze
54490 com.transtex.texeditplus
55055 com.apple.Dictionary
54549 com.apple.QuickTimePlayerX
