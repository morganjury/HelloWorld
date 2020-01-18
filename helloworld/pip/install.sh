source /usr/local/bin/virtualenvwrapper.sh
workon HelloWorld
if [ $? -eq 0 ]; # if exit status of workon is not 0
then
  mkvirtualenv HelloWorld
  setprojectdir .
  pip3 install flask
fi