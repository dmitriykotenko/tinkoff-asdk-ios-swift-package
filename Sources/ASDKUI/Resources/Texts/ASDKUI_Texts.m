// -----------------------------------
//
// File was created by Dmitry Kotenko.
//
// -----------------------------------


#import "ASDKUI_Texts.h"
#import "RussianTexts.h"
#import "EnglishTexts.h"

#import "ASDKLocalized.h"

@implementation ASDKUI_Texts

+ (instancetype)current
{
    NSString * currentLanguage = [ASDKLocalized sharedInstance].language;
    
    if ([currentLanguage.lowercaseString isEqualToString:@"ru"]) {
        return [RussianTexts sharedInstance];
    } else {
        return [EnglishTexts sharedInstance];
    }
}

@end
