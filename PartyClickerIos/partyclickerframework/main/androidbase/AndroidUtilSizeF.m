//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel-doppl/core-doppl/androidbase/src/main/java/android/util/SizeF.java
//

#include "AndroidUtilSizeF.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NumberFormatException.h"

@interface AndroidUtilSizeF () {
 @public
  jfloat mWidth_;
  jfloat mHeight_;
}

+ (JavaLangNumberFormatException *)invalidSizeFWithNSString:(NSString *)s;

@end

__attribute__((unused)) static JavaLangNumberFormatException *AndroidUtilSizeF_invalidSizeFWithNSString_(NSString *s);

@implementation AndroidUtilSizeF

- (instancetype)initWithFloat:(jfloat)width
                    withFloat:(jfloat)height {
  AndroidUtilSizeF_initWithFloat_withFloat_(self, width, height);
  return self;
}

+ (jfloat)checkArgumentFiniteWithFloat:(jfloat)value
                          withNSString:(NSString *)valueName {
  return AndroidUtilSizeF_checkArgumentFiniteWithFloat_withNSString_(value, valueName);
}

- (jfloat)getWidth {
  return mWidth_;
}

- (jfloat)getHeight {
  return mHeight_;
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) {
    return false;
  }
  if (self == obj) {
    return true;
  }
  if ([obj isKindOfClass:[AndroidUtilSizeF class]]) {
    AndroidUtilSizeF *other = (AndroidUtilSizeF *) cast_chk(obj, [AndroidUtilSizeF class]);
    return mWidth_ == other->mWidth_ && mHeight_ == other->mHeight_;
  }
  return false;
}

- (NSString *)description {
  return JreStrcat("FCF", mWidth_, 'x', mHeight_);
}

+ (JavaLangNumberFormatException *)invalidSizeFWithNSString:(NSString *)s {
  return AndroidUtilSizeF_invalidSizeFWithNSString_(s);
}

+ (AndroidUtilSizeF *)parseSizeFWithNSString:(NSString *)string {
  return AndroidUtilSizeF_parseSizeFWithNSString_(string);
}

- (NSUInteger)hash {
  return JavaLangFloat_floatToIntBitsWithFloat_(mWidth_) ^ JavaLangFloat_floatToIntBitsWithFloat_(mHeight_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "F", 0x9, 1, 2, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangNumberFormatException;", 0xa, 6, 7, -1, -1, -1, -1 },
    { NULL, "LAndroidUtilSizeF;", 0x9, 8, 7, 9, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithFloat:withFloat:);
  methods[1].selector = @selector(checkArgumentFiniteWithFloat:withNSString:);
  methods[2].selector = @selector(getWidth);
  methods[3].selector = @selector(getHeight);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(description);
  methods[6].selector = @selector(invalidSizeFWithNSString:);
  methods[7].selector = @selector(parseSizeFWithNSString:);
  methods[8].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mWidth_", "F", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mHeight_", "F", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "FF", "checkArgumentFinite", "FLNSString;", "equals", "LNSObject;", "toString", "invalidSizeF", "LNSString;", "parseSizeF", "LJavaLangNumberFormatException;", "hashCode" };
  static const J2ObjcClassInfo _AndroidUtilSizeF = { "SizeF", "android.util", ptrTable, methods, fields, 7, 0x11, 9, 2, -1, -1, -1, -1, -1 };
  return &_AndroidUtilSizeF;
}

@end

void AndroidUtilSizeF_initWithFloat_withFloat_(AndroidUtilSizeF *self, jfloat width, jfloat height) {
  NSObject_init(self);
  self->mWidth_ = AndroidUtilSizeF_checkArgumentFiniteWithFloat_withNSString_(width, @"width");
  self->mHeight_ = AndroidUtilSizeF_checkArgumentFiniteWithFloat_withNSString_(height, @"height");
}

AndroidUtilSizeF *new_AndroidUtilSizeF_initWithFloat_withFloat_(jfloat width, jfloat height) {
  J2OBJC_NEW_IMPL(AndroidUtilSizeF, initWithFloat_withFloat_, width, height)
}

AndroidUtilSizeF *create_AndroidUtilSizeF_initWithFloat_withFloat_(jfloat width, jfloat height) {
  J2OBJC_CREATE_IMPL(AndroidUtilSizeF, initWithFloat_withFloat_, width, height)
}

jfloat AndroidUtilSizeF_checkArgumentFiniteWithFloat_withNSString_(jfloat value, NSString *valueName) {
  AndroidUtilSizeF_initialize();
  if (JavaLangFloat_isNaNWithFloat_(value)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", valueName, @" must not be NaN"));
  }
  else if (JavaLangFloat_isInfiniteWithFloat_(value)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", valueName, @" must not be infinite"));
  }
  return value;
}

JavaLangNumberFormatException *AndroidUtilSizeF_invalidSizeFWithNSString_(NSString *s) {
  AndroidUtilSizeF_initialize();
  @throw create_JavaLangNumberFormatException_initWithNSString_(JreStrcat("$$C", @"Invalid SizeF: \"", s, '"'));
}

AndroidUtilSizeF *AndroidUtilSizeF_parseSizeFWithNSString_(NSString *string) {
  AndroidUtilSizeF_initialize();
  if (string == nil) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"string must not be null");
  jint sep_ix = [string indexOf:'*'];
  if (sep_ix < 0) {
    sep_ix = [string indexOf:'x'];
  }
  if (sep_ix < 0) {
    @throw AndroidUtilSizeF_invalidSizeFWithNSString_(string);
  }
  @try {
    return create_AndroidUtilSizeF_initWithFloat_withFloat_(JavaLangFloat_parseFloatWithNSString_([string substring:0 endIndex:sep_ix]), JavaLangFloat_parseFloatWithNSString_([string substring:sep_ix + 1]));
  }
  @catch (JavaLangNumberFormatException *e) {
    @throw AndroidUtilSizeF_invalidSizeFWithNSString_(string);
  }
  @catch (JavaLangIllegalArgumentException *e) {
    @throw AndroidUtilSizeF_invalidSizeFWithNSString_(string);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidUtilSizeF)
