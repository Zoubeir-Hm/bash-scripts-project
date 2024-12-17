# Bash Scripts Project 🖥️⚡

## Description 📜

This project contains a collection of useful bash scripts for file management, development tools, system management, and network utilities. The goal is to simplify the automation of common tasks, such as navigating directories, extracting archive files, starting development servers, cleaning the system, testing network connectivity, and more.

The scripts are organized into categories and can be easily integrated into your terminal using aliases.

Please note that the scripts listed below are just **examples** of what is included in the project. You are free to modify or add aliases for any script as per your needs.

## Features 🚀

- **File Management** 📁 :
  - `mkcd` : Creates a directory and immediately changes into it.
  - `extract` : Extracts different types of archive files.
  - `ccd` : Changes to a specific parent directory.

- **Dev Tools** 🛠️ :
  - `startserver` : Starts a development server for a web project (e.g., Python).

- **System Management** 🧹 :
  - `cleanup` : Cleans the system by removing temporary files and cache.
  - `command_check` : Checks if a command is installed on the system.

- **Network Tools** 🌐 :
  - `pingtest` : Tests network connectivity with a given site.

These are just a few examples of the available scripts. Feel free to explore the full set of tools and adapt them to your specific needs by modifying aliases or adding new scripts.

## Installation 🛠️

1. Clone the project to your working directory:

   ```bash
   git clone https://github.com/Zoubeir-Hm/bash-scripts-project.git
   git clone git@github.com:Zoubeir-Hm/bash-scripts-project.git

2. Run the installation script to configure aliases and add the scripts to your PATH :

    ```bash
    cd bash-scripts-project
    ./install.sh
This script will add aliases to your `~/.bashrc` or `~/.zshrc` file and add the script directory to your PATH.

3. Restart your terminal or run the following command to apply the changes:
    ```bash
    source ~/.bashrc  # Or source ~/.zshrc if you're using Zsh

## Usage 📝
Once the installation is complete, you can use the aliases directly in your terminal:

- **mkcd :** Creates a directory and changes into it.

Example :

    mkcd new-directory

- **extract :** Extracts an archive in the current directory.
Example :

     extract file.zip

- **ccd :** Changes to a specific parent directory.

Example:

    ccd 3  # Changes 3 levels up

- **startserver :** Starts a development server for a web project (e.g., Python).

Example:

    startserver

- **cleanup :** Removes temporary files and cleans up the system.

Example:

    cleanup

- **pingtest :** Tests network connectivity.

Example:

    pingtest www.google.com


Feel free to modify the aliases or scripts to suit your own workflow. For example, if you'd like to change the alias for a particular script, simply edit the aliases.sh file in the config folder and update the alias as needed.

## Contribution 🤝
Contributions are welcome! If you have ideas or improvements, feel free to open a pull request.
