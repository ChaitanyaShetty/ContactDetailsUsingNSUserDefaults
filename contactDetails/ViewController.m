//
//  ViewController.m
//  contactDetails
//
//  Created by test on 1/6/17.
//  Copyright © 2017 test. All rights reserved.
//

#import "ViewController.h"
#import "ContactInfo.h"
#import "ViewController2.h"

@interface ViewController ()
{
    NSMutableArray *contact;
    NSMutableArray *nameArray;
    NSMutableArray *addressArray;
    NSMutableArray *phoneNoArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    nameArray = [[NSMutableArray alloc]init];
    addressArray = [[NSMutableArray alloc]init];
    phoneNoArray = [[NSMutableArray alloc]init];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)DoneButton:(id)sender {

    
    [nameArray addObject:self.nameTF.text];
    [addressArray addObject:self.addressTF.text];
    [phoneNoArray addObject:self.phonenumberTF.text];
    
    [[NSUserDefaults standardUserDefaults]setObject:nameArray forKey:@"names"];
    [[NSUserDefaults standardUserDefaults]setObject:addressArray forKey:@"address"];
    [[NSUserDefaults standardUserDefaults]setObject:phoneNoArray forKey:@"phoneNo"];

}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if ([segue.identifier isEqualToString:@"send"]) {
//        ViewController2 *vc = [segue destinationViewController];
//        vc.name = self.nameTF.text;
//        vc.address = self.addressTF.text;
//        vc.phoneNo = self.phonenumberTF.text;
//        
//        }
//}
@end
