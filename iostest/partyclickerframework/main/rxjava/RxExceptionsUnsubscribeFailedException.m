//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxExceptionsUnsubscribeFailedException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/RuntimeException.h"

inline jlong RxExceptionsUnsubscribeFailedException_get_serialVersionUID();
#define RxExceptionsUnsubscribeFailedException_serialVersionUID 4594672310593167598LL
J2OBJC_STATIC_FIELD_CONSTANT(RxExceptionsUnsubscribeFailedException, serialVersionUID, jlong)

@implementation RxExceptionsUnsubscribeFailedException

- (instancetype)initWithNSException:(NSException *)throwable {
  RxExceptionsUnsubscribeFailedException_initWithNSException_(self, throwable);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
                 withNSException:(NSException *)throwable {
  RxExceptionsUnsubscribeFailedException_initWithNSString_withNSException_(self, message, throwable);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSException:);
  methods[1].selector = @selector(initWithNSString:withNSException:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = RxExceptionsUnsubscribeFailedException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSException;", "LNSString;LNSException;" };
  static const J2ObjcClassInfo _RxExceptionsUnsubscribeFailedException = { "UnsubscribeFailedException", "rx.exceptions", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, -1, -1, -1, -1 };
  return &_RxExceptionsUnsubscribeFailedException;
}

@end

void RxExceptionsUnsubscribeFailedException_initWithNSException_(RxExceptionsUnsubscribeFailedException *self, NSException *throwable) {
  JavaLangRuntimeException_initWithNSException_(self, throwable != nil ? throwable : create_JavaLangNullPointerException_init());
}

RxExceptionsUnsubscribeFailedException *new_RxExceptionsUnsubscribeFailedException_initWithNSException_(NSException *throwable) {
  J2OBJC_NEW_IMPL(RxExceptionsUnsubscribeFailedException, initWithNSException_, throwable)
}

RxExceptionsUnsubscribeFailedException *create_RxExceptionsUnsubscribeFailedException_initWithNSException_(NSException *throwable) {
  J2OBJC_CREATE_IMPL(RxExceptionsUnsubscribeFailedException, initWithNSException_, throwable)
}

void RxExceptionsUnsubscribeFailedException_initWithNSString_withNSException_(RxExceptionsUnsubscribeFailedException *self, NSString *message, NSException *throwable) {
  JavaLangRuntimeException_initWithNSString_withNSException_(self, message, throwable != nil ? throwable : create_JavaLangNullPointerException_init());
}

RxExceptionsUnsubscribeFailedException *new_RxExceptionsUnsubscribeFailedException_initWithNSString_withNSException_(NSString *message, NSException *throwable) {
  J2OBJC_NEW_IMPL(RxExceptionsUnsubscribeFailedException, initWithNSString_withNSException_, message, throwable)
}

RxExceptionsUnsubscribeFailedException *create_RxExceptionsUnsubscribeFailedException_initWithNSString_withNSException_(NSString *message, NSException *throwable) {
  J2OBJC_CREATE_IMPL(RxExceptionsUnsubscribeFailedException, initWithNSString_withNSException_, message, throwable)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxExceptionsUnsubscribeFailedException)
