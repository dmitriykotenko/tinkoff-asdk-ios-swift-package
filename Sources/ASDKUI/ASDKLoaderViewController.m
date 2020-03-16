//
//  ASDKLoaderViewController.m
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


#import "ASDKLoaderViewController.h"
//#import "ASDKPaymentFormStarter.h"

NSString *const ASDKNotificationShowLoader = @"ASDKNotificationShowLoader";
NSString *const ASDKNotificationHideLoader = @"ASDKNotificationHideLoader";

@interface ASDKLoaderViewController ()

@property (nonatomic, weak) UIView *backView;
@property (nonatomic, weak) UIActivityIndicatorView *activityIndicatorView;

@end

@implementation ASDKLoaderViewController

- (instancetype)init
{
    self = [super initWithNibName:nil bundle:nil];
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self createSubviews];
    
    self.backView.layer.cornerRadius = 10;
    [self.activityIndicatorView startAnimating];
}

- (void)createSubviews
{
    [self createBackView];
    [self createActivityIndicatorView];
}

- (void)createBackView
{
    UIView * backView = [[UIView alloc] init];
    
    backView.translatesAutoresizingMaskIntoConstraints = false;
    backView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.7];
    
    [self.view addSubview:backView];

    [[NSLayoutConstraint
      constraintWithItem:backView
      attribute:NSLayoutAttributeWidth
      relatedBy:NSLayoutRelationEqual
      toItem:nil
      attribute:NSLayoutAttributeNotAnAttribute
      multiplier:1
      constant:80
      ] setActive:YES];
    
    [[NSLayoutConstraint
      constraintWithItem:backView
      attribute:NSLayoutAttributeHeight
      relatedBy:NSLayoutRelationEqual
      toItem:nil
      attribute:NSLayoutAttributeNotAnAttribute
      multiplier:1
      constant:80
      ] setActive:YES];
    
    [[NSLayoutConstraint
      constraintWithItem:backView
      attribute:NSLayoutAttributeCenterX
      relatedBy:NSLayoutRelationEqual
      toItem:self.view
      attribute:NSLayoutAttributeCenterX
      multiplier:1
      constant:0
      ] setActive:YES];
    
    [[NSLayoutConstraint
      constraintWithItem:backView
      attribute:NSLayoutAttributeCenterY
      relatedBy:NSLayoutRelationEqual
      toItem:self.view
      attribute:NSLayoutAttributeCenterY
      multiplier:1
      constant:0
      ] setActive:YES];

    self.backView = backView;
}

- (void)createActivityIndicatorView
{
    UIActivityIndicatorView * activityIndicatorView =
    [[UIActivityIndicatorView alloc]
     initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    
    activityIndicatorView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.backView addSubview:activityIndicatorView];
    
    [[NSLayoutConstraint
      constraintWithItem:activityIndicatorView
      attribute:NSLayoutAttributeCenterX
      relatedBy:NSLayoutRelationEqual
      toItem:self.backView
      attribute:NSLayoutAttributeCenterX
      multiplier:1
      constant:0
      ] setActive:YES];
    
    [[NSLayoutConstraint
      constraintWithItem:activityIndicatorView
      attribute:NSLayoutAttributeCenterY
      relatedBy:NSLayoutRelationEqual
      toItem:self.backView
      attribute:NSLayoutAttributeCenterY
      multiplier:1
      constant:0
      ] setActive:YES];
    
    self.activityIndicatorView = activityIndicatorView;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return [[UIApplication sharedApplication] statusBarStyle];
}

@end
