//
//  ASDKDeleteCell.m
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


// ------------------------------------
//
// File was modified by Dmitry Kotenko.
//
// ------------------------------------


#import "ASDKDeleteCell.h"

#import "ASDKHighlightedButton.h"
#import "ASDKUI_Images.h"

@implementation ASDKDeleteCell

- (instancetype)init
{
    self = [super init];
    
    self.tintColor = [UIColor blackColor];
    self.clipsToBounds = YES;
    
    [self createDeleteButton];
    [self createLongPressGesture];
    
    return self;
}

- (void)createDeleteButton
{
    ASDKHighlightedButton * deleteButton = [ASDKHighlightedButton buttonWithType:UIButtonTypeCustom];
    
    deleteButton.translatesAutoresizingMaskIntoConstraints = NO;
    deleteButton.contentMode = UIViewContentModeScaleAspectFit;
    
    deleteButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    deleteButton.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
    deleteButton.titleLabel.font = [UIFont systemFontOfSize:18];
    
    [deleteButton setImage:[UIImage delete] forState:UIControlStateNormal];
    
    [self addSubview:deleteButton];
    
    [[deleteButton.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[deleteButton.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    [[deleteButton.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
    [[deleteButton.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
    
    self.deleteButton = deleteButton;
}

- (void)createLongPressGesture
{
    self.deleteButtonLongPress = [[UILongPressGestureRecognizer alloc] init];
    
    [self.deleteButton addGestureRecognizer:self.deleteButtonLongPress];
}

@end
