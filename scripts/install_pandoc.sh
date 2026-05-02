
echo "Installing Pandoc..."

# Open up a command prompt
cmd

# Install pandoc from winget
winget install --source winget --exact --id JohnMacFarlane.Pandoc --verbose

## ... after this though you cannot call pandoc from the command prompt once you exit.
## Might want to look into other ways to get pandoc (e.g. pip, chocolatey)
