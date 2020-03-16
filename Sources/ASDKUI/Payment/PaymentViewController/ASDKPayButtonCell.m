//
//  ASDKPayButtonCell.m
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

#import "ASDKPayButtonCell.h"
#import "ASDKPaymentFormStarter.h"
#import "ASDKMacroses.h"
#import "ASDKLocalized.h"

@interface ASDKPayButtonCell ()

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;

@end

@implementation ASDKPayButtonCell

+ (instancetype)cell
{
    ASDKPayButtonCell *cell = [[self alloc] init];
    
    ASDKPaymentFormStarter *paymentFormStarter = [ASDKPaymentFormStarter instance];
    ASDKDesignConfiguration *designConfiguration = paymentFormStarter.designConfiguration;
    
    cell.titleLabel.textColor = [designConfiguration payButtonTextColor];
    
    UIView *myBackView = [[UIView alloc] initWithFrame:CGRectZero];
    myBackView.backgroundColor = [designConfiguration payButtonColor];
    cell.backgroundView = myBackView;
    
    UIView *myBackViewSelected = [[UIView alloc] initWithFrame:CGRectZero];
    myBackViewSelected.backgroundColor = [designConfiguration payButtonPressedColor];
    cell.selectedBackgroundView = myBackViewSelected;
    
    cell.titleLabel.text = [ASDKUI_Texts current].acq_pay;
    
    return cell;
}

- (instancetype)init
{
    self = [super init];
    
    self.contentView.backgroundColor = [UIColor colorWithWhite:0 alpha:0];
    [self createTitleLabel];
    
    return self;
}

- (void)createTitleLabel
{
    UILabel *titleLabel = [[UILabel alloc] init];
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    titleLabel.contentMode = UIViewContentModeLeft;
    
    titleLabel.font = [UIFont systemFontOfSize:15];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.contentView addSubview:titleLabel];
    
    [[titleLabel.centerYAnchor
      constraintEqualToAnchor:self.contentView.centerYAnchor]
     setActive:YES];
    
    [[titleLabel.centerXAnchor
      constraintEqualToAnchor:self.contentView.centerXAnchor]
     setActive:YES];
    
    self.titleLabel = titleLabel;
}

- (void)setAttributedButtonTitle:(NSAttributedString *)title
{
	if (title != nil)
	{
		self.titleLabel.text = nil;
		[self.titleLabel setAttributedText:title];
	}
}

- (void)setButtonTitle:(NSString *)title
{
	[self.titleLabel setText:title];
	
	if (title == nil)
	{
		self.titleLabel.text = [ASDKUI_Texts current].acq_pay;
	}
}

@end
