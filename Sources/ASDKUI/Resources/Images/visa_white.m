#import "ASDKUI_Images.h"

@implementation UIImage(visa_white)

+(UIImage *) visa_white {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(24, 11), NO, 0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
UIBezierPath * path = [UIBezierPath bezierPath];
CGContextConcatCTM(context, CGAffineTransformMakeTranslation(0.0, 1.0));

    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(6.8251, 0.7542)];
[path addLineToPoint: CGPointMake(4.9241, 5.8832)];
[path addLineToPoint: CGPointMake(4.7201, 4.8412)];
[path addCurveToPoint: CGPointMake(2.1861, 2.2812) controlPoint1: CGPointMake(4.3121, 3.7472) controlPoint2: CGPointMake(3.3111, 2.7432)];
[path addLineToPoint: CGPointMake(3.7681, 8.2652)];
[path addLineToPoint: CGPointMake(5.8241, 8.2642)];
[path addLineToPoint: CGPointMake(8.8841, 0.7542)];
[path addLineToPoint: CGPointMake(6.8251, 0.7542)];
[path closePath];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 1.0 green: 1.0 blue: 1.0 alpha: 1] setFill];
    [path fill];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(8.455, 8.2717)];
[path addLineToPoint: CGPointMake(9.67, 0.7477)];
[path addLineToPoint: CGPointMake(11.613, 0.7477)];
[path addLineToPoint: CGPointMake(10.398, 8.2717)];
[path closePath];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 1.0 green: 1.0 blue: 1.0 alpha: 1] setFill];
    [path fill];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(17.4446, 0.9326)];
[path addCurveToPoint: CGPointMake(15.7036, 0.6166) controlPoint1: CGPointMake(17.0606, 0.7816) controlPoint2: CGPointMake(16.4556, 0.6166)];
[path addCurveToPoint: CGPointMake(12.4196, 3.0996) controlPoint1: CGPointMake(13.7826, 0.6166) controlPoint2: CGPointMake(12.4306, 1.6376)];
[path addCurveToPoint: CGPointMake(14.1216, 5.1436) controlPoint1: CGPointMake(12.4076, 4.1816) controlPoint2: CGPointMake(13.3846, 4.7846)];
[path addCurveToPoint: CGPointMake(15.1296, 6.0776) controlPoint1: CGPointMake(14.8776, 5.5126) controlPoint2: CGPointMake(15.1326, 5.7486)];
[path addCurveToPoint: CGPointMake(13.9666, 6.8126) controlPoint1: CGPointMake(15.1246, 6.5816) controlPoint2: CGPointMake(14.5256, 6.8126)];
[path addCurveToPoint: CGPointMake(12.1366, 6.4176) controlPoint1: CGPointMake(13.1886, 6.8126) controlPoint2: CGPointMake(12.7756, 6.6986)];
[path addLineToPoint: CGPointMake(11.8866, 6.2986)];
[path addLineToPoint: CGPointMake(11.6156, 7.9826)];
[path addCurveToPoint: CGPointMake(13.7796, 8.3836) controlPoint1: CGPointMake(12.0686, 8.1916) controlPoint2: CGPointMake(12.9076, 8.3736)];
[path addCurveToPoint: CGPointMake(17.1626, 5.8136) controlPoint1: CGPointMake(15.8206, 8.3836) controlPoint2: CGPointMake(17.1476, 7.3746)];
[path addCurveToPoint: CGPointMake(15.5306, 3.7696) controlPoint1: CGPointMake(17.1696, 4.9556) controlPoint2: CGPointMake(16.6516, 4.3056)];
[path addCurveToPoint: CGPointMake(14.4406, 2.8356) controlPoint1: CGPointMake(14.8516, 3.4196) controlPoint2: CGPointMake(14.4356, 3.1896)];
[path addCurveToPoint: CGPointMake(15.5526, 2.1886) controlPoint1: CGPointMake(14.4406, 2.5236) controlPoint2: CGPointMake(14.7926, 2.1886)];
[path addCurveToPoint: CGPointMake(17.0066, 2.4776) controlPoint1: CGPointMake(16.1886, 2.1786) controlPoint2: CGPointMake(16.6486, 2.3246)];
[path addLineToPoint: CGPointMake(17.1816, 2.5636)];
[path addLineToPoint: CGPointMake(17.4446, 0.9326)];
[path closePath];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 1.0 green: 1.0 blue: 1.0 alpha: 1] setFill];
    [path fill];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(22.4279, 0.7554)];
[path addLineToPoint: CGPointMake(20.9269, 0.7554)];
[path addCurveToPoint: CGPointMake(19.9089, 1.3794) controlPoint1: CGPointMake(20.4609, 0.7554) controlPoint2: CGPointMake(20.1119, 0.8884)];
[path addLineToPoint: CGPointMake(17.0229, 8.2744)];
[path addLineToPoint: CGPointMake(19.0639, 8.2744)];
[path addCurveToPoint: CGPointMake(19.4719, 7.1434) controlPoint1: CGPointMake(19.0639, 8.2744) controlPoint2: CGPointMake(19.3969, 7.3464)];
[path addCurveToPoint: CGPointMake(21.9609, 7.1474) controlPoint1: CGPointMake(19.6949, 7.1434) controlPoint2: CGPointMake(21.6769, 7.1474)];
[path addCurveToPoint: CGPointMake(22.1969, 8.2744) controlPoint1: CGPointMake(22.0179, 7.4094) controlPoint2: CGPointMake(22.1969, 8.2744)];
[path addLineToPoint: CGPointMake(23.9999, 8.2744)];
[path addLineToPoint: CGPointMake(22.4279, 0.7554)];
[path closePath];
[path moveToPoint: CGPointMake(20.0309, 5.6044)];
[path addCurveToPoint: CGPointMake(20.8049, 3.5014) controlPoint1: CGPointMake(20.1919, 5.1714) controlPoint2: CGPointMake(20.8049, 3.5014)];
[path addCurveToPoint: CGPointMake(21.0629, 2.7834) controlPoint1: CGPointMake(20.7939, 3.5214) controlPoint2: CGPointMake(20.9649, 3.0654)];
[path addLineToPoint: CGPointMake(21.1939, 3.4324)];
[path addCurveToPoint: CGPointMake(21.6439, 5.6044) controlPoint1: CGPointMake(21.1939, 3.4324) controlPoint2: CGPointMake(21.5669, 5.2274)];
[path addLineToPoint: CGPointMake(20.0309, 5.6044)];
[path closePath];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 1.0 green: 1.0 blue: 1.0 alpha: 1] setFill];
    [path fill];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(3.1585, 0.7491)];
[path addLineToPoint: CGPointMake(0.0265, 0.7491)];
[path addLineToPoint: CGPointMake(5.0E-4, 0.9051)];
[path addCurveToPoint: CGPointMake(4.7205, 4.8411) controlPoint1: CGPointMake(2.1555, 1.4471) controlPoint2: CGPointMake(3.9205, 2.6211)];
[path addLineToPoint: CGPointMake(4.0395, 1.3841)];
[path addCurveToPoint: CGPointMake(3.1585, 0.7491) controlPoint1: CGPointMake(3.9225, 0.9071) controlPoint2: CGPointMake(3.5805, 0.7661)];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 1.0 green: 1.0 blue: 1.0 alpha: 1] setFill];
    [path fill];
    CGContextConcatCTM(context, CGAffineTransformInvert(CGAffineTransformMakeTranslation(0.0, 1.0)));

CGContextRestoreGState(context);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
    }

@end
