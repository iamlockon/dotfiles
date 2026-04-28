#! /bin/bash

# adapted from https://github.com/rust-lang/cargo/issues/7557#issuecomment-791320960
# this script is used to open the browser on Windows from WSL
# add `export BROWSER="$HOME/open_browser.sh"` to your .bashrc or .zshrc file.
# then you can use `cargo doc --open` to open the crate's doc from within wsl.

winPath="$(wslpath -w "$1")"
# firefox
"/mnt/c/Program Files/Mozilla Firefox/firefox.exe" "$winPath"
# chrome
#"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe" "$winPath"
