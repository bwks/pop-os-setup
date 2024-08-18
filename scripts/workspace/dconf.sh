#! /usr/bin/bash

source $(dirname "$0")/../shared.sh;

workspace_config() {
  echo "$HR Updating workspace settings";

  dconf write /org/gnome/desktop/interface/monospace-font-name "'CaskaydiaMono Nerd Font Mono 11'";
  dconf write /org/gnome/desktop/interface/document-font-name "'Ubuntu Nerd Font 11'";
  dconf write /org/gnome/desktop/interface/font-name "'Ubuntu Nerd Font 10'";
  dconf write /org/gnome/desktop/interface/font-antialiasing "'rgba'";
  dconf write /org/gnome/desktop/interface/font-hinting "'full'";
  dconf write /org/gnome/desktop/interface/text-scaling-factor 1.1000000000000001;
  dconf write /org/gnome/desktop/interface/clock-show-weekday true;

  dconf write /org/gnome/desktop/wm/preferences/num-workspaces 5;
  dconf write /org/gnome/desktop/wm/preferences/titlebar-font "'Ubuntu Nerd Font Medium 10'";
  dconf write /org/gnome/desktop/wm/preferences/button-layout "'appmenu:minimize,maximize,close'";

  dconf write /org/gnome/mutter/dynamic-workspaces false;

  dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-1 "['<Super>1']";
  dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-2 "['<Super>2']";
  dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-3 "['<Super>3']";
  dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-4 "['<Super>4']";
  dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-5 "['<Super>5']";

  dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-1 "['<Super><Shift>1']";
  dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-2 "['<Super><Shift>2']";
  dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-3 "['<Super><Shift>3']";
  dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-4 "['<Super><Shift>4']";
  dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-5 "['<Super><Shift>5']";
}

workspace_config;