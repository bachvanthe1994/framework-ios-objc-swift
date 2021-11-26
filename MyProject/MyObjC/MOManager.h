//
//  MOManager.h
//  MyObjC
//
//  Created by thebv on 26/11/2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MOManager : NSObject

+ (void)openFromVC:(UIViewController*)fromVC language:(NSString*)language;

@end

NS_ASSUME_NONNULL_END
