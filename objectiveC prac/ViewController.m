//
//  ViewController.m
//  objectiveC prac
//
//  Created by Developer ST on 07/06/18.
//  Copyright © 2018 Developer ST. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(assign, nonatomic) NSString *a;
@property(assign, nonatomic) NSString *b;
@property (strong, nonatomic) ViewController *secondVC;


@property (weak, nonatomic) IBOutlet UITextField *txt1;
@property (weak, nonatomic) IBOutlet UITextField *txt2;

@end

@implementation ViewController
- (IBAction)btn:(id)sender {
 
    NSString *a = _txt1.text;
    NSString *b = _txt2.text;
    
  
    // print
    NSLog(@"%@", a);
    
    NSLog(@"%@", b);
    
    
    
 
    
    // move to next screen
    _secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
   
    
    [self.navigationController pushViewController:_secondVC animated:YES];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
