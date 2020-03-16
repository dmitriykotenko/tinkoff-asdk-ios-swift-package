#import "ASDKUI_Images.h"

@implementation UIImage(delete_icon)

+(UIImage *) delete_icon {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(40, 40), NO, 0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
UIBezierPath * path = [UIBezierPath bezierPath];

    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(22.87, 21.88)];
[path addCurveToPoint: CGPointMake(22.87, 22.87) controlPoint1: CGPointMake(23.143, 22.153) controlPoint2: CGPointMake(23.143, 22.597)];
[path addCurveToPoint: CGPointMake(22.375, 23.075) controlPoint1: CGPointMake(22.733, 23.007) controlPoint2: CGPointMake(22.554, 23.075)];
[path addCurveToPoint: CGPointMake(21.88, 22.87) controlPoint1: CGPointMake(22.196, 23.075) controlPoint2: CGPointMake(22.016, 23.007)];
[path addLineToPoint: CGPointMake(20.0, 20.99)];
[path addLineToPoint: CGPointMake(18.12, 22.87)];
[path addCurveToPoint: CGPointMake(17.625, 23.075) controlPoint1: CGPointMake(17.983, 23.007) controlPoint2: CGPointMake(17.804, 23.075)];
[path addCurveToPoint: CGPointMake(17.13, 22.87) controlPoint1: CGPointMake(17.446, 23.075) controlPoint2: CGPointMake(17.266, 23.007)];
[path addCurveToPoint: CGPointMake(17.13, 21.88) controlPoint1: CGPointMake(16.857, 22.597) controlPoint2: CGPointMake(16.857, 22.153)];
[path addLineToPoint: CGPointMake(19.01, 20.0)];
[path addLineToPoint: CGPointMake(17.13, 18.12)];
[path addCurveToPoint: CGPointMake(17.13, 17.13) controlPoint1: CGPointMake(16.857, 17.847) controlPoint2: CGPointMake(16.857, 17.403)];
[path addCurveToPoint: CGPointMake(18.12, 17.13) controlPoint1: CGPointMake(17.403, 16.857) controlPoint2: CGPointMake(17.847, 16.857)];
[path addLineToPoint: CGPointMake(20.0, 19.01)];
[path addLineToPoint: CGPointMake(21.88, 17.13)];
[path addCurveToPoint: CGPointMake(22.87, 17.13) controlPoint1: CGPointMake(22.153, 16.857) controlPoint2: CGPointMake(22.597, 16.857)];
[path addCurveToPoint: CGPointMake(22.87, 18.12) controlPoint1: CGPointMake(23.143, 17.403) controlPoint2: CGPointMake(23.143, 17.847)];
[path addLineToPoint: CGPointMake(20.99, 20.0)];
[path addLineToPoint: CGPointMake(22.87, 21.88)];
[path closePath];
[path moveToPoint: CGPointMake(20.0, 13.0)];
[path addCurveToPoint: CGPointMake(13.0, 20.0) controlPoint1: CGPointMake(16.134, 13.0) controlPoint2: CGPointMake(13.0, 16.134)];
[path addCurveToPoint: CGPointMake(20.0, 27.0) controlPoint1: CGPointMake(13.0, 23.866) controlPoint2: CGPointMake(16.134, 27.0)];
[path addCurveToPoint: CGPointMake(27.0, 20.0) controlPoint1: CGPointMake(23.866, 27.0) controlPoint2: CGPointMake(27.0, 23.866)];
[path addCurveToPoint: CGPointMake(20.0, 13.0) controlPoint1: CGPointMake(27.0, 16.134) controlPoint2: CGPointMake(23.866, 13.0)];
[path closePath];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 0.7568627450980392 green: 0.7647058823529411 blue: 0.7568627450980392 alpha: 1] setFill];
    [path fill];
    
CGContextRestoreGState(context);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
    }

@end
