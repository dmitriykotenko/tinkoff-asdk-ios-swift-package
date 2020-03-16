//
//  ASDKExternalCardsCell.m
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

#import "ASDKExternalCardsCell.h"
#import "ASDKDesign.h"
#import "ASDKMacroses.h"
#import "ASDKLocalized.h"
#import "ASDKUtils.h"

@implementation ASDKExternalCardsCell

+ (instancetype)cell
{
    return [[self alloc] init];
}

- (instancetype)init
{
    self = [super init];
    
    [self createTitleLabel];
    [self createChangeCardButton];
    
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    return self;
}

- (void)createTitleLabel
{
    UILabel *titleLabel = [[UILabel alloc] init];
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    titleLabel.contentMode = UIViewContentModeLeft;
    
    titleLabel.font = [UIFont systemFontOfSize:17];
    titleLabel.textColor = [ASDKDesign colorTextDark];
    titleLabel.textAlignment = NSTextAlignmentNatural;
    titleLabel.text = [ASDKUI_Texts current].acq_new_card_label;

    [self.contentView addSubview:titleLabel];
    
    [[titleLabel.centerYAnchor
      constraintEqualToAnchor:self.contentView.centerYAnchor]
     setActive:YES];
    
    [[titleLabel.leadingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.leadingAnchor]
     setActive:YES];
    
    self.titleLabel = titleLabel;
}

- (void)createChangeCardButton
{
    UIButton *changeCardButton = [UIButton buttonWithType:UIButtonTypeSystem];
    
    changeCardButton.translatesAutoresizingMaskIntoConstraints = NO;
    changeCardButton.contentMode = UIViewContentModeScaleToFill;
    
    [changeCardButton.titleLabel setFont:[UIFont systemFontOfSize:13]];
    changeCardButton.titleLabel.textColor = [ASDKDesign colorMainBlue];
    [changeCardButton setTitle:[ASDKUI_Texts current].acq_change_card_label forState:UIControlStateNormal];
    
    [changeCardButton
     setTitleColor:[ASDKUtils colorWithInteger:0x128CC3]
     forState:UIControlStateNormal];

    [changeCardButton
     setTitleColor:[UIColor whiteColor]
     forState:UIControlStateNormal];

    [self.contentView addSubview:changeCardButton];
    
    [[changeCardButton.centerYAnchor
      constraintEqualToAnchor:self.contentView.centerYAnchor]
     setActive:YES];
    
    [[changeCardButton.trailingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.trailingAnchor
      constant:-7] setActive:YES];
    
    [[changeCardButton.leadingAnchor
      constraintGreaterThanOrEqualToAnchor:self.titleLabel.trailingAnchor
      constant: 8] setActive:YES];
    
    self.changeCardButton = changeCardButton;
}

@end
