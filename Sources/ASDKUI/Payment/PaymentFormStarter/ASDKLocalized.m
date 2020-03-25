//
//  ASDKLocalized.m
//  ASDKUI
//
//  Created by v.budnikov on 19.11.2018.
//  Copyright © 2018 TCS Bank. All rights reserved.
//


// ------------------------------------
//
// File was modified by Dmitry Kotenko.
//
// ------------------------------------


#import "ASDKLocalized.h"

@interface ASDKLocalized ()

@property (nonatomic, copy) NSString *localizableTable;
@property (nonatomic, strong) NSBundle *localizableBundle;
@property (nonatomic, copy) NSString *localeIdentifier;

@property (nonatomic, strong) NSString *currentLanguage;

@end

@implementation ASDKLocalized

static ASDKLocalized *_sharedObjectASDKLocalized = nil;

+ (instancetype)sharedInstance
{
	static dispatch_once_t onceToken = 0;
	__strong static id _sharedObjectASDKLocalized = nil;
	dispatch_once(&onceToken,
				  ^{
					  _sharedObjectASDKLocalized = [[self alloc] init];
				  });

	return _sharedObjectASDKLocalized;
}

- (instancetype)init
{
	if (self = [super init])
	{
		_localizableTable = @"ASDKLocalizable";
		_localizableBundle = [NSBundle bundleForClass:[self class]];
		_localeIdentifier = [[[NSLocale currentLocale] objectForKey:NSLocaleIdentifier] lowercaseString];
        _currentLanguage = [NSLocale currentLocale].languageCode;
	}

	return self;
}

- (NSString *)language
{
    return _currentLanguage;
}

- (void)forceSetLanguage:(NSString *)language
{
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:language ofType:@"lproj"];
    _localizableBundle = [NSBundle bundleWithPath:path];
    _currentLanguage = language;
}

- (void)setLocalizedTable:(NSString *)table
{
	_localizableTable = table;
}

- (void)setLocalizedBundle:(NSBundle *)bundle
{
	_localizableBundle = bundle;
}

- (NSString *)localizedStringForKey:(NSString *)key bundle:(NSBundle *)bundle localizedTable:(NSString *)table
{
	return [bundle localizedStringForKey:key value:@"" table:table];
}

- (NSString *)localizedStringForKey:(NSString *)key bundle:(NSBundle *)bundle
{
	return [bundle localizedStringForKey:key value:@"" table:self.localizableTable];
}

- (NSString *)localizedStringForKey:(NSString *)key
{
	return [self.localizableBundle localizedStringForKey:key value:@"" table:self.localizableTable];
}

- (void)setSMSLocaleIdentifier:(NSString *)localeIdentifier
{
	_localeIdentifier = localeIdentifier;
}

@end
