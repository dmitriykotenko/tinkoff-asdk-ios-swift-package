//
//  ASDKPaymentFormSummCell.m
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

#import "ASDKPaymentFormSummCell.h"
#import "ASDKDesign.h"
#import "ASDKMacroses.h"
#import "ASDKLocalized.h"

@implementation ASDKPaymentFormSummCell

+ (instancetype)cell
{
    return [[self alloc] init];
}

- (instancetype)init
{
    self = [super init];
    
    [self createSummTitleLabel];
    [self createSummLabel];
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];

    return self;
}

- (void)createSummTitleLabel
{
    UILabel * summTitleLabel = [[UILabel alloc] init];
    
    summTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    summTitleLabel.contentMode = UIViewContentModeLeft;
    
    summTitleLabel.font = [UIFont systemFontOfSize:13];
    summTitleLabel.textAlignment = NSTextAlignmentNatural;
    summTitleLabel.textColor = [ASDKDesign colorTextLight];
    
    [summTitleLabel setContentCompressionResistancePriority:250 forAxis:UILayoutConstraintAxisHorizontal];

    [self.contentView addSubview:summTitleLabel];
    
    [[summTitleLabel.centerYAnchor
      constraintEqualToAnchor:self.contentView.centerYAnchor]
     setActive:YES];
    
    [[summTitleLabel.leadingAnchor
      constraintEqualToAnchor:self.contentView.leadingAnchor
      constant:15] setActive:YES];
    
    summTitleLabel.text = [ASDKUI_Texts current].acq_money_label;
    self.summTitleLabel = summTitleLabel;
}

- (void)createSummLabel
{
    UILabel * summLabel = [[UILabel alloc] init];
    
    summLabel.translatesAutoresizingMaskIntoConstraints = NO;
    summLabel.contentMode = UIViewContentModeLeft;
    
    summLabel.font = [UIFont systemFontOfSize:17];
    summLabel.textAlignment = NSTextAlignmentRight;
    summLabel.textColor = [ASDKDesign colorTextDark];

    [self.contentView addSubview:summLabel];
    
    [[summLabel.centerYAnchor
      constraintEqualToAnchor:self.contentView.centerYAnchor]
     setActive:YES];
    
    [[summLabel.leadingAnchor
      constraintEqualToAnchor:self.summTitleLabel.trailingAnchor
      constant:8] setActive:YES];
    
    [[summLabel.trailingAnchor
      constraintEqualToAnchor:self.contentView.trailingAnchor
      constant:-15] setActive:YES];
    
    self.summLabel = summLabel;
}

@end
