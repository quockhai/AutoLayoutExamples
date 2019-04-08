//
//  ViewController.m
//  SegueData
//
//  Created by quockhai on 2019/4/8.
//  Copyright © 2019 Polymath. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"secondSegue"]) {
        SecondViewController * viewController = segue.destinationViewController;
        viewController.singerName = self.nameText.text;
    }
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"secondSegue"]) {
        if ([self.nameText.text isEqualToString:@""] || self.nameText.text.length == 0) {
            NSLog(@"Name is empty");
            
            UIAlertController * alertController = [UIAlertController alertControllerWithTitle:@"Empty" message:@"Singer name is empty" preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction * submitAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                [alertController dismissViewControllerAnimated:true completion:nil];
            }];
            [alertController addAction:submitAction];
            
            [self presentViewController:alertController animated:true completion:nil];
            
            return false;
        }
    }
    
    return true;
}
@end
