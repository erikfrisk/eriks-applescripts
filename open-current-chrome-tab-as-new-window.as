tell application "System Events"
	set numChrome to count (every process whose name is "Google Chrome")
end tell

if numChrome > 0 then
	tell application "Google Chrome"
		set frontIndex to active tab index of front window
		set frontURL to URL of tab frontIndex of front window
		delete tab frontIndex of front window
		make new window
		set URL of active tab of front window to frontURL
	end tell
end if