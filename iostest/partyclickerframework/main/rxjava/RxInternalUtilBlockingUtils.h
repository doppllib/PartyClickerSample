//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalUtilBlockingUtils")
#ifdef RESTRICT_RxInternalUtilBlockingUtils
#define INCLUDE_ALL_RxInternalUtilBlockingUtils 0
#else
#define INCLUDE_ALL_RxInternalUtilBlockingUtils 1
#endif
#undef RESTRICT_RxInternalUtilBlockingUtils

#if !defined (RxInternalUtilBlockingUtils_) && (INCLUDE_ALL_RxInternalUtilBlockingUtils || defined(INCLUDE_RxInternalUtilBlockingUtils))
#define RxInternalUtilBlockingUtils_

@class JavaUtilConcurrentCountDownLatch;
@protocol RxSubscription;

@interface RxInternalUtilBlockingUtils : NSObject

#pragma mark Public

+ (void)awaitForCompleteWithJavaUtilConcurrentCountDownLatch:(JavaUtilConcurrentCountDownLatch *)latch
                                          withRxSubscription:(id<RxSubscription>)subscription;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilBlockingUtils)

FOUNDATION_EXPORT void RxInternalUtilBlockingUtils_awaitForCompleteWithJavaUtilConcurrentCountDownLatch_withRxSubscription_(JavaUtilConcurrentCountDownLatch *latch, id<RxSubscription> subscription);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilBlockingUtils)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalUtilBlockingUtils")