#!/usr/bin/env zsh
############################
# This script creates symlinks from the home directory to any desired dotfiles in $HOME/dotfiles
# And also installs MacOS Software
# And also installs Homebrew Packages and Casks (Apps)
# And also sets up VS Code
############################

# Defining the dotfiles directory
dotfiledir="${HOME}/dotfiles"

# List of files to symlink in ${homedir}
files=(zshrc aliases private)

# Change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd "${dotfiledir}" || exit

# Create symlinks (will overwrite old dotfiles)
for file in "${files[@]}"; do
    echo "Creating symlink to $file in home directory."
    ln -sf "${dotfiledir}/.${file}" "${HOME}/.${file}"
done

# Run the MacOS Script
./macos.sh

# Run the Homebrew Script
./brew.sh

# Run the mas Script
./mas.sh

# Run VS Code Script
# ./vscode.sh

# Once all Packages, Applications and Fonts are installed, check the..
# Final Helping Instructions
echo "Import your terminal settings and profile (~/dotfiles/settings)"
echo "Settings -> General -> Settings -> Import All Settings and Data"
echo "Settings -> Profiles -> Import JSON Profiles"
echo "Press enter to continue.."
read

echo "Rectangle: Import your settings (~/dotfiles/settings) to Rectangle and give the necessary permissions."
echo "Press enter to continue.."
read

echo "Brave Browser: Setup all your profiles, sync the settings and check the extensions. For a more in depth explaination check your documentation."
echo "Press enter to continue.."
read

echo "Affinity Designer: Copy your Affinity Designer studio preset to the following location:"
echo "~/Library/Application Support/Affinity Designer 2/presets"
echo "Press enter to continue.."
read

echo "Google Account: Connect Google Account (System Settings > Internet Accounts)."
echo "Press enter to continue..."
read

echo "Discord: Sign in to Discord."
echo "Press enter to continue.."
read

echo "Netzlaufwerke verbinden: Multiversum, Universum, Time-Capsule"
echo "Press enter to continue.."
read

echo "Engravo Soft Font: Installieren"
echo "Press enter to continue.."
read

echo "Installation Complete!"
