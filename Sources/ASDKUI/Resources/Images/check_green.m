// -----------------------------------
//
// File was created by Dmitry Kotenko.
//
// -----------------------------------


#import "ASDKUI_Images.h"

@implementation UIImage(check_green)

+(UIImage *) check_green {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(20, 20), NO, 0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
UIBezierPath * path = [UIBezierPath bezierPath];
// MASK Mask(mask-2,NamedColor(white),path-1)
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(20.0, 10.0148)];
[path addCurveToPoint: CGPointMake(10.0, 0.0148) controlPoint1: CGPointMake(20.0, 4.4918) controlPoint2: CGPointMake(15.523, 0.0148)];
[path addCurveToPoint: CGPointMake(0.0, 10.0148) controlPoint1: CGPointMake(4.477, 0.0148) controlPoint2: CGPointMake(0.0, 4.4918)];
[path addCurveToPoint: CGPointMake(10.0, 20.0148) controlPoint1: CGPointMake(0.0, 15.5378) controlPoint2: CGPointMake(4.477, 20.0148)];
[path addCurveToPoint: CGPointMake(20.0, 10.0148) controlPoint1: CGPointMake(15.523, 20.0148) controlPoint2: CGPointMake(20.0, 15.5378)];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 0.1450980392156863 green: 0.6313725490196078 blue: 0.3254901960784314 alpha: 1] setFill];
    [path fill];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(8.8825, 13.8055)];
[path addLineToPoint: CGPointMake(14.9575, 7.7305)];
[path addLineToPoint: CGPointMake(13.8855, 6.6585)];
[path addLineToPoint: CGPointMake(8.8825, 11.6615)];
[path addLineToPoint: CGPointMake(6.8095, 9.5885)];
[path addLineToPoint: CGPointMake(5.7375, 10.6595)];
[path closePath];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 1.0 green: 1.0 blue: 1.0 alpha: 1] setFill];
    [path fill];
    
CGContextRestoreGState(context);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
    }

@end
