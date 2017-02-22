//
//  ViewController2.m
//  contactDetails
//
//  Created by test on 1/6/17.
//  Copyright © 2017 test. All rights reserved.
//

#import "ViewController2.h"
#import "ContactInfo.h"

@interface ViewController2 ()
{
    NSArray *nameArray;
    NSMutableArray *nameArray1;
    NSMutableArray *addressArray;
    NSMutableArray *phoneNoArray;

}

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup afer loading the view.
    
  //  self.values = [ContactInfo mutableCopy];
//    self.namevalues = [[NSMutableArray alloc]init];
//    
//    [self.namevalues addObject:self.name];
    
    nameArray = [[NSUserDefaults standardUserDefaults]objectForKey:@"names"];
    nameArray1 = [[NSMutableArray alloc]init];
    [nameArray1 addObjectsFromArray:nameArray];
    
    addressArray = [[NSUserDefaults standardUserDefaults]objectForKey:@"address"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return nameArray1.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [nameArray1 objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = addressArray[indexPath.row];
    return cell;
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if (searchText.length == 0) {
        [nameArray1 removeAllObjects];
        [nameArray1 addObjectsFromArray:nameArray];
    } else {
        [nameArray1 removeAllObjects];
        for (NSString *search in nameArray) {
            NSRange r = [search rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if (r.location != NSNotFound) {
                [nameArray1 addObject:search];
            }
        }
    }
    
       [self.mytableview reloadData];
}
@end
