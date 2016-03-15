//
//  OneSky+Swift.m
//  BeMyEye
//
//  Created by Alberto Pasca on 15/03/16.
//  Copyright © 2016 BeMyEye. All rights reserved.
//

#import "OneSky+Swift.h"

@implementation OneSkyOTAPlugin (Swift)

void provideAPIKey (NSString* key, NSString* APISecret, NSString* projextID )
{
    [OneSkyOTAPlugin provideAPIKey:key APISecret:APISecret projectID:projextID];
}

NSString* localizedStringForKey( NSString* key, NSString* value, NSString* tableName)
{
    return [OneSkyOTAPlugin localizedStringForKey:key value:value table:tableName];
}

void checkForUpdate()
{
    [OneSkyOTAPlugin checkForUpdate];
}

void deleteCache()
{
    [OneSkyOTAPlugin deleteCache];
}

void setDebug(BOOL debug)
{
    [OneSkyOTAPlugin setDebug:debug];
}

void setLanguage(NSString* language)
{
    [OneSkyOTAPlugin setLanguage:@"pt-PT"];
}

NSString* language (NSString* language)
{
    return [OneSkyOTAPlugin language:language];
}

NSString* OSLocalizedStringSwift( NSString* pKey, NSString* pComment )
{
    return OSLocalizedString(pKey, pComment);
}

NSString* OSLocalizedStringFromTableSwift( NSString* pKey, NSString* pTable, NSString* pComment )
{
    return OSLocalizedStringFromTable(pKey, pTable, pComment);
}

@end
