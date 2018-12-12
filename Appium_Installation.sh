ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew uninstall node
brew uninstall --force node
brew install node
sudo gem uninstall xcpretty
npm uninstall -g ios-deploy
brew uninstall carthage
brew uninstall ideviceinstaller
brew uninstall --ignore-dependencies libimobiledevice
brew uninstall --force libimobiledevice
npm uninstall wd
npm uninstall -g appium
npm install -g appium
brew install ideviceinstaller
brew install carthage
npm install -g ios-deploy
echo "ENTER PASSWORD"
read -s pass
echo $pass | sudo -S gem install xcpretty
brew install autoconf
brew install automake
brew install libtool
brew install pkg-config
brew install libimobiledevice --HEAD
cd /usr/local/lib/node_modules/appium/node_modules/appium-xcuitest-driver/WebDriverAgent/
mkdir -p Resources/WebDriverAgent.bundle/
sh ./Scripts/bootstrap.sh -d
open .
echo "Open WebDriverAgent.xcodeproj in XCODE and set provisioning profile" 
read -p "Press ENTER if DONE"
Device_udid=$(idevice_id -l)
echo $Device_udid
xcodebuild -project WebDriverAgent.xcodeproj -scheme WebDriverAgentRunner -destination 'id='$Device_udid'' test
