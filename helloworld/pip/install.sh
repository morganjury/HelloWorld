# exec > /dev/null 2>&1 # blocks stdout and stderr
exec 7>&1 # save a copy of current stdout
exec >/dev/null # redirect everyone else's stdout to /dev/null
virtualenv --version
if [ $? -ne 0 ];
then
  printf "Installing VirtualEnv..." >&7
  pip3 install virtualenv
fi
virtualenvwrapper_var=$(which virtualenvwrapper.sh)
. $virtualenvwrapper_var
virtualenvwrapper --version
if [ $? -ne 0 ];
then
  printf "Installing VirtualEnvWrapper..." >&7
  pip3 install virtualenvwrapper
fi
workon HelloWorld
if [ $? -ne 0 ];
then
  printf "Creating VirtualEnv..." >&7
  mkvirtualenv HelloWorld
  # setprojectdir . # old command
  setvirtualenvproject .
  pip3 install flask
fi
printf "\nProject setup complete.\n\n" >&7