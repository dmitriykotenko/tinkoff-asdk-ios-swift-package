// -----------------------------------
//
// File was created by Dmitry Kotenko.
//
// -----------------------------------


#import "ASDKUI_Images.h"

@implementation UIImage(psIconMir)

+(UIImage *) psIconMir {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(24, 11), NO, 0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
UIBezierPath * path = [UIBezierPath bezierPath];
CGContextConcatCTM(context, CGAffineTransformMakeTranslation(0.0, 2.0));

    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(13.3623, 0.8304)];
[path addLineToPoint: CGPointMake(11.8463, 4.1154)];
[path addLineToPoint: CGPointMake(11.6923, 4.1154)];
[path addLineToPoint: CGPointMake(11.6923, 0.1154)];
[path addLineToPoint: CGPointMake(9.5383, 0.1154)];
[path addLineToPoint: CGPointMake(9.5383, 6.8844)];
[path addLineToPoint: CGPointMake(11.3663, 6.8844)];
[path addCurveToPoint: CGPointMake(12.4843, 6.1694) controlPoint1: CGPointMake(11.8463, 6.8844) controlPoint2: CGPointMake(12.2823, 6.6054)];
[path addLineToPoint: CGPointMake(14.0003, 2.8844)];
[path addLineToPoint: CGPointMake(14.1543, 2.8844)];
[path addLineToPoint: CGPointMake(14.1543, 6.8844)];
[path addLineToPoint: CGPointMake(16.3073, 6.8844)];
[path addLineToPoint: CGPointMake(16.3073, 0.1154)];
[path addLineToPoint: CGPointMake(14.4793, 0.1154)];
[path addCurveToPoint: CGPointMake(13.3623, 0.8304) controlPoint1: CGPointMake(13.9993, 0.1154) controlPoint2: CGPointMake(13.5633, 0.3944)];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 0.23921568627450981 green: 0.6470588235294118 blue: 0.21176470588235294 alpha: 1] setFill];
    [path fill];
    // MASK Mask(mask-2,NamedColor(white),path-1)
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(5.2819, 1.005)];
[path addLineToPoint: CGPointMake(4.3849, 4.115)];
[path addLineToPoint: CGPointMake(4.2309, 4.115)];
[path addLineToPoint: CGPointMake(3.3339, 1.005)];
[path addCurveToPoint: CGPointMake(2.1509, 0.115) controlPoint1: CGPointMake(3.1819, 0.478) controlPoint2: CGPointMake(2.6999, 0.115)];
[path addLineToPoint: CGPointMake(-1.0E-4, 0.115)];
[path addLineToPoint: CGPointMake(-1.0E-4, 6.885)];
[path addLineToPoint: CGPointMake(2.1539, 6.885)];
[path addLineToPoint: CGPointMake(2.1539, 2.885)];
[path addLineToPoint: CGPointMake(2.3079, 2.885)];
[path addLineToPoint: CGPointMake(3.5389, 6.885)];
[path addLineToPoint: CGPointMake(5.0769, 6.885)];
[path addLineToPoint: CGPointMake(6.3079, 2.885)];
[path addLineToPoint: CGPointMake(6.4619, 2.885)];
[path addLineToPoint: CGPointMake(6.4619, 6.885)];
[path addLineToPoint: CGPointMake(8.6159, 6.885)];
[path addLineToPoint: CGPointMake(8.6159, 0.115)];
[path addLineToPoint: CGPointMake(6.4649, 0.115)];
[path addCurveToPoint: CGPointMake(5.2819, 1.005) controlPoint1: CGPointMake(5.9159, 0.115) controlPoint2: CGPointMake(5.4339, 0.478)];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 0.23921568627450981 green: 0.6470588235294118 blue: 0.21176470588235294 alpha: 1] setFill];
    [path fill];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(17.2307, 3.1922)];
[path addLineToPoint: CGPointMake(17.2307, 6.8842)];
[path addLineToPoint: CGPointMake(19.3807, 6.8842)];
[path addLineToPoint: CGPointMake(19.3807, 4.7302)];
[path addLineToPoint: CGPointMake(21.6917, 4.7302)];
[path addCurveToPoint: CGPointMake(23.8657, 3.1922) controlPoint1: CGPointMake(22.6967, 4.7302) controlPoint2: CGPointMake(23.5487, 4.0882)];
[path addLineToPoint: CGPointMake(17.2307, 3.1922)];
[path closePath];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 0.23921568627450981 green: 0.6470588235294118 blue: 0.21176470588235294 alpha: 1] setFill];
    [path fill];
    CGContextConcatCTM(context, CGAffineTransformMakeTranslation(16.0, 0.0));
// MASK Mask(mask-4,NamedColor(white),path-3)
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(5.6922, 0.1154)];
[path addLineToPoint: CGPointMake(0.9232, 0.1154)];
[path addCurveToPoint: CGPointMake(4.2502, 2.8844) controlPoint1: CGPointMake(1.2122, 1.6904) controlPoint2: CGPointMake(2.5912, 2.8844)];
[path addLineToPoint: CGPointMake(7.9532, 2.8844)];
[path addCurveToPoint: CGPointMake(8.0002, 2.4234) controlPoint1: CGPointMake(7.9842, 2.7354) controlPoint2: CGPointMake(8.0002, 2.5814)];
[path addCurveToPoint: CGPointMake(5.6922, 0.1154) controlPoint1: CGPointMake(8.0002, 1.1484) controlPoint2: CGPointMake(6.9672, 0.1154)];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 0.0 green: 0.6549019607843137 blue: 0.8901960784313725 alpha: 1] setFill];
    [path fill];
    CGContextConcatCTM(context, CGAffineTransformInvert(CGAffineTransformMakeTranslation(16.0, 0.0)));
CGContextConcatCTM(context, CGAffineTransformInvert(CGAffineTransformMakeTranslation(0.0, 2.0)));

CGContextRestoreGState(context);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
    }

@end
