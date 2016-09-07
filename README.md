# igor-include
Procedure file manager for Igor Pro

# How to Use
1. Install ipf files in your "User Procedures" folder.
2. Write the following in a procedure window in Igor Pro.
  
  ```igorpro
  #include "include" 
  
  Function IncludeList()
    include#start()

    include("procName1")
    include("procName2")
    include("procName3")
  
    include#finish()
  End
  ```
3. You can include, exclude and edit procedure file from a menu bar.
4. If you want to use your favorite editor, write the following in the main procedure window.
  
  ```igorpro
  // Example
  override strconstant Include_WinEditor="C:\Program Files\vim74-kaoriya-win64\gvim.exe"
  override strconstant Include_MacEditor="MacVim"
  ```

