//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "AndroidDatabaseDataSetObserver.h"
#include "J2ObjC_source.h"

@implementation AndroidDatabaseDataSetObserver

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidDatabaseDataSetObserver_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)onChanged {
}

- (void)onInvalidated {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(onChanged);
  methods[2].selector = @selector(onInvalidated);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _AndroidDatabaseDataSetObserver = { "DataSetObserver", "android.database", NULL, methods, NULL, 7, 0x401, 3, 0, -1, -1, -1, -1, -1 };
  return &_AndroidDatabaseDataSetObserver;
}

@end

void AndroidDatabaseDataSetObserver_init(AndroidDatabaseDataSetObserver *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseDataSetObserver)
