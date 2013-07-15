# Game Closure DevKit Plugin: TapForTap

This plugin allows you to collect analytics using the [TapForTap](https://tapfortap.com/) toolkit.  Both iOS and Android targets are supported.

## Usage

Install the addon with `basil install tapfortap`.

Include it in the `manifest.json` file under the "addons" section for your game:

~~~
"addons": [
	"tapfortap"
],
~~~

To specify your game's TapForTap API Key, edit the `manifest.json "android" and "ios" sections as shown below:

~~~
	"android": {
		"versionCode": 1,
		"icons": {
			"36": "resources/icons/android36.png",
			"48": "resources/icons/android48.png",
			"72": "resources/icons/android72.png",
			"96": "resources/icons/android96.png"
		},
		"tapForTapAPIKey": "4e93fa328bd49dfe5b23e7544c304f4b"
	},
~~~

~~~
	"ios": {
		"bundleID": "mmp",
		"appleID": "568975017",
		"version": "1.0.3",
		"icons": {
			"57": "resources/images/promo/icon57.png",
			"72": "resources/images/promo/icon72.png",
			"114": "resources/images/promo/icon114.png",
			"144": "resources/images/promo/icon144.png"
		},
		"tapForTapAPIKey": "4e93fa328bd49dfe5b23e7544c304f4b"
	},
~~~

Note that the manifest keys are case-sensitive.

A modal popup should appear on iOS saying "Alright we created your app! [Sweet]" if integration was successful.  You should check the Xcode logs for your app to look for problems.
