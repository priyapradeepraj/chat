//
//  TableViewCell.m
//  ChatApp
//
//  Created by Sanmugapriya on 30/05/20.
//  Copyright © 2020 Sanmugapriya. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

@synthesize lblContactName = _lblContactName;
@synthesize lblContactMsg = _lblContactMsg;
@synthesize lblTime = _lblTime;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
