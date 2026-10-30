#import <CloudXBidMachineAdapter/CloudXBidMachineAdapter.h>

@interface CloudXBidMachineAdapterPackageLoader : NSObject
@end

@implementation CloudXBidMachineAdapterPackageLoader

+ (void)load {
    CloudXBidMachineAdapterRegister();
}

@end
