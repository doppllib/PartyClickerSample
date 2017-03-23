//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "RxExceptionsCompositeException.h"
#include "RxExceptionsExceptions.h"
#include "RxExceptionsOnCompletedFailedException.h"
#include "RxExceptionsOnErrorFailedException.h"
#include "RxExceptionsOnErrorNotImplementedException.h"
#include "RxExceptionsUnsubscribeFailedException.h"
#include "RxObserversSafeSubscriber.h"
#include "RxPluginsRxJavaErrorHandler.h"
#include "RxPluginsRxJavaHooks.h"
#include "RxPluginsRxJavaPlugins.h"
#include "RxSubscriber.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"

@interface RxObserversSafeSubscriber () {
 @public
  RxSubscriber *actual_;
}

@end

J2OBJC_FIELD_SETTER(RxObserversSafeSubscriber, actual_, RxSubscriber *)

@implementation RxObserversSafeSubscriber

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual {
  RxObserversSafeSubscriber_initWithRxSubscriber_(self, actual);
  return self;
}

- (void)onCompleted {
  if (!done_) {
    done_ = true;
    @try {
      [((RxSubscriber *) nil_chk(actual_)) onCompleted];
    }
    @catch (NSException *e) {
      RxExceptionsExceptions_throwIfFatalWithNSException_(e);
      RxPluginsRxJavaHooks_onErrorWithNSException_(e);
      @throw create_RxExceptionsOnCompletedFailedException_initWithNSString_withNSException_([((NSException *) nil_chk(e)) getMessage], e);
    }
    @finally {
      @try {
        [self unsubscribe];
      }
      @catch (NSException *e) {
        RxPluginsRxJavaHooks_onErrorWithNSException_(e);
        @throw create_RxExceptionsUnsubscribeFailedException_initWithNSString_withNSException_([((NSException *) nil_chk(e)) getMessage], e);
      }
    }
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  RxExceptionsExceptions_throwIfFatalWithNSException_(e);
  if (!done_) {
    done_ = true;
    [self _onErrorWithNSException:e];
  }
}

- (void)onNextWithId:(id)args {
  @try {
    if (!done_) {
      [((RxSubscriber *) nil_chk(actual_)) onNextWithId:args];
    }
  }
  @catch (NSException *e) {
    RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(e, self);
  }
}

- (void)_onErrorWithNSException:(NSException *)e {
  [((RxPluginsRxJavaErrorHandler *) nil_chk([((RxPluginsRxJavaPlugins *) nil_chk(RxPluginsRxJavaPlugins_getInstance())) getErrorHandler])) handleErrorWithNSException:e];
  @try {
    [((RxSubscriber *) nil_chk(actual_)) onErrorWithNSException:e];
  }
  @catch (RxExceptionsOnErrorNotImplementedException *e2) {
    @try {
      [self unsubscribe];
    }
    @catch (NSException *unsubscribeException) {
      RxPluginsRxJavaHooks_onErrorWithNSException_(unsubscribeException);
      @throw create_RxExceptionsOnErrorNotImplementedException_initWithNSString_withNSException_(@"Observer.onError not implemented and error while unsubscribing.", create_RxExceptionsCompositeException_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ e, unsubscribeException } count:2 type:NSException_class_()])));
    }
    @throw e2;
  }
  @catch (NSException *e2) {
    RxPluginsRxJavaHooks_onErrorWithNSException_(e2);
    @try {
      [self unsubscribe];
    }
    @catch (NSException *unsubscribeException) {
      RxPluginsRxJavaHooks_onErrorWithNSException_(unsubscribeException);
      @throw create_RxExceptionsOnErrorFailedException_initWithNSString_withNSException_(@"Error occurred when trying to propagate error to Observer.onError and during unsubscription.", create_RxExceptionsCompositeException_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ e, e2, unsubscribeException } count:3 type:NSException_class_()])));
    }
    @throw create_RxExceptionsOnErrorFailedException_initWithNSString_withNSException_(@"Error occurred when trying to propagate error to Observer.onError", create_RxExceptionsCompositeException_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ e, e2 } count:2 type:NSException_class_()])));
  }
  @try {
    [self unsubscribe];
  }
  @catch (NSException *unsubscribeException) {
    RxPluginsRxJavaHooks_onErrorWithNSException_(unsubscribeException);
    @throw create_RxExceptionsOnErrorFailedException_initWithNSException_(unsubscribeException);
  }
}

- (RxSubscriber *)getActual {
  return actual_;
}

- (void)dealloc {
  RELEASE_(actual_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, 6, -1, -1 },
    { NULL, "V", 0x4, 7, 3, -1, -1, -1, -1 },
    { NULL, "LRxSubscriber;", 0x1, -1, -1, -1, 8, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithRxSubscriber:);
  methods[1].selector = @selector(onCompleted);
  methods[2].selector = @selector(onErrorWithNSException:);
  methods[3].selector = @selector(onNextWithId:);
  methods[4].selector = @selector(_onErrorWithNSException:);
  methods[5].selector = @selector(getActual);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "actual_", "LRxSubscriber;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
    { "done_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)V", "onError", "LNSException;", "onNext", "LNSObject;", "(TT;)V", "_onError", "()Lrx/Subscriber<-TT;>;", "Lrx/Subscriber<-TT;>;", "<T:Ljava/lang/Object;>Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxObserversSafeSubscriber = { "SafeSubscriber", "rx.observers", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, -1, -1, 10, -1 };
  return &_RxObserversSafeSubscriber;
}

@end

void RxObserversSafeSubscriber_initWithRxSubscriber_(RxObserversSafeSubscriber *self, RxSubscriber *actual) {
  RxSubscriber_initWithRxSubscriber_(self, actual);
  JreStrongAssign(&self->actual_, actual);
}

RxObserversSafeSubscriber *new_RxObserversSafeSubscriber_initWithRxSubscriber_(RxSubscriber *actual) {
  J2OBJC_NEW_IMPL(RxObserversSafeSubscriber, initWithRxSubscriber_, actual)
}

RxObserversSafeSubscriber *create_RxObserversSafeSubscriber_initWithRxSubscriber_(RxSubscriber *actual) {
  J2OBJC_CREATE_IMPL(RxObserversSafeSubscriber, initWithRxSubscriber_, actual)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversSafeSubscriber)