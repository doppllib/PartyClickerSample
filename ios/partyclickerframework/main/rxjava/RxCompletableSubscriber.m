//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxCompletableSubscriber.h"

@interface RxCompletableSubscriber : NSObject

@end

@implementation RxCompletableSubscriber

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(onCompleted);
  methods[1].selector = @selector(onErrorWithNSException:);
  methods[2].selector = @selector(onSubscribeWithRxSubscription:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "onError", "LNSException;", "onSubscribe", "LRxSubscription;" };
  static const J2ObjcClassInfo _RxCompletableSubscriber = { "CompletableSubscriber", "rx", ptrTable, methods, NULL, 7, 0x609, 3, 0, -1, -1, -1, -1, -1 };
  return &_RxCompletableSubscriber;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(RxCompletableSubscriber)
