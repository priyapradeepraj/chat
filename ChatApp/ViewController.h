//
//  ViewController.h
//  ChatApp
//
//  Created by Sanmugapriya on 30/05/20.
//  Copyright © 2020 Sanmugapriya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate,UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionViewContacts;
@property (strong, nonatomic) IBOutlet UITableView *tblContacts;

@end

