
path={$1|""}

if [path -eq ""]
then
    echo "Please enter a value"
else
    tar -xzf $path
    mv $path/go ~/go
fi
