//
//  MOManager.m
//  MyObjC
//
//  Created by thebv on 26/11/2021.
//

#import "MOManager.h"
#import "MOMyViewController.h"
#import "MOResource.h"

@implementation MOManager

+ (void)openFromVC:(UIViewController*)fromVC language:(nonnull NSString *)language {
    [MOResource setLanguage:language];
    MOMyViewController *vc = [[MOMyViewController alloc] initWithNibName:@"MOMyViewController" bundle:MOResource.sharedInstance];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [fromVC presentViewController:vc animated:YES completion:nil];
}

@end
