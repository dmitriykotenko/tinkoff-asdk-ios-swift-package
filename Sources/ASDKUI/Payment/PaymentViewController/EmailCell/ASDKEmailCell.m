//
//  ASDKEmailCell.m
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


#import "ASDKEmailCell.h"
#import "ASDKDesign.h"
#import "ASDKMacroses.h"
#import "ASDKLocalized.h"

@implementation ASDKEmailCell

+ (instancetype)cell
{
    return [[self alloc] init];
}

// TODO: row height = 94 (from XIB-file)
- (instancetype)init
{
    self = [super init];
    
    [self createEmailTextField];
    
    return self;
}

- (void)createEmailTextField
{
    UITextField *emailTextField = [[UITextField alloc] init];
    
    emailTextField.translatesAutoresizingMaskIntoConstraints = NO;
    emailTextField.contentMode = UIViewContentModeScaleToFill;    
    
    emailTextField.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    emailTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;

    emailTextField.font = [UIFont systemFontOfSize:17];
    emailTextField.minimumFontSize = 17;
    emailTextField.textAlignment = NSTextAlignmentNatural;
    emailTextField.textColor = [ASDKDesign colorTextDark];
    emailTextField.tintColor = [ASDKDesign colorTextDark];

    emailTextField.clearButtonMode = UITextFieldViewModeNever;
    emailTextField.keyboardType = UIKeyboardTypeEmailAddress;
    emailTextField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
    emailTextField.attributedPlaceholder =
    [[NSAttributedString alloc]
     initWithString:[ASDKUI_Texts current].acq_email_hint
     attributes: @{NSForegroundColorAttributeName:[ASDKDesign colorTextPlaceholder]}
     ];
    
    [self.contentView addSubview:emailTextField];
    
    [[emailTextField.topAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.topAnchor
      constant:-8] setActive:YES];
    
    [[emailTextField.bottomAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.bottomAnchor
      constant:8] setActive:YES];
    
    [[emailTextField.leadingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.leadingAnchor]
     setActive:YES];
    
    [[emailTextField.trailingAnchor
      constraintEqualToAnchor:self.contentView.layoutMarginsGuide.trailingAnchor]
     setActive:YES];
    
    self.emailTextField = emailTextField;
}

@end
