export ZDOTDIR="$HOME/.config/.zsh"
export PATH=$HOME/.local/bin:$PATH
if [ "(tty)" = "/dev/tty1" ];then
  exec  dbus-run-session Hyprland
fi
