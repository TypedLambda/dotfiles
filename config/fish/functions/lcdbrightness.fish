function lcdbrightness --argument level
	if test -n "$level" 
		if test  0 -le "0$level"  -a "0$level" -le 100  >/dev/null
			sudo sysctl hw.acpi.video.lcd0.brightness=$level
		else
			return 2
		end
	else
		sysctl 'hw.acpi.video.lcd0.brightness'
	end
end
