# USMT Manager

A simple tool for managing and accessing CTL employee USMT backups.

## Disclaimer:

This tool is only for data located on a corporate migration server! This will not work for
backups stored on a OneDrive.

I am _not_ responsible for any data lost as a result of using my tool or modifying it's source. By downloading and using release builds, you are agreeing to this condition. _"Loss"_ or _"Damage"_ of personal data includes, but is not limited to:

- Lost files
- Corrupt files

**Use this tool at your own risk!**

## Releases

Get the latest release [here](https://github.com/Zach-Galek/USMT-Manager/releases/latest).

## Usage

You only need the server's name and the user's PC name. For servers, you only need the identifier _(it's the first thirteen characters found on a server's name)_. E.G.: `VARJWCM12D501`

## Features

- Use of both server and PC names is permitted
- Backup functionality for OneDrive

## Todo

- Error Handling

Errors need to be added for missing files or folders in the event a backup does not exist.
 
- Account for Variables With Spaces

Server or PC names shouldn't contain spaces, but if any do they currently won't be accepted.
 
- MIG View

I also want to add an option to view `.mig` backup files in case it's necessary.

- Rebase the entire tool in C#