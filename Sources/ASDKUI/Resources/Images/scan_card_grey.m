// -----------------------------------
//
// File was created by Dmitry Kotenko.
//
// -----------------------------------


#import "ASDKUI_Images.h"

@implementation UIImage(scan_card_grey)

+(UIImage *) scan_card_grey {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(28, 28), NO, 0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
UIBezierPath * path = [UIBezierPath bezierPath];
CGContextConcatCTM(context, CGAffineTransformMakeTranslation(1.0, 4.0));

    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(20.0822, 3.676)];
[path addLineToPoint: CGPointMake(5.9182, 3.676)];
[path addCurveToPoint: CGPointMake(3.9182, 5.676) controlPoint1: CGPointMake(4.8182, 3.676) controlPoint2: CGPointMake(3.9182, 4.576)];
[path addLineToPoint: CGPointMake(3.9182, 14.324)];
[path addCurveToPoint: CGPointMake(5.9182, 16.324) controlPoint1: CGPointMake(3.9182, 15.424) controlPoint2: CGPointMake(4.8182, 16.324)];
[path addLineToPoint: CGPointMake(20.0822, 16.324)];
[path addCurveToPoint: CGPointMake(22.0822, 14.324) controlPoint1: CGPointMake(21.1822, 16.324) controlPoint2: CGPointMake(22.0822, 15.424)];
[path addLineToPoint: CGPointMake(22.0822, 5.676)];
[path addCurveToPoint: CGPointMake(20.0822, 3.676) controlPoint1: CGPointMake(22.0822, 4.576) controlPoint2: CGPointMake(21.1822, 3.676)];
[path moveToPoint: CGPointMake(20.0822, 4.676)];
[path addCurveToPoint: CGPointMake(21.0822, 5.676) controlPoint1: CGPointMake(20.6332, 4.676) controlPoint2: CGPointMake(21.0822, 5.125)];
[path addLineToPoint: CGPointMake(21.0822, 14.324)];
[path addCurveToPoint: CGPointMake(20.0822, 15.324) controlPoint1: CGPointMake(21.0822, 14.875) controlPoint2: CGPointMake(20.6332, 15.324)];
[path addLineToPoint: CGPointMake(5.9182, 15.324)];
[path addCurveToPoint: CGPointMake(4.9182, 14.324) controlPoint1: CGPointMake(5.3662, 15.324) controlPoint2: CGPointMake(4.9182, 14.875)];
[path addLineToPoint: CGPointMake(4.9182, 5.676)];
[path addCurveToPoint: CGPointMake(5.9182, 4.676) controlPoint1: CGPointMake(4.9182, 5.125) controlPoint2: CGPointMake(5.3662, 4.676)];
[path addLineToPoint: CGPointMake(20.0822, 4.676)];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 0.5725490196078431 green: 0.6 blue: 0.6352941176470588 alpha: 1] setFill];
    [path fill];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(4.3906, 6.2649)];
[path addLineToPoint: CGPointMake(21.5646, 6.2649)];

    [[UIColor colorWithRed: 0.5725490196078431 green: 0.6 blue: 0.6352941176470588 alpha: 1] setStroke];
CGContextSetLineWidth(context, 1.0);
CGContextSetLineJoin(context, kCGLineJoinRound);
CGContextSetLineCap(context, kCGLineCapRound);
    [path stroke];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(4.3906, 9.0751)];
[path addLineToPoint: CGPointMake(21.5646, 9.0751)];

    [[UIColor colorWithRed: 0.5725490196078431 green: 0.6 blue: 0.6352941176470588 alpha: 1] setStroke];
CGContextSetLineWidth(context, 1.0);
CGContextSetLineJoin(context, kCGLineJoinRound);
CGContextSetLineCap(context, kCGLineCapRound);
    [path stroke];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(25.4896, 15.2984)];
[path addLineToPoint: CGPointMake(25.4896, 19.1464)];
[path addCurveToPoint: CGPointMake(24.7916, 19.8444) controlPoint1: CGPointMake(25.4896, 19.5324) controlPoint2: CGPointMake(25.1766, 19.8444)];
[path addLineToPoint: CGPointMake(20.9646, 19.8444)];

    [[UIColor colorWithRed: 0.5725490196078431 green: 0.6 blue: 0.6352941176470588 alpha: 1] setStroke];
CGContextSetLineWidth(context, 1.0);
CGContextSetLineJoin(context, kCGLineJoinRound);
CGContextSetLineCap(context, kCGLineCapRound);
    [path stroke];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(0.5104, 4.7016)];
[path addLineToPoint: CGPointMake(0.5104, 0.8536)];
[path addCurveToPoint: CGPointMake(1.2084, 0.1556) controlPoint1: CGPointMake(0.5104, 0.4676) controlPoint2: CGPointMake(0.8234, 0.1556)];
[path addLineToPoint: CGPointMake(5.0354, 0.1556)];

    [[UIColor colorWithRed: 0.5725490196078431 green: 0.6 blue: 0.6352941176470588 alpha: 1] setStroke];
CGContextSetLineWidth(context, 1.0);
CGContextSetLineJoin(context, kCGLineJoinRound);
CGContextSetLineCap(context, kCGLineCapRound);
    [path stroke];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(20.9538, 0.1658)];
[path addLineToPoint: CGPointMake(24.8018, 0.1658)];
[path addCurveToPoint: CGPointMake(25.4998, 0.8638) controlPoint1: CGPointMake(25.1878, 0.1658) controlPoint2: CGPointMake(25.4998, 0.4788)];
[path addLineToPoint: CGPointMake(25.4998, 4.6908)];

    [[UIColor colorWithRed: 0.5725490196078431 green: 0.6 blue: 0.6352941176470588 alpha: 1] setStroke];
CGContextSetLineWidth(context, 1.0);
CGContextSetLineJoin(context, kCGLineJoinRound);
CGContextSetLineCap(context, kCGLineCapRound);
    [path stroke];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(5.0462, 19.8342)];
[path addLineToPoint: CGPointMake(1.1982, 19.8342)];
[path addCurveToPoint: CGPointMake(0.5002, 19.1362) controlPoint1: CGPointMake(0.8122, 19.8342) controlPoint2: CGPointMake(0.5002, 19.5212)];
[path addLineToPoint: CGPointMake(0.5002, 15.3092)];

    [[UIColor colorWithRed: 0.5725490196078431 green: 0.6 blue: 0.6352941176470588 alpha: 1] setStroke];
CGContextSetLineWidth(context, 1.0);
CGContextSetLineJoin(context, kCGLineJoinRound);
CGContextSetLineCap(context, kCGLineCapRound);
    [path stroke];
    CGContextConcatCTM(context, CGAffineTransformInvert(CGAffineTransformMakeTranslation(1.0, 4.0)));

CGContextRestoreGState(context);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
    }

@end
