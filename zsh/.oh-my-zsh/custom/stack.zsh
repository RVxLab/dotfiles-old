if ! mount | grep stackstorage > /dev/null 
then
    mount ~/stack
fi