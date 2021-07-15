# MoodleDataCleanser_5

A Python/Anaconda/Jupyter Notebook Application for Cleansing multiple Moodle Log CSV Files across multiple computers.

## System Requirements
### Operating Systems
#### Windows
- Windows 10 or later (with PowerShell)
#### macOS
- macOS 10.14 Mojave or later (with ZSH; BASH also supported)
- macOS 10.13 High Sierra (with BASH)
#### Ubuntu
- Ubuntu 20.04 or later (with BASH)

### Anaconda
- Anaconda with Python 3.6 or higher + Pyro5, pandas, import_ipynb, netifaces, and dateutil (installed in your desired Python virtual environment).

## How to Use
1) In your Python server code, import the following:<br>
   import import_ipynb<br>
   from DataWarehouse import openDataWarehouse
2) Then, in that same server code, use the openDataWarehouse(dirpath, outfile, dataCleanFunc) function, where dirpath is the directory of the folder containing the CSV file(s) to be processed, outfile is the name of the output CSV file, and dataCleanFunc is a function that takes in a pandas dataframe, processes it, and outputs the resulting pandas dataframe.
3) Run the DataCleanser_Client Python code on your computer(s).
4) For the computer running the server code:<br>
   a) For Windows users: Open the Anaconda Powershell Prompt for your desired environment, and run .\ServerStarter_WINNT.ps1. If necessary, change the current working directory using cd "&#60;current working directory&#62;".<br>
   b) For macOS users: Open Terminal, type conda activate &#60;environment&#62;, then sh "&#60;current working directory&#62;/ServerStarter_MACOS.sh".<br>
   c) For Ubuntu users: Open Terminal, type conda activate &#60;environment&#62;, then sh "&#60;current working directory&#62;/ServerStarter_LINUX.sh".
5) Run your server code.
6) Enjoy! :)

## Troubleshooting
1) If a Windows PC used for running the DataCleanser_Client Python code has VirtualBox installed, please disable the VirtualBox Host-Only Adapter Ethernet to avoid server connection problems.
2) If a Mac is used for running the server code, and if the shell script for initializing conda (indicated by "# >>> conda initialize >>> ... # <<< conda initialize <<<") is in your .bash_profile or .bashrc files, please make sure you copy it to .zprofile or .zshrc, respectively.
3) For Mac users, this program has not yet been tested on Apple Silicon (M1) macs. But please feel free to test it if you have one and even message me if it works!
   
## Updates
July 08, 2021
1) ServerStarter_WINNT.ps1 updated to support PowerShell 6 or higher (including PowerShell 7)
2) DataWarehouse.ipynb updated to automatically terminate when all Moodle Log CSV Files are processed.
3) DataCleanser_Server.ipynb updated to print a notice to shut down the Pyro5 nameserver after completion.

July 13, 2021
1) DirectoryGenerator.py added and DataWarehouse.ipynb modified to enable cross-platform filepaths (no need to append '\\' or '/' to the dirpath parameter input of the openDataWarehouse(dirpath, outfile, dataCleanFunc) function anymore).

July 15, 2021
1) Revised the System Requirements section indicating that macOS 10.13 High Sierra, BASH on macOS, and Python 3.6 or higher are also supported by the MoodleDataCleanser_5 program.
2) Revised the Troubleshooting section indicating that the MoodleDataCleanser_5 program has not yet been tested on Apple Silicon (M1) macs.
