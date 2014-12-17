//
//  IMSettingTableViewCell.m
//  IMDeveloper
//
//  Created by mac on 14-12-12.
//  Copyright (c) 2014年 IMSDK. All rights reserved.
//

#import "IMSettingTableViewCell.h"

@implementation IMSettingTableViewCell {
    UIImageView *_headView;
    UILabel *_usernameLabel;
    UILabel *_locationLabel;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _headView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 5, 70, 70)];
        
        [[_headView layer] setCornerRadius:5.0f];
        [_headView setClipsToBounds:YES];
        [_headView setContentMode:UIViewContentModeScaleAspectFill];
        [[self contentView] addSubview:_headView];
        
        _usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(90, 2, 200, 46)];
        
        [_usernameLabel setBackgroundColor:[UIColor clearColor]];
        [_usernameLabel setTextColor:[UIColor blackColor]];
        [_usernameLabel setFont:[UIFont boldSystemFontOfSize:20]];
        [[self contentView] addSubview:_usernameLabel];
        
        _locationLabel = [[UILabel alloc] initWithFrame:CGRectMake(90, 42, 200, 26)];
        
        [_locationLabel setTextColor:[UIColor grayColor]];
        [_locationLabel setFont:[UIFont systemFontOfSize:15]];
        [_locationLabel setBackgroundColor:[UIColor clearColor]];
        [[self contentView] addSubview:_locationLabel];
    }
    return self;
}

- (void)setLocation:(NSString *)location {
    _location = location;
    
    if (_location == nil) {
        _location = @"未填写";
    }
    
    [_locationLabel setText:[NSString stringWithFormat:@"地区:%@",location]];
}

- (void) setCustomUserID:(NSString *)customUserID {
    _customUserID = customUserID;
    
    [_usernameLabel setText:_customUserID];
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)setHeadPhoto:(UIImage *)headPhoto {
    _headPhoto = headPhoto;
    [_headView setImage:_headPhoto];
}

@end
