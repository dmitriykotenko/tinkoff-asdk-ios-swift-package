//
//  ASDKEmptyTableViewCell.m
//  ASDKUI
//
//  Created by v.budnikov on 13.09.17.
//  Copyright © 2017 TCS Bank. All rights reserved.
//


// ------------------------------------
//
// File was modified by Dmitry Kotenko.
//
// ------------------------------------


#import "ASDKEmptyTableViewCell.h"
#import "ASDKDesign.h"

@implementation ASDKEmptyTableViewCell

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
