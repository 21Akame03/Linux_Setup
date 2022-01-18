set -e

name=$1
option=${2:-""}

if [[$name != ""]]
then
    echo "Please enter the name of the distro! Baakaa!!!"
else
    distrobox-enter $name
fi


