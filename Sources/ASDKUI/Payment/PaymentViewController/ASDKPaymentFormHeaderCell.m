//
//  ASDKPaymentFormHeaderCell.m
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

#import "ASDKPaymentFormHeaderCell.h"
#import "ASDKDesign.h"

@implementation ASDKPaymentFormHeaderCell

+ (instancetype)cell
{
    return [[self alloc] init];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    [self privateInit];
    
    return self;
}

- (void)privateInit {
    [self createTitleLabel];
    [self createDescriptionLabel];
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    [self.contentView setBackgroundColor:[ASDKDesign colorTableViewBackground]];
}

- (void)createTitleLabel
{
    UILabel * titleLabel = [[UILabel alloc] init];
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    titleLabel.contentMode = UIViewContentModeLeft;
    
    titleLabel.font = [UIFont systemFontOfSize:17];
    titleLabel.textColor = [ASDKDesign colorTextDark];
    titleLabel.numberOfLines = 0;
    titleLabel.lineBreakMode = NSLineBreakByWordWrapping;

    [self.contentView addSubview:titleLabel];
    
    [[titleLabel.leadingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.leadingAnchor]
     setActive:YES];
    
    [[titleLabel.trailingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.trailingAnchor]
     setActive:YES];
    
    [[titleLabel.topAnchor
      constraintEqualToAnchor:self.contentView.topAnchor
      constant:15] setActive:YES];
    
    self.titleLabel = titleLabel;
}

- (void)createDescriptionLabel
{
    UILabel * descriptionLabel = [[UILabel alloc] init];
    
    descriptionLabel.translatesAutoresizingMaskIntoConstraints = NO;
    descriptionLabel.contentMode = UIViewContentModeLeft;
    
    descriptionLabel.font = [UIFont systemFontOfSize:13];
    descriptionLabel.textColor = [ASDKDesign colorTextLight];
    descriptionLabel.numberOfLines = 0;
    descriptionLabel.lineBreakMode = NSLineBreakByWordWrapping;

    [self.contentView addSubview:descriptionLabel];
    
    [[descriptionLabel.leadingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.leadingAnchor]
     setActive:YES];
    
    [[descriptionLabel.trailingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.trailingAnchor]
     setActive:YES];
    
    [[descriptionLabel.topAnchor
      constraintEqualToAnchor:self.titleLabel.bottomAnchor]
     setActive:YES];
    
    self.descriptionLabel = descriptionLabel;
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    
    self.titleLabel.textColor = [ASDKDesign colorTextDark];
    self.descriptionLabel.textColor = [ASDKDesign colorTextLight];
    [self.contentView setBackgroundColor:[ASDKDesign colorTableViewBackground]];
    
    [self.titleLabel setText:nil];
    [self.descriptionLabel setText:nil];
}

- (CGFloat)cellHeightWithSuperviewWidth:(CGFloat)width
{
	CGFloat height = self.titleLabel.frame.origin.y;
	
	if (self.titleLabel.text.length > 0)
	{
		CGRect frame = CGRectMake(0, 0, width - 30, 300);
		
		height += [self.titleLabel.text boundingRectWithSize:frame.size
												  options:NSStringDrawingUsesLineFragmentOrigin
											   attributes:@{ NSFontAttributeName : self.titleLabel.font }
												  context:nil].size.height;
	}

	if (self.descriptionLabel.text.length > 0)
    {
        CGRect frame = CGRectMake(0, 0, width - 30, 300);
		
        height += [self.descriptionLabel.text boundingRectWithSize:frame.size
                                                  options:NSStringDrawingUsesLineFragmentOrigin
                                               attributes:@{ NSFontAttributeName : self.descriptionLabel.font }
                                                  context:nil].size.height;
    }
    
    return height + 8;
}

@end
