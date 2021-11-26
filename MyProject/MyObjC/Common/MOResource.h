//
//  SDKTemplateBundleLocator.h
//  SDKTemplate
//
//  Created by thebv on 25/05/2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MOResource : NSBundle

+ (MOResource*)sharedInstance;
+ (void)setLanguage:(NSString*)language;
- (UIImage *)imageNamed:(NSString *)name;
- (NSString *)stringWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
