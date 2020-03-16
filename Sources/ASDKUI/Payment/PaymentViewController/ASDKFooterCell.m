//
//  ASDKFooterCell.m
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
#import "ASDKFooterCell.h"
#import "ASDKDesign.h"
#import "ASDKUI_Images.h"

@interface ASDKFooterCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imageViewLogos;
@property (weak, nonatomic) UIView *customLogosView;

@end

@implementation ASDKFooterCell

+ (instancetype)cell
{
    return [[self alloc] init];
}

- (instancetype)init
{
    self = [super init];
    
    [self createLogosView];
    [self.contentView setBackgroundColor:[ASDKDesign colorTableViewBackground]];
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];

    return self;
}

- (void)createLogosView
{
    UIImageView *imageViewLogos = [[UIImageView alloc] init];
    
    imageViewLogos.translatesAutoresizingMaskIntoConstraints = NO;
    imageViewLogos.contentMode = UIViewContentModeScaleToFill;
    imageViewLogos.backgroundColor = [UIColor colorWithWhite:0 alpha:0];
    
    imageViewLogos.image = [UIImage buttom_logos];
    
    [[imageViewLogos.widthAnchor constraintEqualToConstant:300] setActive:YES];
    [[imageViewLogos.heightAnchor constraintEqualToConstant:40] setActive:YES];
    
    [self.contentView addSubview:imageViewLogos];
    
    [[imageViewLogos.centerYAnchor
      constraintEqualToAnchor:self.contentView.centerYAnchor]
     setActive:YES];
    
    [[imageViewLogos.centerXAnchor
      constraintEqualToAnchor:self.contentView.centerXAnchor]
     setActive:YES];
    
    self.imageViewLogos = imageViewLogos;
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    
    [self.contentView setBackgroundColor:[ASDKDesign colorTableViewBackground]];
}

- (void)awakeFromNib
{
	[super awakeFromNib];
	
	if (self.customLogosView)
	{
		[self.customLogosView removeFromSuperview];
		self.customLogosView = nil;
	}
}

- (void)setCustomSecureLogos:(UIView *)view
{
	[self.imageViewLogos setHidden:(view != nil)];
	
	self.customLogosView = view;
	[self.contentView addSubview:view];

	view.center = self.contentView.center;
}

- (void)layoutSubviews
{
	if (self.customLogosView)
	{
		self.customLogosView.center = self.contentView.center;
	}
	
	[super layoutSubviews];
}

@end
