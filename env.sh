case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)
    echo "OSX"
    open -a XQuartz
    ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
    xhost +$ip
    ENV=DISPLAY=$ip:0
    VOLUME=/tmp/.X11-unix:/tmp/.X11-unix
  ;; 
  linux*)
    echo "LINUX"
    xhost +
    XSOCK=/tmp/.X11-unix/X0
  ;;
  bsd*)     echo "BSD" ;;
  msys*)    echo "WINDOWS" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac