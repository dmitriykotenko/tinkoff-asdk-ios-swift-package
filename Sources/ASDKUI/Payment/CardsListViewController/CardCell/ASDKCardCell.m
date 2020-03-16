//
//  ASDKCardCell.m
//  ASDKUI
//
// Copyright (c) 2016 TCS Bank
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "ASDKCardCell.h"

#import "ASDKUI_Images.h"

@interface ASDKCardCell ()

@property (weak, nonatomic) IBOutlet UIImageView *checkmarkImageView;

@end

@implementation ASDKCardCell

+ (instancetype)newCell
{
    return [[self alloc] init];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    [self privateInit];
    return self;
}

- (instancetype)init
{
    self = [super init];
    [self privateInit];
    return self;
}

- (void)privateInit
{
    [self createPaymentSystemLogo];
    [self createCardNameLabel];
    [self createCheckmark];

    self.selectedBackgroundView = [[UIView alloc] init];
    self.selectedBackgroundView.backgroundColor = [UIColor clearColor];
}

- (void)createPaymentSystemLogo
{
    UIImageView *paymentSystemLogoImageView = [[UIImageView alloc] init];
    
    paymentSystemLogoImageView.translatesAutoresizingMaskIntoConstraints = NO;
    paymentSystemLogoImageView.contentMode = UIViewContentModeScaleToFill;
    
    [[paymentSystemLogoImageView.widthAnchor constraintEqualToConstant:24]
     setActive:YES];
    
    [[paymentSystemLogoImageView.heightAnchor constraintEqualToConstant:11]
     setActive:YES];

    [self.contentView addSubview:paymentSystemLogoImageView];
    
    [[paymentSystemLogoImageView.centerYAnchor constraintEqualToAnchor:self.contentView.centerYAnchor]
     setActive:YES];
    
    [[paymentSystemLogoImageView.leadingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.leadingAnchor
      constant:7] setActive:YES];
    
    self.paymentSystemLogoImageView = paymentSystemLogoImageView;
}

- (void)createCardNameLabel
{
    UILabel *cardNameLabel = [[UILabel alloc] init];

    cardNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    cardNameLabel.contentMode = UIViewContentModeLeft;
    
    cardNameLabel.font = [UIFont systemFontOfSize:17 weight:UIFontWeightLight];
    cardNameLabel.textAlignment = NSTextAlignmentNatural;
    cardNameLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
    
    [[cardNameLabel.widthAnchor constraintEqualToConstant:42] setActive:YES];    
    [cardNameLabel setContentCompressionResistancePriority:250 forAxis:UILayoutConstraintAxisHorizontal];

    [self.contentView addSubview:cardNameLabel];
    
    [[cardNameLabel.centerYAnchor
      constraintEqualToAnchor:self.contentView.centerYAnchor]
     setActive:YES];
    
    [[cardNameLabel.leadingAnchor
      constraintEqualToAnchor:self.paymentSystemLogoImageView.trailingAnchor
      constant:8] setActive:YES];
    
    self.cardNameLabel = cardNameLabel;
}

- (void)createCheckmark
{
    UIImageView * checkmarkImageView = [[UIImageView alloc] init];
    
    checkmarkImageView.translatesAutoresizingMaskIntoConstraints = NO;
    checkmarkImageView.contentMode = UIViewContentModeScaleToFill;
    
    checkmarkImageView.image = [UIImage check_green];
    
    [[checkmarkImageView.widthAnchor constraintEqualToConstant:20] setActive:YES];
    [[checkmarkImageView.heightAnchor constraintEqualToConstant:20] setActive:YES];
    
    [self.contentView addSubview:checkmarkImageView];
    
    [[checkmarkImageView.centerYAnchor
      constraintEqualToAnchor:self.contentView.centerYAnchor]
     setActive:YES];

    [[checkmarkImageView.trailingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.trailingAnchor]
     setActive:YES];
    
    self.checkmarkImageView = checkmarkImageView;
}

- (void)setCheck:(BOOL)value
{
	CGFloat alpha = value ? 1.0f : 0.0f;
	
	[self.checkmarkImageView setAlpha:alpha];
}

- (void)setCard:(ASDKCard *)card
{
    _card = card;
    
    [self configureCellWithCard:_card];
}

- (void)configureCellWithCard:(ASDKCard *)card
{
    [self.cardNameLabel setText:[card panExtraShort]];
    [self setPaymentSystemLogoImageWithCardType:_card.cardType];
}

- (void)setPaymentSystemLogoImageWithCardType:(ASDKCardType)type
{
    UIImage *image = nil;
    
    switch (type)
    {
        case ASDKCardTypeVisa:
        {
            image = [UIImage psIconVisa];
        }
            break;
        case ASDKCardTypeMastercard:
        {
            image = [UIImage psIconMastercard];
        }
            break;
        case ASDKCardTypeMaestro:
        {
            image = [UIImage psIconMaestro];
        }
            break;
			
		case ASDKCardTypeMIR:
		{
			image = [UIImage psIconMir];
		}
			break;
			
		default:
			image = [UIImage psIconMastercard];
			break;
    }
	
    [self.paymentSystemLogoImageView setImage:image];
}

@end
