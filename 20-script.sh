userid=$(id -u)
if [ userid -ne 0 ]; then
    echo "please run this script with root user access"
    exit 1
else
    echo "You are running this script with root user access"
fi