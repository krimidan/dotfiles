#!/usr/bin/env zsh

xcode-select --install

echo "Complete the installation of Xcode Command Line Tools before proceeding."
echo "Press enter to continue..."
read

# Set scroll as traditional instead of natural
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
# defaults write NSGlobalDomain com.apple.trackpad.click-to-float -bool true
# defaults write NSGlobalDomain com.apple.trackpad.tapToClick -bool true
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# das hier hat geklappt
# defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

## killall Finder

# Set location for screenshots
mkdir "${HOME}/Desktop/Screenshots"
defaults write com.apple.screencapture location "${HOME}/Desktop/Screenshots"
killall SystemUIServer

# Add Bluetooth to Menu Bar for battery percentages
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true
killall ControlCenter

# Get the absolute path to the image
IMAGE_PATH="${HOME}/dotfiles/settings/Wallpaper.jpg"

# AppleScript command to set the desktop background
osascript <<EOF
tell application "System Events"
    set desktopCount to count of desktops
    repeat with desktopNumber from 1 to desktopCount
        tell desktop desktopNumber
            set picture to "$IMAGE_PATH"
        end tell
    end repeat
end tell
EOF
