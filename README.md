# igor-include
Procedure file manager for Igor Pro

# How to Use
1. Install ipf files in your "User Procedures" folder.
2. Write the following in any procedure window in Igor Pro.
  ```
  #include "include" 
  
  Function IncludeList()
    include("include",override="Include_MacEditor=\"MacVim\"") // app name
    include("include",override="Include_MacEditor=\"C:\Program Files\path\gvim.exe\"") // path to exe file
  
    include("procName1")
    include("procName2")
    include("procName3")
  End
  ```
3. You can include, exclude and edit procedure file from a menu bar.

