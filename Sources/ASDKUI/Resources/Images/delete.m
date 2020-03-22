// -----------------------------------
//
// File was created by Dmitry Kotenko.
//
// -----------------------------------


#import "ASDKUI_Images.h"

@implementation UIImage(delete)

+(UIImage *) delete {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(27, 16), NO, 0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
UIBezierPath * path = [UIBezierPath bezierPath];

    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(8.6688, -2.0E-4)];
[path addLineToPoint: CGPointMake(-2.0E-4, 7.9998)];
[path addLineToPoint: CGPointMake(8.6688, 15.9998)];
[path addLineToPoint: CGPointMake(26.9998, 15.9998)];
[path addLineToPoint: CGPointMake(26.9998, -2.0E-4)];
[path addLineToPoint: CGPointMake(8.6688, -2.0E-4)];
[path closePath];
[path moveToPoint: CGPointMake(1.4738, 7.9998)];
[path addLineToPoint: CGPointMake(9.0598, 0.9998)];
[path addLineToPoint: CGPointMake(25.9998, 0.9998)];
[path addLineToPoint: CGPointMake(25.9998, 14.9998)];
[path addLineToPoint: CGPointMake(9.0598, 14.9998)];
[path addLineToPoint: CGPointMake(1.4738, 7.9998)];
[path closePath];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 0.5725490196078431 green: 0.6 blue: 0.6352941176470588 alpha: 1] setFill];
    [path fill];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(14.4908, 3.6483)];
[path addLineToPoint: CGPointMake(23.3798, 12.3513)];

    [[UIColor colorWithRed: 0.5725490196078431 green: 0.6 blue: 0.6352941176470588 alpha: 1] setStroke];
CGContextSetLineWidth(context, 1.0);
CGContextSetLineJoin(context, kCGLineJoinRound);
CGContextSetLineCap(context, kCGLineCapRound);
    [path stroke];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(23.3802, 3.6483)];
[path addLineToPoint: CGPointMake(14.4912, 12.3513)];

    [[UIColor colorWithRed: 0.5725490196078431 green: 0.6 blue: 0.6352941176470588 alpha: 1] setStroke];
CGContextSetLineWidth(context, 1.0);
CGContextSetLineJoin(context, kCGLineJoinRound);
CGContextSetLineCap(context, kCGLineCapRound);
    [path stroke];
    
CGContextRestoreGState(context);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
    }

@end
