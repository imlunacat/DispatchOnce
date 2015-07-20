//
//  SingletonUser.m
//  DispatchOnce
//
//  Created by lunacat on 7/20/15.
//
//

#import "SingletonUser.h"

@implementation SingletonUser
-(AFNetworkActivityIndicatorManager *)sharedManager {
    return [AFNetworkActivityIndicatorManager sharedManager];
}
@end
