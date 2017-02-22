//
//  ViewController2.h
//  contactDetails
//
//  Created by test on 1/6/17.
//  Copyright © 2017 test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController<UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UITableView *mytableview;
@property (strong, nonatomic) NSMutableArray *namevalues;
@property (nonatomic, strong)NSString* name;
@property (nonatomic, strong)NSString* address;
@property (nonatomic, strong)NSString* phoneNo;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;


@end
