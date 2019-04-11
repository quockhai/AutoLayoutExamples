//
//  ViewController.m
//  UnderlineTextField
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
    
    self.emailText.inputText.placeholder = @"Password";
    
    Person * personOne = [Person new];
    personOne.isEdit = false;
    Person * personTwo = [Person new];
    Person * personThree = [Person new];
    
    NSArray * persons = [NSArray arrayWithObjects:personOne, personTwo, personThree, nil];
    
    
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF.isEdit == 1"];
    NSArray *filteredArray = [persons filteredArrayUsingPredicate:predicate];
    
    for (Person * person in filteredArray) {
        NSLog(@"Editable: %d", person.isEdit);
    }
}


@end
