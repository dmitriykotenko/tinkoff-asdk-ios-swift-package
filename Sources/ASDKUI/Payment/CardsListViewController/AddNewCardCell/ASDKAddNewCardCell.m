//
//  ASDKAddNewCardCell.m
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

#import "ASDKAddNewCardCell.h"

@implementation ASDKAddNewCardCell

+ (instancetype)newCell
{
	return [[self alloc] init];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    [self createTitleLabel];
    return self;
}

- (void)createTitleLabel
{
    UILabel *addCardTitleLabel = [[UILabel alloc] init];
    
    addCardTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    addCardTitleLabel.contentMode = UIViewContentModeLeft;
    
    addCardTitleLabel.font = [UIFont systemFontOfSize:17 weight:UIFontWeightLight];
    addCardTitleLabel.textAlignment = NSTextAlignmentNatural;
    
    [self.contentView addSubview:addCardTitleLabel];
    
    [[addCardTitleLabel.leadingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.leadingAnchor
      constant:7] setActive:YES];
    
    [[addCardTitleLabel.trailingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.trailingAnchor
      constant:-7] setActive:YES];
    
    [[addCardTitleLabel.centerYAnchor
      constraintEqualToAnchor:self.contentView.centerYAnchor
      constant:0] setActive:YES];
    
    self.addCardTitleLabel = addCardTitleLabel;
}

@end
