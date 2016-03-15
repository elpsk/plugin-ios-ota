OneSky Over-The-Air Plugin for iOS /Swift
======================================

Over-the-air translation update for your iOS apps with OneSky.


Swift version:
--------------

Drag 'n drop to your projects the OneSky files:

``` objective-c
libOneSkyOTAPlugin.a
ibsupport
OneSkyOTAPlugin.h
```

and the Objective-C Categories for using with Swift:

``` objective-c
OneSky+Swift.h
OneSky+Swift.m
```


Inclusion
----------------

Make a bridge and add the import for the new category:

``` objective-c
#import "OneSky+Swift.h"
```

Security
---------------

For security reason you might not want to embed the API secret in the source code of your application, in this case you can skip the API secret by setting the string output API privacy to public, go to "Project settings > Privacy > String out API" on OneSky platform for more detail.

``` objective-c
OneSkyOTAPlugin.provideAPIKey(ONESKY_API_KEY, APISecret, ONESKY_PROJECT_ID);
```

Usage
----------------

Simply replace ```NSLocalizedString``` with ```OSLocalizedString```, the plugin will fallback to local .strings files if no translation of the string is found on OneSky.

``` objective-c
OSLocalizedStringSwift(key, comment)
OSLocalizedStringFromTableSwift(key, tbl, comment)
```

Language
----------------

The default language the plugin uses is `-[[NSLocale preferredLanguages] firstObject]`. If your app implements custom language logic, you set the language with the new API:

``` objective-c
OneSkyOTAPlugin.setLanguage("pt-PT");
```

Support
-------
For **Objective-C version**, **support**, **installation guides**, etc... please refer to *OneSky github official page*:   
[`https://github.com/onesky/plugin-ios-ota`
](https://github.com/onesky/plugin-ios-ota)  
or visit their website:  
[`http://support.oneskyapp.com/`](http://support.oneskyapp.com/)


Note
-------
**I'm not releated** to OneSky. I've made the Swift wrapper for *personal esigence*.

For suggestions or flames, go to [`albertopasca.it`](http://www.albertopasca.it) and send me an email!

enjoy.
