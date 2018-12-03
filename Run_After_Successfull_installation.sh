cd /usr/local/lib/node_modules/appium/node_modules/appium-xcuitest-driver/WebDriverAgent/
mkdir -p Resources/WebDriverAgent.bundle/
sh ./Scripts/bootstrap.sh -d
open .
echo "Open WebDriverAgent.xcodeproj in XCODE and set provisioning profile" 
read -p "Press ENTER if DONE"
Device_udid=$(idevice_id -l)
echo $Device_udid
xcodebuild -project WebDriverAgent.xcodeproj -scheme WebDriverAgentRunner -destination 'id='$Device_udid'' test
