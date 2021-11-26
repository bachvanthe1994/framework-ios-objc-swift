//
//  MOMyViewController.m
//  MyObjC
//
//  Created by thebv on 26/11/2021.
//

#import "MOMyViewController.h"
#import "MOResource.h"

@interface MOMyViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *lbl;

@end

@implementation MOMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lbl.text = [MOResource.sharedInstance stringWithKey:@"sdk_name"];
    self.imageView.image = [MOResource.sharedInstance imageNamed:@"image"];
}

- (IBAction)closePressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
