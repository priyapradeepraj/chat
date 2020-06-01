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
    
    //Dummy data for tableview
    arrTemp = @[
    @{@"Name" : @"Alex",
      @"Msg" : @"Typing...",
      @"Time" : @"11:30",
      @"Profile" : @"profile1.png"},
    @{@"Name" : @"Alexander",
      @"Msg" : @"What's new?",
      @"Time" : @"11:30",
      @"Profile" : @"profile2.png"},
    @{@"Name" : @"Alpha",
      @"Msg" : @"How are you",
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
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 45, 45)];
    imgView.image = [UIImage imageNamed:[DictContact valueForKey:@"Profile"]];
    imgView.layer.cornerRadius = 22.5;
    imgView.layer.masksToBounds = YES;
    
    UIImageView *imgChat = [[UIImageView alloc] initWithFrame:CGRectMake(0, 35, 11, 11)];
    imgChat.backgroundColor = [UIColor colorWithRed:255/255.0 green:184/255.0 blue:165/255.0 alpha:1.0];
    imgChat.layer.cornerRadius = 5.5;
    imgChat.layer.masksToBounds = YES;
    imgChat.layer.borderWidth = 2;
    imgChat.layer.borderColor = UIColor.whiteColor.CGColor;
    
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
    [cell.imgContact setFrame:CGRectMake(20, 13, 45, 45)];
    cell.imgContact.layer.cornerRadius = 22.5;
    cell.imgContact.layer.masksToBounds = YES;
    cell.imgContact.image = [UIImage imageNamed:[DictContact valueForKey:@"Profile"]];
    
    UIImageView *imgChat = [[UIImageView alloc] initWithFrame:CGRectMake(18, 45, 11, 11)];
    imgChat.backgroundColor = [UIColor colorWithRed:255/255.0 green:184/255.0 blue:165/255.0 alpha:1.0];
    imgChat.layer.cornerRadius = 5.5;
    imgChat.layer.masksToBounds = YES;
    imgChat.layer.borderWidth = 2;
    imgChat.layer.borderColor = UIColor.whiteColor.CGColor;
    [cell.contentView addSubview:imgChat];
    
    if (indexPath.row == 0 || indexPath.row == 1 || indexPath.row == 4)
    {
        [imgChat setHidden:NO];
        cell.imgCountBG.image = nil;
        cell.imgCountBG.backgroundColor = [UIColor colorWithRed:255/255.0 green:191/255.0 blue:173/255.0 alpha:1.0];
        [cell.lblCount setHidden:NO];
        
        switch (indexPath.row) {
            case 0:
                cell.lblContactMsg.textColor = [UIColor colorWithRed:147/255.0 green:175/255.0 blue:255/255.0 alpha:1.0];
                break;
                
            case 1:
                cell.lblContactMsg.textColor = [UIColor colorWithRed:75/255.0 green:75/255.0 blue:75/255.0 alpha:1.0];
                break;
                
            case 4:
                cell.lblContactMsg.textColor = [UIColor colorWithRed:75/255.0 green:75/255.0 blue:75/255.0 alpha:1.0];
                break;
                
            default:
                break;
        }
    }
    else
    {
        [imgChat setHidden:YES];
        cell.lblContactMsg.textColor = [UIColor lightGrayColor];
        cell.imgCountBG.backgroundColor = [UIColor whiteColor];
        cell.imgCountBG.image = [UIImage imageNamed:@"check.png"];
        [cell.lblCount setHidden:YES];
    }
    
    return cell;

}

@end
