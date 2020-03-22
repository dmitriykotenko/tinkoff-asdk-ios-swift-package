// -----------------------------------
//
// File was created by Dmitry Kotenko.
//
// -----------------------------------


#import "ASDKUI_Texts.h"
#import "RussianTexts.h"
#import "EnglishTexts.h"

@implementation ASDKUI_Texts

+ (instancetype)current
{
    NSLocale * currentLocale = [NSLocale currentLocale];
    
    if ([currentLocale.languageCode.lowercaseString isEqualToString:@"ru"]) {
        return [RussianTexts sharedInstance];
    } else {
        return [EnglishTexts sharedInstance];
    }
}

@end
