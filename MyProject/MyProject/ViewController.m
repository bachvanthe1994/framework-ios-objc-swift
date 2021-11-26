//
//  ViewController.m
//  MyProject
//
//  Created by thebv on 26/11/2021.
//

#import "ViewController.h"
#import <MyObjC/MyObjC.h>
#import <MySwift/MySwift-Swift.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"SUM objtive-c 1+2=%d", [MOMath sumWithA:1 b:2]);
//    NSLog(@"SUM objtive-swift 1+2=%d", (int)[MSMath sumWithA:1 b:2]);
    NSLog(@"SUM objtive-swift 1+2=%d", (int)[MSMath doSumWithA:1 b:2]);
}


- (IBAction)openMyFrameworkEn:(id)sender {
    [MOManager openFromVC:self language:@"en"];
}

- (IBAction)openMyFrameworkVi:(id)sender {
    [MOManager openFromVC:self language:@"vi"];
}


@end
