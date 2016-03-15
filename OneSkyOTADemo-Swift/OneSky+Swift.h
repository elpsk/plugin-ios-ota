//
//  OneSky+Swift.h
//  BeMyEye
//
//  Created by Alberto Pasca on 15/03/16.
//  Copyright © 2016 BeMyEye. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OneSkyOTAPlugin.h"

@interface OneSkyOTAPlugin (Swift)

/*!
 @abstract
 Call this method from the [UIApplicationDelegate application:didFinishLaunchingWithOptions:]
 Initialize using project id, api token, secret.

 @param projectID The id of the project.

 @param key The API key can be found in Site Settings under API Keys & Usage on OneSky Web Admin.

 @param secret The API secret can be found in Site Settings under API Keys & Usage on OneSky Web Admin.
 */
void provideAPIKey (NSString* key, NSString* APISecret, NSString* projextID );

/*!
 @abstract
 Method for retrieving localized strings.

 @param key The key for a string in the table identified by tableName.

 @param value The value to return if key is nil or if a localized string for key can’t be found in the table.

 @param table tableName - The receiver’s string table to search. If tableName is nil or is an empty string, the method attempts to use the table in Localizable.strings.
 */
NSString* localizedStringForKey( NSString* key, NSString* value, NSString* tableName);

/*!
 @abstract
 Method to request update of translations immediately
 */
void checkForUpdate();

/*!
 @abstract
 Method to delete cache of translations retreieved from OneSky server
 */
void deleteCache();

/*!
 @abstract
 Set whether to show debug logs in console, default is YES
 */
void setDebug(BOOL debug);

/*!
 @abstract
 Set the language to use for -localizedStringForKey:value:table: calls, default is [[NSLocale preferredLanguages] firstObject]
 */
void setLanguage(NSString* language);

/*!
 @abstract
 Get the current language used for -localizedStringForKey:value:table: calls
 */
NSString* language (NSString* language);


NSString* OSLocalizedStringSwift( NSString* pKey, NSString* pComment );
NSString* OSLocalizedStringFromTableSwift( NSString* pKey, NSString* pTable, NSString* pComment );

@end

