[ -f "${HOME}/.Xresources" ] && xrdb -merge "${HOME}/.Xresources"
/usr/libexec/polkit-mate-authentication-agent-1 &
eval $(gnome-keyring-daemon --start --components=secrets)
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID
export SSH_AUTH_SOCK
exec dbus-run-session wmaker
