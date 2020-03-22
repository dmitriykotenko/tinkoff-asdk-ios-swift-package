// -----------------------------------
//
// File was created by Dmitry Kotenko.
//
// -----------------------------------


#import "ASDKUI_Images.h"

@implementation UIImage(psIconMaestro)

+(UIImage *) psIconMaestro {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(24, 11), NO, 0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
UIBezierPath * path = [UIBezierPath bezierPath];
CGContextConcatCTM(context, CGAffineTransformMakeTranslation(3.0, 0.0));

    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(7.9155, 7.7779)];
[path addCurveToPoint: CGPointMake(7.8375, 7.6339) controlPoint1: CGPointMake(7.8905, 7.7289) controlPoint2: CGPointMake(7.8605, 7.6829)];
[path addCurveToPoint: CGPointMake(7.9155, 7.7779) controlPoint1: CGPointMake(7.8605, 7.6829) controlPoint2: CGPointMake(7.8905, 7.7289)];
[path moveToPoint: CGPointMake(7.6935, 3.7099)];
[path addCurveToPoint: CGPointMake(7.8015, 3.4359) controlPoint1: CGPointMake(7.7295, 3.6179) controlPoint2: CGPointMake(7.7605, 3.5249)];
[path addCurveToPoint: CGPointMake(7.6935, 3.7099) controlPoint1: CGPointMake(7.7615, 3.5249) controlPoint2: CGPointMake(7.7285, 3.6179)];
[path moveToPoint: CGPointMake(8.2575, 8.3369)];
[path addCurveToPoint: CGPointMake(8.0975, 8.1139) controlPoint1: CGPointMake(8.2055, 8.2619) controlPoint2: CGPointMake(8.1455, 8.1919)];
[path addLineToPoint: CGPointMake(9.9005, 8.1139)];
[path addCurveToPoint: CGPointMake(10.2365, 7.4679) controlPoint1: CGPointMake(10.0275, 7.9079) controlPoint2: CGPointMake(10.1405, 7.6929)];
[path addCurveToPoint: CGPointMake(10.3135, 7.2759) controlPoint1: CGPointMake(10.2645, 7.4049) controlPoint2: CGPointMake(10.2885, 7.3399)];
[path addCurveToPoint: CGPointMake(10.3745, 7.0699) controlPoint1: CGPointMake(10.3385, 7.2089) controlPoint2: CGPointMake(10.3525, 7.1379)];
[path addLineToPoint: CGPointMake(7.6075, 7.0699)];
[path addCurveToPoint: CGPointMake(7.5455, 6.8429) controlPoint1: CGPointMake(7.5835, 6.9959) controlPoint2: CGPointMake(7.5665, 6.9179)];
[path addCurveToPoint: CGPointMake(7.5035, 6.6889) controlPoint1: CGPointMake(7.5305, 6.7909) controlPoint2: CGPointMake(7.5155, 6.7409)];
[path addCurveToPoint: CGPointMake(7.3815, 6.0269) controlPoint1: CGPointMake(7.4495, 6.4729) controlPoint2: CGPointMake(7.4055, 6.2529)];
[path addLineToPoint: CGPointMake(10.5965, 6.0269)];
[path addCurveToPoint: CGPointMake(10.6475, 5.5049) controlPoint1: CGPointMake(10.6145, 5.8529) controlPoint2: CGPointMake(10.6475, 5.6829)];
[path addCurveToPoint: CGPointMake(10.6105, 4.9829) controlPoint1: CGPointMake(10.6475, 5.3279) controlPoint2: CGPointMake(10.6285, 5.1549)];
[path addLineToPoint: CGPointMake(7.3805, 4.9829)];
[path addCurveToPoint: CGPointMake(7.3955, 4.8919) controlPoint1: CGPointMake(7.3835, 4.9519) controlPoint2: CGPointMake(7.3915, 4.9229)];
[path addCurveToPoint: CGPointMake(7.4365, 4.6309) controlPoint1: CGPointMake(7.4055, 4.8039) controlPoint2: CGPointMake(7.4215, 4.7179)];
[path addCurveToPoint: CGPointMake(7.5095, 4.2869) controlPoint1: CGPointMake(7.4575, 4.5149) controlPoint2: CGPointMake(7.4815, 4.3999)];
[path addCurveToPoint: CGPointMake(7.5835, 4.0159) controlPoint1: CGPointMake(7.5325, 4.1959) controlPoint2: CGPointMake(7.5555, 4.1049)];
[path addCurveToPoint: CGPointMake(7.6035, 3.9389) controlPoint1: CGPointMake(7.5905, 3.9909) controlPoint2: CGPointMake(7.5955, 3.9649)];
[path addLineToPoint: CGPointMake(10.3855, 3.9389)];
[path addCurveToPoint: CGPointMake(10.3025, 3.7099) controlPoint1: CGPointMake(10.3605, 3.8619) controlPoint2: CGPointMake(10.3315, 3.7859)];
[path addCurveToPoint: CGPointMake(10.1945, 3.4369) controlPoint1: CGPointMake(10.2675, 3.6179) controlPoint2: CGPointMake(10.2345, 3.5259)];
[path addCurveToPoint: CGPointMake(9.9105, 2.8959) controlPoint1: CGPointMake(10.1095, 3.2509) controlPoint2: CGPointMake(10.0165, 3.0689)];
[path addLineToPoint: CGPointMake(8.0835, 2.8959)];
[path addCurveToPoint: CGPointMake(8.4995, 2.3129) controlPoint1: CGPointMake(8.2085, 2.6909) controlPoint2: CGPointMake(8.3475, 2.4969)];
[path addCurveToPoint: CGPointMake(8.7545, 2.0449) controlPoint1: CGPointMake(8.5775, 2.2169) controlPoint2: CGPointMake(8.6695, 2.1339)];
[path addCurveToPoint: CGPointMake(8.9905, 1.7969) controlPoint1: CGPointMake(8.8335, 1.9619) controlPoint2: CGPointMake(8.9055, 1.8739)];
[path addCurveToPoint: CGPointMake(8.9945, 1.7929) controlPoint1: CGPointMake(8.9915, 1.7959) controlPoint2: CGPointMake(8.9935, 1.7949)];
[path addCurveToPoint: CGPointMake(5.6515, 0.5089) controlPoint1: CGPointMake(8.1095, 0.9949) controlPoint2: CGPointMake(6.9375, 0.5089)];
[path addCurveToPoint: CGPointMake(0.6565, 5.5049) controlPoint1: CGPointMake(2.8935, 0.5089) controlPoint2: CGPointMake(0.6565, 2.7459)];
[path addCurveToPoint: CGPointMake(5.6515, 10.4999) controlPoint1: CGPointMake(0.6565, 8.2639) controlPoint2: CGPointMake(2.8935, 10.4999)];
[path addCurveToPoint: CGPointMake(9.0055, 9.2069) controlPoint1: CGPointMake(6.9425, 10.4999) controlPoint2: CGPointMake(8.1185, 10.0099)];
[path addCurveToPoint: CGPointMake(8.4345, 8.5839) controlPoint1: CGPointMake(8.7955, 9.0179) controlPoint2: CGPointMake(8.6085, 8.8059)];
[path addCurveToPoint: CGPointMake(8.2575, 8.3369) controlPoint1: CGPointMake(8.3715, 8.5039) controlPoint2: CGPointMake(8.3155, 8.4199)];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 0.0 green: 0.6313725490196078 blue: 0.8941176470588236 alpha: 1] setFill];
    [path fill];
    
    path = [UIBezierPath bezierPath];

    [path moveToPoint: CGPointMake(9.8842, 8.1453)];
[path addCurveToPoint: CGPointMake(9.2812, 8.9343) controlPoint1: CGPointMake(9.7072, 8.4273) controlPoint2: CGPointMake(9.5092, 8.6943)];
[path addCurveToPoint: CGPointMake(9.8842, 8.1453) controlPoint1: CGPointMake(9.5082, 8.6933) controlPoint2: CGPointMake(9.7082, 8.4273)];
[path moveToPoint: CGPointMake(10.5602, 6.3993)];
[path addCurveToPoint: CGPointMake(10.5422, 6.5093) controlPoint1: CGPointMake(10.5532, 6.4363) controlPoint2: CGPointMake(10.5502, 6.4733)];
[path addCurveToPoint: CGPointMake(10.5602, 6.3993) controlPoint1: CGPointMake(10.5502, 6.4733) controlPoint2: CGPointMake(10.5532, 6.4353)];
[path moveToPoint: CGPointMake(10.4142, 4.0193)];
[path addCurveToPoint: CGPointMake(10.4882, 4.2893) controlPoint1: CGPointMake(10.4422, 4.1073) controlPoint2: CGPointMake(10.4652, 4.1983)];
[path addCurveToPoint: CGPointMake(10.4142, 4.0193) controlPoint1: CGPointMake(10.4652, 4.1983) controlPoint2: CGPointMake(10.4422, 4.1073)];
[path moveToPoint: CGPointMake(10.5622, 4.6353)];
[path addCurveToPoint: CGPointMake(10.6042, 4.8953) controlPoint1: CGPointMake(10.5772, 4.7213) controlPoint2: CGPointMake(10.5932, 4.8073)];
[path addCurveToPoint: CGPointMake(10.5622, 4.6353) controlPoint1: CGPointMake(10.5932, 4.8073) controlPoint2: CGPointMake(10.5782, 4.7213)];
[path moveToPoint: CGPointMake(12.3482, 0.5003)];
[path addCurveToPoint: CGPointMake(8.9942, 1.7933) controlPoint1: CGPointMake(11.0572, 0.5003) controlPoint2: CGPointMake(9.8812, 0.9893)];
[path addCurveToPoint: CGPointMake(8.9902, 1.7973) controlPoint1: CGPointMake(8.9932, 1.7943) controlPoint2: CGPointMake(8.9912, 1.7963)];
[path addCurveToPoint: CGPointMake(8.7542, 2.0443) controlPoint1: CGPointMake(8.9062, 1.8743) controlPoint2: CGPointMake(8.8332, 1.9623)];
[path addCurveToPoint: CGPointMake(8.4992, 2.3123) controlPoint1: CGPointMake(8.6692, 2.1333) controlPoint2: CGPointMake(8.5782, 2.2173)];
[path addCurveToPoint: CGPointMake(8.0832, 2.8963) controlPoint1: CGPointMake(8.3472, 2.4963) controlPoint2: CGPointMake(8.2082, 2.6913)];
[path addLineToPoint: CGPointMake(9.9102, 2.8963)];
[path addCurveToPoint: CGPointMake(10.1952, 3.4373) controlPoint1: CGPointMake(10.0172, 3.0693) controlPoint2: CGPointMake(10.1092, 3.2503)];
[path addCurveToPoint: CGPointMake(10.3022, 3.7093) controlPoint1: CGPointMake(10.2352, 3.5253) controlPoint2: CGPointMake(10.2672, 3.6183)];
[path addCurveToPoint: CGPointMake(10.3862, 3.9393) controlPoint1: CGPointMake(10.3322, 3.7853) controlPoint2: CGPointMake(10.3602, 3.8613)];
[path addLineToPoint: CGPointMake(7.6042, 3.9393)];
[path addCurveToPoint: CGPointMake(7.5832, 4.0163) controlPoint1: CGPointMake(7.5952, 3.9643) controlPoint2: CGPointMake(7.5912, 3.9913)];
[path addCurveToPoint: CGPointMake(7.5102, 4.2863) controlPoint1: CGPointMake(7.5552, 4.1053) controlPoint2: CGPointMake(7.5322, 4.1963)];
[path addCurveToPoint: CGPointMake(7.4362, 4.6303) controlPoint1: CGPointMake(7.4812, 4.4003) controlPoint2: CGPointMake(7.4572, 4.5143)];
[path addCurveToPoint: CGPointMake(7.3952, 4.8913) controlPoint1: CGPointMake(7.4212, 4.7173) controlPoint2: CGPointMake(7.4062, 4.8033)];
[path addCurveToPoint: CGPointMake(7.3802, 4.9833) controlPoint1: CGPointMake(7.3912, 4.9223) controlPoint2: CGPointMake(7.3842, 4.9523)];
[path addLineToPoint: CGPointMake(10.6102, 4.9833)];
[path addCurveToPoint: CGPointMake(10.6472, 5.5043) controlPoint1: CGPointMake(10.6282, 5.1553) controlPoint2: CGPointMake(10.6472, 5.3273)];
[path addCurveToPoint: CGPointMake(10.5962, 6.0263) controlPoint1: CGPointMake(10.6472, 5.6833) controlPoint2: CGPointMake(10.6142, 5.8533)];
[path addLineToPoint: CGPointMake(7.3812, 6.0263)];
[path addCurveToPoint: CGPointMake(7.5032, 6.6893) controlPoint1: CGPointMake(7.4052, 6.2533) controlPoint2: CGPointMake(7.4492, 6.4733)];
[path addCurveToPoint: CGPointMake(7.5452, 6.8423) controlPoint1: CGPointMake(7.5162, 6.7413) controlPoint2: CGPointMake(7.5312, 6.7913)];
[path addCurveToPoint: CGPointMake(7.6082, 7.0703) controlPoint1: CGPointMake(7.5662, 6.9183) controlPoint2: CGPointMake(7.5832, 6.9963)];
[path addLineToPoint: CGPointMake(10.3752, 7.0703)];
[path addCurveToPoint: CGPointMake(10.3132, 7.2753) controlPoint1: CGPointMake(10.3522, 7.1383) controlPoint2: CGPointMake(10.3382, 7.2093)];
[path addCurveToPoint: CGPointMake(10.2362, 7.4683) controlPoint1: CGPointMake(10.2882, 7.3403) controlPoint2: CGPointMake(10.2642, 7.4043)];
[path addCurveToPoint: CGPointMake(9.9002, 8.1133) controlPoint1: CGPointMake(10.1402, 7.6923) controlPoint2: CGPointMake(10.0272, 7.9073)];
[path addLineToPoint: CGPointMake(8.0972, 8.1133)];
[path addCurveToPoint: CGPointMake(8.2572, 8.3373) controlPoint1: CGPointMake(8.1462, 8.1923) controlPoint2: CGPointMake(8.2052, 8.2613)];
[path addCurveToPoint: CGPointMake(8.4342, 8.5833) controlPoint1: CGPointMake(8.3152, 8.4203) controlPoint2: CGPointMake(8.3722, 8.5043)];
[path addCurveToPoint: CGPointMake(9.0052, 9.2073) controlPoint1: CGPointMake(8.6092, 8.8063) controlPoint2: CGPointMake(8.7952, 9.0173)];
[path addCurveToPoint: CGPointMake(12.3482, 10.4903) controlPoint1: CGPointMake(9.8912, 10.0043) controlPoint2: CGPointMake(11.0622, 10.4903)];
[path addCurveToPoint: CGPointMake(17.3432, 5.4953) controlPoint1: CGPointMake(15.1072, 10.4903) controlPoint2: CGPointMake(17.3432, 8.2543)];
[path addCurveToPoint: CGPointMake(12.3482, 0.5003) controlPoint1: CGPointMake(17.3432, 2.7363) controlPoint2: CGPointMake(15.1072, 0.5003)];

    [path closePath];
    path.usesEvenOddFillRule = YES;
    
    [[UIColor colorWithRed: 0.9294117647058824 green: 0.10980392156862745 blue: 0.1411764705882353 alpha: 1] setFill];
    [path fill];
    CGContextConcatCTM(context, CGAffineTransformInvert(CGAffineTransformMakeTranslation(3.0, 0.0)));

CGContextRestoreGState(context);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
    }

@end
