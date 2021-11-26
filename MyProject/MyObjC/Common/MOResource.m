//
//  SDKTemplateBundleLocator.m
//  SDKTemplate
//
//  Created by thebv on 25/05/2021.
//

#import "MOResource.h"

static MOResource *instanceMOResource;

@interface MOResource()

@property (nonatomic, strong) NSString *stringResourceName;
@property (nonatomic, strong) NSBundle *stringResourceBundle;
@property (nonatomic, strong) NSString *stringLanguage;

@end

@implementation MOResource

+ (MOResource *)initWithBundleName:(NSString *)bundleName stringResourceName:(NSString *)stringResourceName stringLanguage:(NSString*)stringLanguage {
    MOResource *sdkBundle = [[MOResource alloc] initWithPath:[[NSBundle mainBundle] pathForResource:bundleName ofType:@"bundle"]];
    sdkBundle.stringResourceName = stringResourceName;
    sdkBundle.stringLanguage = stringLanguage;
    
    NSString *stringResourcePath = [sdkBundle pathForResource:stringLanguage ofType:@"lproj"];
    if (stringResourcePath) {
        sdkBundle.stringResourceBundle = [NSBundle bundleWithPath:stringResourcePath];
    }
    
    return sdkBundle;
}

+ (void)setLanguage:(NSString *)language {
    if (instanceMOResource == nil
        || (instanceMOResource != nil && ![instanceMOResource.stringLanguage isEqualToString:language])) {
        instanceMOResource = [self initWithBundleName:@"MyObjCResource" stringResourceName:@"MOLanguage" stringLanguage:language];
    }
}

+ (NSBundle *)sharedInstance {
    if (instanceMOResource == nil) {
        instanceMOResource = [self initWithBundleName:@"MyObjCResource" stringResourceName:@"MOLanguage" stringLanguage:@"vi"];
    }
    return instanceMOResource;
}

- (UIImage *)imageNamed:(NSString *)name {
    return [UIImage imageNamed:name inBundle:self compatibleWithTraitCollection:nil];
}

- (NSString *)stringWithKey:(NSString *)key {
    return [self.stringResourceBundle localizedStringForKey:key value:key table:self.stringResourceName];
}

@end
