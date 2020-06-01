//
//  TableViewCell.h
//  ChatApp
//
//  Created by Sanmugapriya on 30/05/20.
//  Copyright © 2020 Sanmugapriya. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblContactName;
@property (weak, nonatomic) IBOutlet UILabel *lblContactMsg;
@property (weak, nonatomic) IBOutlet UILabel *lblTime;
@property (weak, nonatomic) IBOutlet UIImageView *imgContact;
@property (weak, nonatomic) IBOutlet UIImageView *imgCountBG;
@property (weak, nonatomic) IBOutlet UILabel *lblCount;

@end

NS_ASSUME_NONNULL_END
