//
//  DispatchOnceTests.m
//  DispatchOnceTests
//
//  Created by lunacat on 7/20/15.
//
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "SingletonUser.h"

#import <AFNetworking/AFNetworkActivityIndicatorManager.h>

@interface DispatchOnceTests : XCTestCase

@end

@implementation DispatchOnceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
    SingletonUser *user = [[SingletonUser alloc] init];
    AFNetworkActivityIndicatorManager *mgr = [AFNetworkActivityIndicatorManager sharedManager];
    AFNetworkActivityIndicatorManager *mgr2 = [user sharedManager];
    // mgr == mgr2 if 'use_frameworks' written in Podfile
    // mgr != mgr2 if 'use_frameworks' not written in Podfile
    XCTAssert(mgr == mgr2, @"manager should be equal");
}

@end
