#import <CloudXMolocoAdapter/CloudXMolocoAdapter.h>

@interface CloudXMolocoAdapterPackageLoader : NSObject
@end

@implementation CloudXMolocoAdapterPackageLoader

+ (void)load {
    CloudXMolocoAdapterRegister();
}

@end
