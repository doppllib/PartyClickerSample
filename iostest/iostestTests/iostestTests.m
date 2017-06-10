//
//  iostestTests.m
//  iostestTests
//
//  Created by Kevin Galligan on 5/4/17.
//  Copyright © 2017 Kevin Galligan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CoTouchlabDopplTestingDopplJunitTestHelper.h"

@interface iostestTests : XCTestCase

@end

@implementation iostestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSharedCode {
    XCTAssertEqual([CoTouchlabDopplTestingDopplJunitTestHelper runResourceWithNSString:@"dopplTests.txt"], 0, "Junit tests failed");
}

@end
