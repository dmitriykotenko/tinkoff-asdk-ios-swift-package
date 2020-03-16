//
//  ASDKNumberCell.m
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

#import "ASDKNumberCell.h"

#import "ASDKDesign.h"
#import "ASDKHighlightedButton.h"
#import "ASDKUI_Images.h"

@implementation ASDKNumberCell

- (instancetype)init
{
    self = [super init];
    
    [self createNumberButton];
    [self createBottomSeparator];
    [self createRightSeparator];
    
    return self;
}

- (void)createNumberButton
{
    ASDKHighlightedButton *numberButton = [ASDKHighlightedButton buttonWithType:UIButtonTypeSystem];
    
    numberButton.translatesAutoresizingMaskIntoConstraints = NO;
    numberButton.contentMode = UIViewContentModeScaleToFill;
    
    numberButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    numberButton.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
    numberButton.titleLabel.font = [UIFont systemFontOfSize:25 weight:UIFontWeightLight];
    
    [numberButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [numberButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [numberButton setTitleColor:[UIColor blackColor] forState:UIControlStateDisabled];
    [numberButton setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];

    [self addSubview:numberButton];
    
    [[numberButton.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[numberButton.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    [[numberButton.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
    [[numberButton.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
    
    self.numberButton = numberButton;
}

- (void)createBottomSeparator
{
    UIView *bottomSeparator = [[UIView alloc] init];
    
    bottomSeparator.translatesAutoresizingMaskIntoConstraints = NO;
    bottomSeparator.contentMode = UIViewContentModeScaleToFill;
    [bottomSeparator setBackgroundColor:[ASDKDesign colorN4Separator]];
    
    [self addSubview:bottomSeparator];
    
    [[bottomSeparator.leadingAnchor
      constraintEqualToAnchor:self.leadingAnchor]
     setActive:YES];
    
    [[bottomSeparator.trailingAnchor
      constraintEqualToAnchor: self.trailingAnchor
      constant:-0.5] setActive:YES];

    [[bottomSeparator.bottomAnchor
      constraintEqualToAnchor:self.bottomAnchor]
     setActive:YES];
    
    [[bottomSeparator.heightAnchor
      constraintEqualToConstant: 1.0f / [UIScreen mainScreen].scale]
     setActive:YES];
}

- (void)createRightSeparator
{
    UIView *rightSeparator = [[UIView alloc] init];
    
    rightSeparator.translatesAutoresizingMaskIntoConstraints = NO;
    rightSeparator.contentMode = UIViewContentModeScaleToFill;
    [rightSeparator setBackgroundColor:[ASDKDesign colorN4Separator]];

    [self addSubview:rightSeparator];
    
    [[rightSeparator.topAnchor
      constraintEqualToAnchor:self.topAnchor]
     setActive:YES];
    
    [[rightSeparator.bottomAnchor
      constraintEqualToAnchor:self.bottomAnchor]
     setActive:YES];
    
    [[rightSeparator.trailingAnchor
      constraintEqualToAnchor:self.trailingAnchor]
     setActive:YES];
    
    [[rightSeparator.widthAnchor
      constraintEqualToConstant: 1.0f / [UIScreen mainScreen].scale]
     setActive:YES];
}

@end
