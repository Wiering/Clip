# Clip

This console application redirects the Windows clipboard to STDOUT or sets the clipboard to text from a file or from the command line.

Examples:
```
   clip                        - displays clipboard
   clip > file.txt             - writes clipboard contents to file.txt
   clip "Hello, World!"        - sets the clipboard text to "Hello, World!"
   clip file.txt               - sets the clipboard to the contents of file.txt
                                 (or to the text "file.txt" if it doesn't exist)
```

This was written in 2001. Microsoft later added the CLIP command to DOS, however it unfortunately only works one way.
