//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "RxNotification.h"
#include "RxObserver.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"

@interface RxNotification () {
 @public
  RxNotification_Kind *kind_;
  NSException *throwable_;
  id value_;
}

- (instancetype)initWithRxNotification_Kind:(RxNotification_Kind *)kind
                                     withId:(id)value
                            withNSException:(NSException *)e;
#define withJavaLangThrowable withNSException

@end

J2OBJC_FIELD_SETTER(RxNotification, kind_, RxNotification_Kind *)
J2OBJC_FIELD_SETTER(RxNotification, throwable_, NSException *)
J2OBJC_FIELD_SETTER(RxNotification, value_, id)

inline RxNotification *RxNotification_get_ON_COMPLETED();
static RxNotification *RxNotification_ON_COMPLETED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxNotification, ON_COMPLETED, RxNotification *)

__attribute__((unused)) static void RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification *self, RxNotification_Kind *kind, id value, NSException *e);

__attribute__((unused)) static RxNotification *new_RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification_Kind *kind, id value, NSException *e) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxNotification *create_RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification_Kind *kind, id value, NSException *e);

__attribute__((unused)) static IOSObjectArray *RxNotification__Annotations$0();

__attribute__((unused)) static void RxNotification_Kind_initWithNSString_withInt_(RxNotification_Kind *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(RxNotification)

@implementation RxNotification

+ (RxNotification *)createOnNextWithId:(id)t {
  return RxNotification_createOnNextWithId_(t);
}

+ (RxNotification *)createOnErrorWithNSException:(NSException *)e {
  return RxNotification_createOnErrorWithNSException_(e);
}

+ (RxNotification *)createOnCompleted {
  return RxNotification_createOnCompleted();
}

+ (RxNotification *)createOnCompletedWithIOSClass:(IOSClass *)type {
  return RxNotification_createOnCompletedWithIOSClass_(type);
}

- (instancetype)initWithRxNotification_Kind:(RxNotification_Kind *)kind
                                     withId:(id)value
                            withNSException:(NSException *)e {
  RxNotification_initWithRxNotification_Kind_withId_withNSException_(self, kind, value, e);
  return self;
}

- (NSException *)getThrowable {
  return throwable_;
}

- (id)getValue {
  return value_;
}

- (jboolean)hasValue {
  return [self isOnNext] && value_ != nil;
}

- (jboolean)hasThrowable {
  return [self isOnError] && throwable_ != nil;
}

- (RxNotification_Kind *)getKind {
  return kind_;
}

- (jboolean)isOnError {
  return [self getKind] == JreLoadEnum(RxNotification_Kind, OnError);
}

- (jboolean)isOnCompleted {
  return [self getKind] == JreLoadEnum(RxNotification_Kind, OnCompleted);
}

- (jboolean)isOnNext {
  return [self getKind] == JreLoadEnum(RxNotification_Kind, OnNext);
}

- (void)acceptWithRxObserver:(id<RxObserver>)observer {
  if (kind_ == JreLoadEnum(RxNotification_Kind, OnNext)) {
    [((id<RxObserver>) nil_chk(observer)) onNextWithId:[self getValue]];
  }
  else if (kind_ == JreLoadEnum(RxNotification_Kind, OnCompleted)) {
    [((id<RxObserver>) nil_chk(observer)) onCompleted];
  }
  else {
    [((id<RxObserver>) nil_chk(observer)) onErrorWithNSException:[self getThrowable]];
  }
}

- (NSString *)description {
  JavaLangStringBuilder *str = [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([create_JavaLangStringBuilder_initWithInt_(64) appendWithChar:'['])) appendWithNSString:[[super java_getClass] getName]])) appendWithChar:' '])) appendWithId:[self getKind]];
  if ([self hasValue]) {
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(str)) appendWithChar:' '])) appendWithId:[self getValue]];
  }
  if ([self hasThrowable]) {
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(str)) appendWithChar:' '])) appendWithNSString:[((NSException *) nil_chk([self getThrowable])) getMessage]];
  }
  [((JavaLangStringBuilder *) nil_chk(str)) appendWithChar:']'];
  return [str description];
}

- (NSUInteger)hash {
  jint hash_ = ((jint) [((RxNotification_Kind *) nil_chk([self getKind])) hash]);
  if ([self hasValue]) {
    hash_ = hash_ * 31 + ((jint) [nil_chk([self getValue]) hash]);
  }
  if ([self hasThrowable]) {
    hash_ = hash_ * 31 + ((jint) [((NSException *) nil_chk([self getThrowable])) hash]);
  }
  return hash_;
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) {
    return false;
  }
  if (self == obj) {
    return true;
  }
  if ([obj java_getClass] != [self java_getClass]) {
    return false;
  }
  RxNotification *notification = (RxNotification *) cast_chk(obj, [RxNotification class]);
  return [notification getKind] == [self getKind] && (value_ == notification->value_ || (value_ != nil && [value_ isEqual:notification->value_])) && (throwable_ == notification->throwable_ || (throwable_ != nil && [throwable_ isEqual:notification->throwable_]));
}

- (void)dealloc {
  RELEASE_(kind_);
  RELEASE_(throwable_);
  RELEASE_(value_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LRxNotification;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "LRxNotification;", 0x9, 3, 4, -1, 5, -1, -1 },
    { NULL, "LRxNotification;", 0x9, -1, -1, -1, 6, -1, -1 },
    { NULL, "LRxNotification;", 0x9, 7, 8, -1, 9, 10, -1 },
    { NULL, NULL, 0x2, -1, 11, -1, 12, -1, -1 },
    { NULL, "LNSException;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 13, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LRxNotification_Kind;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 15, -1, 16, -1, -1 },
    { NULL, "LNSString;", 0x1, 17, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 18, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 19, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(createOnNextWithId:);
  methods[1].selector = @selector(createOnErrorWithNSException:);
  methods[2].selector = @selector(createOnCompleted);
  methods[3].selector = @selector(createOnCompletedWithIOSClass:);
  methods[4].selector = @selector(initWithRxNotification_Kind:withId:withNSException:);
  methods[5].selector = @selector(getThrowable);
  methods[6].selector = @selector(getValue);
  methods[7].selector = @selector(hasValue);
  methods[8].selector = @selector(hasThrowable);
  methods[9].selector = @selector(getKind);
  methods[10].selector = @selector(isOnError);
  methods[11].selector = @selector(isOnCompleted);
  methods[12].selector = @selector(isOnNext);
  methods[13].selector = @selector(acceptWithRxObserver:);
  methods[14].selector = @selector(description);
  methods[15].selector = @selector(hash);
  methods[16].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "kind_", "LRxNotification_Kind;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "throwable_", "LNSException;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "value_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, 20, -1 },
    { "ON_COMPLETED", "LRxNotification;", .constantValue.asLong = 0, 0x1a, -1, 21, 22, -1 },
  };
  static const void *ptrTable[] = { "createOnNext", "LNSObject;", "<T:Ljava/lang/Object;>(TT;)Lrx/Notification<TT;>;", "createOnError", "LNSException;", "<T:Ljava/lang/Object;>(Ljava/lang/Throwable;)Lrx/Notification<TT;>;", "<T:Ljava/lang/Object;>()Lrx/Notification<TT;>;", "createOnCompleted", "LIOSClass;", "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lrx/Notification<TT;>;", (void *)&RxNotification__Annotations$0, "LRxNotification_Kind;LNSObject;LNSException;", "(Lrx/Notification$Kind;TT;Ljava/lang/Throwable;)V", "()TT;", "accept", "LRxObserver;", "(Lrx/Observer<-TT;>;)V", "toString", "hashCode", "equals", "TT;", &RxNotification_ON_COMPLETED, "Lrx/Notification<Ljava/lang/Void;>;", "LRxNotification_Kind;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _RxNotification = { "Notification", "rx", ptrTable, methods, fields, 7, 0x11, 17, 4, -1, 23, -1, 24, -1 };
  return &_RxNotification;
}

+ (void)initialize {
  if (self == [RxNotification class]) {
    JreStrongAssignAndConsume(&RxNotification_ON_COMPLETED, new_RxNotification_initWithRxNotification_Kind_withId_withNSException_(JreLoadEnum(RxNotification_Kind, OnCompleted), nil, nil));
    J2OBJC_SET_INITIALIZED(RxNotification)
  }
}

@end

RxNotification *RxNotification_createOnNextWithId_(id t) {
  RxNotification_initialize();
  return create_RxNotification_initWithRxNotification_Kind_withId_withNSException_(JreLoadEnum(RxNotification_Kind, OnNext), t, nil);
}

RxNotification *RxNotification_createOnErrorWithNSException_(NSException *e) {
  RxNotification_initialize();
  return create_RxNotification_initWithRxNotification_Kind_withId_withNSException_(JreLoadEnum(RxNotification_Kind, OnError), nil, e);
}

RxNotification *RxNotification_createOnCompleted() {
  RxNotification_initialize();
  return RxNotification_ON_COMPLETED;
}

RxNotification *RxNotification_createOnCompletedWithIOSClass_(IOSClass *type) {
  RxNotification_initialize();
  return RxNotification_ON_COMPLETED;
}

void RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification *self, RxNotification_Kind *kind, id value, NSException *e) {
  NSObject_init(self);
  JreStrongAssign(&self->value_, value);
  JreStrongAssign(&self->throwable_, e);
  JreStrongAssign(&self->kind_, kind);
}

RxNotification *new_RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification_Kind *kind, id value, NSException *e) {
  J2OBJC_NEW_IMPL(RxNotification, initWithRxNotification_Kind_withId_withNSException_, kind, value, e)
}

RxNotification *create_RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification_Kind *kind, id value, NSException *e) {
  J2OBJC_CREATE_IMPL(RxNotification, initWithRxNotification_Kind_withId_withNSException_, kind, value, e)
}

IOSObjectArray *RxNotification__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxNotification)

J2OBJC_INITIALIZED_DEFN(RxNotification_Kind)

RxNotification_Kind *RxNotification_Kind_values_[3];

@implementation RxNotification_Kind

+ (IOSObjectArray *)values {
  return RxNotification_Kind_values();
}

+ (RxNotification_Kind *)valueOfWithNSString:(NSString *)name {
  return RxNotification_Kind_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LRxNotification_Kind;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LRxNotification_Kind;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "OnNext", "LRxNotification_Kind;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "OnError", "LRxNotification_Kind;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "OnCompleted", "LRxNotification_Kind;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(RxNotification_Kind, OnNext), &JreEnum(RxNotification_Kind, OnError), &JreEnum(RxNotification_Kind, OnCompleted), "LRxNotification;", "Ljava/lang/Enum<Lrx/Notification$Kind;>;" };
  static const J2ObjcClassInfo _RxNotification_Kind = { "Kind", "rx", ptrTable, methods, fields, 7, 0x4019, 2, 3, 5, -1, -1, 6, -1 };
  return &_RxNotification_Kind;
}

+ (void)initialize {
  if (self == [RxNotification_Kind class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 3 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    id names[] = {
      @"OnNext", @"OnError", @"OnCompleted",
    };
    for (jint i = 0; i < 3; i++) {
      (RxNotification_Kind_values_[i] = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
      RxNotification_Kind_initWithNSString_withInt_(e, names[i], i);
    }
    J2OBJC_SET_INITIALIZED(RxNotification_Kind)
  }
}

@end

void RxNotification_Kind_initWithNSString_withInt_(RxNotification_Kind *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *RxNotification_Kind_values() {
  RxNotification_Kind_initialize();
  return [IOSObjectArray arrayWithObjects:RxNotification_Kind_values_ count:3 type:RxNotification_Kind_class_()];
}

RxNotification_Kind *RxNotification_Kind_valueOfWithNSString_(NSString *name) {
  RxNotification_Kind_initialize();
  for (int i = 0; i < 3; i++) {
    RxNotification_Kind *e = RxNotification_Kind_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

RxNotification_Kind *RxNotification_Kind_fromOrdinal(NSUInteger ordinal) {
  RxNotification_Kind_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return RxNotification_Kind_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxNotification_Kind)
