#!/bin/bash 

# Get the current working directory where the project is located
PROJECT_DIR="$(pwd)"

# Function to add aliases to the shell configuration file
add_aliases() {
    ALIAS_FILE="$PROJECT_DIR/config/aliases.sh"
    
    # Check if the alias file exists
    if [[ -f "$ALIAS_FILE" ]]; then
        echo "Adding aliases from $ALIAS_FILE"

        # Determine the correct shell configuration file
        if [[ -n $ZSH_VERSION ]]; then
            SHELL_RC="$HOME/.zshrc"
        else
            SHELL_RC="$HOME/.bashrc"
        fi

        # Add a line to source the alias file if not already present
        if ! grep -q "source $ALIAS_FILE" "$SHELL_RC"; then
            echo "source $ALIAS_FILE" >> "$SHELL_RC"
            echo "Aliases added to $SHELL_RC."
        else
            echo "Aliases already exist in $SHELL_RC."
        fi
    else
        echo "Alias file not found. Skipping alias setup."
    fi
}

# Make all shell scripts in the project executable
find "$PROJECT_DIR/scripts" -type f -name "*.sh" -exec chmod +x {} \;

# Add the project scripts directory to the PATH
if ! grep -q "export PATH=\$PATH:$PROJECT_DIR/scripts" "$HOME/.bashrc"; then
    echo "export PATH=\$PATH:$PROJECT_DIR/scripts" >> "$HOME/.bashrc"
    echo "Project scripts directory added to PATH."
else
    echo "Project scripts directory already in PATH."
fi

# Add aliases to the shell configuration file
add_aliases

# Source the updated .bashrc so that aliases and PATH changes take effect immediately
source "$HOME/.bashrc"

echo "Installation complete! Restart your terminal or run 'source ~/.bashrc' to apply changes."

