# Add the local bin folder to path recursively
PATH=$PATH$( find $HOME/.local/bin/ -type d -printf ":%p" )

export XDG_SESSION_TYPE=x11

# I hate the window scaling of `Winit`
export WINIT_X11_SCALE_FACTOR=1

export PRESERVED_NOTIF_ID=666

# Set default global GTK theme to Adwaita Dark
export GTK_THEME=Adwaita:dark
