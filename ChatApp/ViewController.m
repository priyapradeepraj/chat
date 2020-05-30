//
//  ViewController.m
//  ChatApp
//
//  Created by Sanmugapriya on 30/05/20.
//  Copyright © 2020 Sanmugapriya. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import <Contacts/Contacts.h>
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>

@interface ViewController ()
@end

@implementation ViewController

NSArray *arrTemp;

@synthesize collectionViewContacts;
@synthesize tblContacts;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    arrTemp = @[
    @{@"Name" : @"Alex",
      @"Msg" : @"test",
      @"Time" : @"11:30",
      @"Profile" : @"profile1.png"},
    @{@"Name" : @"Alexander",
      @"Msg" : @"test",
      @"Time" : @"11:30",
      @"Profile" : @"profile2.png"},
    @{@"Name" : @"Alpha",
      @"Msg" : @"test",
      @"Time" : @"11:30",
      @"Profile" : @"profile3.png"},
    @{@"Name" : @"Alsec",
      @"Msg" : @"test",
      @"Time" : @"11:30",
      @"Profile" : @"profile4.png"},
    @{@"Name" : @"Abi",
      @"Msg" : @"test",
      @"Time" : @"11:30",
      @"Profile" : @"profile1.png"},
    @{@"Name" : @"Arun",
      @"Msg" : @"test",
      @"Time" : @"11:30",
      @"Profile" : @"profile2.png"},
    @{@"Name" : @"Alice",
      @"Msg" : @"test",
      @"Time" : @"11:30",
      @"Profile" : @"profile3.png"},
    @{@"Name" : @"Aexi",
      @"Msg" : @"test",
      @"Time" : @"11:30",
      @"Profile" : @"profile4.png"},
    @{@"Name" : @"Alexnc",
      @"Msg" : @"test",
      @"Time" : @"11:30",
      @"Profile" : @"profile1.png"},
    @{@"Name" : @"Alphi",
      @"Msg" : @"test",
      @"Time" : @"11:30",
      @"Profile" : @"profile2.png"}
    ];

    
    //set data source and delegate for collection view
    [collectionViewContacts setDataSource:self];
    [collectionViewContacts setDelegate:self];
    
    //set data source and delegate for table view
    [tblContacts setDataSource:self];
    [tblContacts setDelegate:self];
}

//UICollectionView delegates
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return arrTemp.count;
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [self.collectionViewContacts dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
   
    NSMutableDictionary *DictContact = arrTemp[indexPath.row];
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(12.5, 12.5, 50, 50)];
    imgView.image = [UIImage imageNamed:[DictContact valueForKey:@"Profile"]];
    imgView.layer.cornerRadius = 25;
    imgView.layer.masksToBounds = YES;
    
    UIImageView *imgChat = [[UIImageView alloc] initWithFrame:CGRectMake(10, 50, 10, 10)];
    imgChat.backgroundColor = [UIColor colorWithRed:255/255.0 green:184/255.0 blue:165/255.0 alpha:1.0];
    imgChat.layer.cornerRadius = 5;
    imgChat.layer.masksToBounds = YES;
    
    [cell.contentView addSubview:imgView];
    [cell.contentView addSubview:imgChat];
    
    return cell;
}

//UITableView Delegates
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrTemp.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
  
    NSMutableDictionary *DictContact = arrTemp[indexPath.row];
    cell.lblContactName.text = [DictContact valueForKey:@"Name"];
    cell.lblContactMsg.text = [DictContact valueForKey:@"Msg"];
    cell.lblTime.text = [DictContact valueForKey:@"Time"];
    [cell.imgContact setFrame:CGRectMake(20, 10, 50, 50)];
    cell.imgContact.layer.cornerRadius = 25;
    cell.imgContact.layer.masksToBounds = YES;
    cell.imgContact.image = [UIImage imageNamed:[DictContact valueForKey:@"Profile"]];
    
    UIImageView *imgChat = [[UIImageView alloc] initWithFrame:CGRectMake(18, 45, 10, 10)];
    imgChat.backgroundColor = [UIColor colorWithRed:255/255.0 green:184/255.0 blue:165/255.0 alpha:1.0];
    imgChat.layer.cornerRadius = 5;
    imgChat.layer.masksToBounds = YES;
    [cell.contentView addSubview:imgChat];
    
    return cell;

}

@end
