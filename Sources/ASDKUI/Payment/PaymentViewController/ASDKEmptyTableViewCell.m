//
//  ASDKEmptyTableViewCell.m
//  ASDKUI
//
//  Created by v.budnikov on 13.09.17.
//  Copyright © 2017 TCS Bank. All rights reserved.
//

#import "ASDKEmptyTableViewCell.h"
#import "ASDKDesign.h"

@implementation ASDKEmptyTableViewCell

- (instancetype)init
{
    self = [super init];
    
    [self privateInit];
    
    return self;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    [self privateInit];
    
    return self;
}

- (void)privateInit
{
    self.restorationIdentifier = @"ASDKEmptyTableViewCell";
    
    [self.contentView setBackgroundColor:[ASDKDesign colorTableViewBackground]];
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    
    [self.contentView setBackgroundColor:[ASDKDesign colorTableViewBackground]];
}

@end
