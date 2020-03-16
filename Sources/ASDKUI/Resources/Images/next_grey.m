#import "ASDKUI_Images.h"

@implementation UIImage(next_grey)

+(UIImage *) next_grey {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(28, 28), NO, 0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
UIBezierPath * path = [UIBezierPath bezierPath];
CGContextConcatCTM(context, CGAffineTransformMakeTranslation(3.0, 3.0));

    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(11.0, 0.0)];
[path addCurveToPoint: CGPointMake(0.0, 11.0) controlPoint1: CGPointMake(4.925, 0.0) controlPoint2: CGPointMake(0.0, 4.925)];
[path addCurveToPoint: CGPointMake(11.0, 22.0) controlPoint1: CGPointMake(0.0, 17.075) controlPoint2: CGPointMake(4.925, 22.0)];
[path addCurveToPoint: CGPointMake(22.0, 11.0) controlPoint1: CGPointMake(17.075, 22.0) controlPoint2: CGPointMake(22.0, 17.075)];
[path addCurveToPoint: CGPointMake(11.0, 0.0) controlPoint1: CGPointMake(22.0, 4.925) controlPoint2: CGPointMake(17.075, 0.0)];
[path moveToPoint: CGPointMake(11.0, 1.0)];
[path addCurveToPoint: CGPointMake(21.0, 11.0) controlPoint1: CGPointMake(16.514, 1.0) controlPoint2: CGPointMake(21.0, 5.486)];
[path addCurveToPoint: CGPointMake(11.0, 21.0) controlPoint1: CGPointMake(21.0, 16.514) controlPoint2: CGPointMake(16.514, 21.0)];
[path addCurveToPoint: CGPointMake(1.0, 11.0) controlPoint1: CGPointMake(5.486, 21.0) controlPoint2: CGPointMake(1.0, 16.514)];
[path addCurveToPoint: CGPointMake(11.0, 1.0) controlPoint1: CGPointMake(1.0, 5.486) controlPoint2: CGPointMake(5.486, 1.0)];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 0.6588235294117647 green: 0.6588235294117647 blue: 0.6588235294117647 alpha: 1] setFill];
    [path fill];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(6.0208, 11.0)];
[path addLineToPoint: CGPointMake(15.9788, 11.0)];

    [[UIColor colorWithRed: 0.6588235294117647 green: 0.6588235294117647 blue: 0.6588235294117647 alpha: 1] setStroke];
CGContextSetLineWidth(context, 1.0);
CGContextSetLineCap(context, kCGLineCapRound);
    [path stroke];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(11.7813, 6.8021)];
[path addLineToPoint: CGPointMake(15.9793, 11.0001)];

    [[UIColor colorWithRed: 0.6588235294117647 green: 0.6588235294117647 blue: 0.6588235294117647 alpha: 1] setStroke];
CGContextSetLineWidth(context, 1.0);
CGContextSetLineCap(context, kCGLineCapRound);
    [path stroke];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(11.7813, 15.1978)];
[path addLineToPoint: CGPointMake(15.9793, 10.9998)];

    [[UIColor colorWithRed: 0.6588235294117647 green: 0.6588235294117647 blue: 0.6588235294117647 alpha: 1] setStroke];
CGContextSetLineWidth(context, 1.0);
CGContextSetLineCap(context, kCGLineCapRound);
    [path stroke];
    CGContextConcatCTM(context, CGAffineTransformInvert(CGAffineTransformMakeTranslation(3.0, 3.0)));

CGContextRestoreGState(context);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
    }

@end
