#!/usr/bin/env bash

declare path="$(realpath $0)"
declare src="${path%/*}/src"
declare conf="$HOME/.config"
declare dest="$conf/d"

ln  --symbolic  $src                       $dest
ln  --symbolic  $dest/bash/run             $HOME/.bashrc
ln  --symbolic  $dest/bash/logout          $HOME/.bash_logout
ln  --symbolic  $dest/bash/profile         $HOME/.profile
ln  --symbolic  $dest/visidata/config      $HOME/.visidatarc
ln  --symbolic  $dest/visidata             $HOME/.visidata
ln  --symbolic  $dest/script/src           $HOME/.script
ln  --symbolic  $dest/tmux                 $conf/tmux
ln  --symbolic  $dest/misc/user-dirs.dirs  $conf/user-dirs.dirs
ln  --symbolic  $dest/i3wm                 $conf/i3
ln  --symbolic  $dest/git                  $conf/git

