//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel-doppl/core-doppl/androidbase/src/main/java/android/os/RemoteException.java
//

#include "AndroidUtilAndroidException.h"
#include "J2ObjC_source.h"
#include "RemoteException.h"

@implementation AndroidOsRemoteException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidOsRemoteException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _AndroidOsRemoteException = { "RemoteException", "android.os", NULL, methods, NULL, 7, 0x1, 1, 0, -1, -1, -1, -1, -1 };
  return &_AndroidOsRemoteException;
}

@end

void AndroidOsRemoteException_init(AndroidOsRemoteException *self) {
  AndroidUtilAndroidException_init(self);
}

AndroidOsRemoteException *new_AndroidOsRemoteException_init() {
  J2OBJC_NEW_IMPL(AndroidOsRemoteException, init)
}

AndroidOsRemoteException *create_AndroidOsRemoteException_init() {
  J2OBJC_CREATE_IMPL(AndroidOsRemoteException, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidOsRemoteException)
