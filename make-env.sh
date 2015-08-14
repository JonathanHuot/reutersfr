function needtool
{
  tool=$1
  which $tool > /dev/null
  if [[ $? != 0 ]]; then
    echo "please install $tool"
    return 1
  fi
  echo "$tool found"
  return 0
}
needtool virtualenv || return
[[ ! -d env ]] && virtualenv -p /usr/bin/python$py --system-site-packages env

. env/bin/activate

pip install -r requirements.txt
if [[ $? != 0 ]]; then
  echo "dependencies failed"
  return
fi

echo you can run server with command below :
echo python runserver.py

