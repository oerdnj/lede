if features and features.provides then
	Install "kmod-sound-core" "kmod-usb-audio" "mpd-mini" "mpc" "pulseaudio-daemon" "pulseaudio-tools" "pulseaudio-profiles" { ignore = { 'missing' } }
end
