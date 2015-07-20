//
//  SingletonUser.h
//  DispatchOnce
//
//  Created by lunacat on 7/20/15.
//
//

#import <Foundation/Foundation.h>

#import <AFNetworking/AFNetworkActivityIndicatorManager.h>
@interface SingletonUser : NSObject
-(AFNetworkActivityIndicatorManager *)sharedManager;
@end
