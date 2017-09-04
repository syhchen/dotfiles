-- Inspired by: https://gist.github.com/eric-hu/5846890
on run {input, parameters}
  tell application "Finder.app"
		set my_file to first item of input
		set filetype to (kind of (info for my_file))
		if filetype is "Folder" or filetype is "Volume" then
			set dir_path to quoted form of (POSIX path of my_file)
		else
			set dir_path to quoted form of (POSIX path of (container of my_file as string))
		end if
	end tell
	cd_to(dir_path)
end run

on cd_to(this_dir)
	set is_running to application "iTerm.app" is running

	tell application "iTerm.app"
		activate

		if is_running then
			tell current window to set t to (create tab with default profile)
		else
			set t to current tab of current window
		end if

		tell t to tell current session to write text "cd " & this_dir
	end tell
end cd_to
