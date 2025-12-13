minimal hyprland setup

  dependencies:
  - pywal;
  - waybar;
  - rofi;
  - micro;
  - mako;
  - kitty;
  - fastfetch

  fonts:
  - FiraCode;
  - JetBrains

  make scripts work:
  chmod +x ~/.config/waybar/scripts/spotify.sh (show spotify music on waybar);
  chmod +x ~/.config/wal/post-run.d/mako-update (generate mako pallete w pywal);
  ln -sf ~/.cache/wal/mako ~/.config/mako/config (link the pywal template with actual mako config file)
