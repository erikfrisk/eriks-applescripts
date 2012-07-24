on alfred_script(q)
  
  tell application "System Events"
    set numChrome to count (every process whose name is "Google Chrome")
  end tell
  
  if numChrome > 0 then
    tell application "Google Chrome"
      
      set leftArrow to ASCII character 28 
      set rightArrow to ASCII character 29
      
      tell application "System Events"
          keystroke leftArrow using {command down, option down, control down}
      end tell
      
      set frontIndex to active tab index of front window
      set frontURL to URL of tab frontIndex of front window
      
      delete tab frontIndex of front window
      
      make new window
      set URL of active tab of front window to frontURL
      
      tell application "System Events"
          keystroke rightArrow using {command down, option down, control down}
      end tell
      
    end tell
  end if

end alfred_script