XCODE_USER_TEMPLATES_DIR=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File\ Templates

TEMPLATES_DIR=RIBsReactorKit


install:
	sudo mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	make uninstall
	sudo cp -R $(TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)

uninstall:
	sudo rm -rf $(XCODE_USER_TEMPLATES_DIR)/RIBsReactorKit
