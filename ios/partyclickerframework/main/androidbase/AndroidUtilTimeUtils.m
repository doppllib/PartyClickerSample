//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "AndroidUtilTimeUtils.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"

@interface AndroidUtilTimeUtils ()

+ (jint)accumFieldWithInt:(jint)amt
                  withInt:(jint)suffix
              withBoolean:(jboolean)always
                  withInt:(jint)zeropad;

+ (jint)printFieldLockedWithCharArray:(IOSCharArray *)formatStr
                              withInt:(jint)amt
                             withChar:(jchar)suffix
                              withInt:(jint)pos
                          withBoolean:(jboolean)always
                              withInt:(jint)zeropad;

+ (jint)formatDurationLockedWithLong:(jlong)duration
                             withInt:(jint)fieldLen;

@end

inline jint AndroidUtilTimeUtils_get_SECONDS_PER_MINUTE();
#define AndroidUtilTimeUtils_SECONDS_PER_MINUTE 60
J2OBJC_STATIC_FIELD_CONSTANT(AndroidUtilTimeUtils, SECONDS_PER_MINUTE, jint)

inline jint AndroidUtilTimeUtils_get_SECONDS_PER_HOUR();
#define AndroidUtilTimeUtils_SECONDS_PER_HOUR 3600
J2OBJC_STATIC_FIELD_CONSTANT(AndroidUtilTimeUtils, SECONDS_PER_HOUR, jint)

inline jint AndroidUtilTimeUtils_get_SECONDS_PER_DAY();
#define AndroidUtilTimeUtils_SECONDS_PER_DAY 86400
J2OBJC_STATIC_FIELD_CONSTANT(AndroidUtilTimeUtils, SECONDS_PER_DAY, jint)

inline id AndroidUtilTimeUtils_get_sFormatSync();
static id AndroidUtilTimeUtils_sFormatSync;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidUtilTimeUtils, sFormatSync, id)

inline IOSCharArray *AndroidUtilTimeUtils_get_sFormatStr();
inline IOSCharArray *AndroidUtilTimeUtils_set_sFormatStr(IOSCharArray *value);
static IOSCharArray *AndroidUtilTimeUtils_sFormatStr;
J2OBJC_STATIC_FIELD_OBJ(AndroidUtilTimeUtils, sFormatStr, IOSCharArray *)

inline IOSCharArray *AndroidUtilTimeUtils_get_sTmpFormatStr();
inline IOSCharArray *AndroidUtilTimeUtils_set_sTmpFormatStr(IOSCharArray *value);
static IOSCharArray *AndroidUtilTimeUtils_sTmpFormatStr;
J2OBJC_STATIC_FIELD_OBJ(AndroidUtilTimeUtils, sTmpFormatStr, IOSCharArray *)

__attribute__((unused)) static jint AndroidUtilTimeUtils_accumFieldWithInt_withInt_withBoolean_withInt_(jint amt, jint suffix, jboolean always, jint zeropad);

__attribute__((unused)) static jint AndroidUtilTimeUtils_printFieldLockedWithCharArray_withInt_withChar_withInt_withBoolean_withInt_(IOSCharArray *formatStr, jint amt, jchar suffix, jint pos, jboolean always, jint zeropad);

__attribute__((unused)) static jint AndroidUtilTimeUtils_formatDurationLockedWithLong_withInt_(jlong duration, jint fieldLen);

J2OBJC_INITIALIZED_DEFN(AndroidUtilTimeUtils)

@implementation AndroidUtilTimeUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidUtilTimeUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)accumFieldWithInt:(jint)amt
                  withInt:(jint)suffix
              withBoolean:(jboolean)always
                  withInt:(jint)zeropad {
  return AndroidUtilTimeUtils_accumFieldWithInt_withInt_withBoolean_withInt_(amt, suffix, always, zeropad);
}

+ (jint)printFieldLockedWithCharArray:(IOSCharArray *)formatStr
                              withInt:(jint)amt
                             withChar:(jchar)suffix
                              withInt:(jint)pos
                          withBoolean:(jboolean)always
                              withInt:(jint)zeropad {
  return AndroidUtilTimeUtils_printFieldLockedWithCharArray_withInt_withChar_withInt_withBoolean_withInt_(formatStr, amt, suffix, pos, always, zeropad);
}

+ (jint)formatDurationLockedWithLong:(jlong)duration
                             withInt:(jint)fieldLen {
  return AndroidUtilTimeUtils_formatDurationLockedWithLong_withInt_(duration, fieldLen);
}

+ (void)formatDurationWithLong:(jlong)duration
     withJavaLangStringBuilder:(JavaLangStringBuilder *)builder {
  AndroidUtilTimeUtils_formatDurationWithLong_withJavaLangStringBuilder_(duration, builder);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(accumFieldWithInt:withInt:withBoolean:withInt:);
  methods[2].selector = @selector(printFieldLockedWithCharArray:withInt:withChar:withInt:withBoolean:withInt:);
  methods[3].selector = @selector(formatDurationLockedWithLong:withInt:);
  methods[4].selector = @selector(formatDurationWithLong:withJavaLangStringBuilder:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "HUNDRED_DAY_FIELD_LEN", "I", .constantValue.asInt = AndroidUtilTimeUtils_HUNDRED_DAY_FIELD_LEN, 0x19, -1, -1, -1, -1 },
    { "SECONDS_PER_MINUTE", "I", .constantValue.asInt = AndroidUtilTimeUtils_SECONDS_PER_MINUTE, 0x1a, -1, -1, -1, -1 },
    { "SECONDS_PER_HOUR", "I", .constantValue.asInt = AndroidUtilTimeUtils_SECONDS_PER_HOUR, 0x1a, -1, -1, -1, -1 },
    { "SECONDS_PER_DAY", "I", .constantValue.asInt = AndroidUtilTimeUtils_SECONDS_PER_DAY, 0x1a, -1, -1, -1, -1 },
    { "NANOS_PER_MS", "J", .constantValue.asLong = AndroidUtilTimeUtils_NANOS_PER_MS, 0x19, -1, -1, -1, -1 },
    { "sFormatSync", "LNSObject;", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "sFormatStr", "[C", .constantValue.asLong = 0, 0xa, -1, 9, -1, -1 },
    { "sTmpFormatStr", "[C", .constantValue.asLong = 0, 0xa, -1, 10, -1, -1 },
  };
  static const void *ptrTable[] = { "accumField", "IIZI", "printFieldLocked", "[CICIZI", "formatDurationLocked", "JI", "formatDuration", "JLJavaLangStringBuilder;", &AndroidUtilTimeUtils_sFormatSync, &AndroidUtilTimeUtils_sFormatStr, &AndroidUtilTimeUtils_sTmpFormatStr };
  static const J2ObjcClassInfo _AndroidUtilTimeUtils = { "TimeUtils", "android.util", ptrTable, methods, fields, 7, 0x1, 5, 8, -1, -1, -1, -1, -1 };
  return &_AndroidUtilTimeUtils;
}

+ (void)initialize {
  if (self == [AndroidUtilTimeUtils class]) {
    JreStrongAssignAndConsume(&AndroidUtilTimeUtils_sFormatSync, new_NSObject_init());
    JreStrongAssignAndConsume(&AndroidUtilTimeUtils_sFormatStr, [IOSCharArray newArrayWithLength:AndroidUtilTimeUtils_HUNDRED_DAY_FIELD_LEN + 10]);
    JreStrongAssignAndConsume(&AndroidUtilTimeUtils_sTmpFormatStr, [IOSCharArray newArrayWithLength:AndroidUtilTimeUtils_HUNDRED_DAY_FIELD_LEN + 10]);
    J2OBJC_SET_INITIALIZED(AndroidUtilTimeUtils)
  }
}

@end

void AndroidUtilTimeUtils_init(AndroidUtilTimeUtils *self) {
  NSObject_init(self);
}

AndroidUtilTimeUtils *new_AndroidUtilTimeUtils_init() {
  J2OBJC_NEW_IMPL(AndroidUtilTimeUtils, init)
}

AndroidUtilTimeUtils *create_AndroidUtilTimeUtils_init() {
  J2OBJC_CREATE_IMPL(AndroidUtilTimeUtils, init)
}

jint AndroidUtilTimeUtils_accumFieldWithInt_withInt_withBoolean_withInt_(jint amt, jint suffix, jboolean always, jint zeropad) {
  AndroidUtilTimeUtils_initialize();
  if (amt > 999) {
    jint num = 0;
    while (amt != 0) {
      num++;
      amt /= 10;
    }
    return num + suffix;
  }
  else {
    if (amt > 99 || (always && zeropad >= 3)) {
      return 3 + suffix;
    }
    if (amt > 9 || (always && zeropad >= 2)) {
      return 2 + suffix;
    }
    if (always || amt > 0) {
      return 1 + suffix;
    }
  }
  return 0;
}

jint AndroidUtilTimeUtils_printFieldLockedWithCharArray_withInt_withChar_withInt_withBoolean_withInt_(IOSCharArray *formatStr, jint amt, jchar suffix, jint pos, jboolean always, jint zeropad) {
  AndroidUtilTimeUtils_initialize();
  if (always || amt > 0) {
    jint startPos = pos;
    if (amt > 999) {
      jint tmp = 0;
      while (amt != 0 && tmp < ((IOSCharArray *) nil_chk(AndroidUtilTimeUtils_sTmpFormatStr))->size_) {
        jint dig = amt % 10;
        *IOSCharArray_GetRef(nil_chk(AndroidUtilTimeUtils_sTmpFormatStr), tmp) = (jchar) (dig + '0');
        tmp++;
        amt /= 10;
      }
      tmp--;
      while (tmp >= 0) {
        *IOSCharArray_GetRef(nil_chk(formatStr), pos) = IOSCharArray_Get(nil_chk(AndroidUtilTimeUtils_sTmpFormatStr), tmp);
        pos++;
        tmp--;
      }
    }
    else {
      if ((always && zeropad >= 3) || amt > 99) {
        jint dig = amt / 100;
        *IOSCharArray_GetRef(nil_chk(formatStr), pos) = (jchar) (dig + '0');
        pos++;
        amt -= (dig * 100);
      }
      if ((always && zeropad >= 2) || amt > 9 || startPos != pos) {
        jint dig = amt / 10;
        *IOSCharArray_GetRef(nil_chk(formatStr), pos) = (jchar) (dig + '0');
        pos++;
        amt -= (dig * 10);
      }
      *IOSCharArray_GetRef(nil_chk(formatStr), pos) = (jchar) (amt + '0');
      pos++;
    }
    *IOSCharArray_GetRef(nil_chk(formatStr), pos) = suffix;
    pos++;
  }
  return pos;
}

jint AndroidUtilTimeUtils_formatDurationLockedWithLong_withInt_(jlong duration, jint fieldLen) {
  AndroidUtilTimeUtils_initialize();
  if (((IOSCharArray *) nil_chk(AndroidUtilTimeUtils_sFormatStr))->size_ < fieldLen) {
    JreStrongAssignAndConsume(&AndroidUtilTimeUtils_sFormatStr, [IOSCharArray newArrayWithLength:fieldLen]);
  }
  IOSCharArray *formatStr = AndroidUtilTimeUtils_sFormatStr;
  if (duration == 0) {
    jint pos = 0;
    fieldLen -= 1;
    while (pos < fieldLen) {
      *IOSCharArray_GetRef(formatStr, pos++) = ' ';
    }
    *IOSCharArray_GetRef(formatStr, pos) = '0';
    return pos + 1;
  }
  jchar prefix;
  if (duration > 0) {
    prefix = '+';
  }
  else {
    prefix = '-';
    duration = -duration;
  }
  jint millis = (jint) (duration % 1000);
  jint seconds = JreFpToInt(JavaLangMath_floorWithDouble_(duration / 1000));
  jint days = 0;
  jint hours = 0;
  jint minutes = 0;
  if (seconds > AndroidUtilTimeUtils_SECONDS_PER_DAY) {
    days = seconds / AndroidUtilTimeUtils_SECONDS_PER_DAY;
    seconds -= days * AndroidUtilTimeUtils_SECONDS_PER_DAY;
  }
  if (seconds > AndroidUtilTimeUtils_SECONDS_PER_HOUR) {
    hours = seconds / AndroidUtilTimeUtils_SECONDS_PER_HOUR;
    seconds -= hours * AndroidUtilTimeUtils_SECONDS_PER_HOUR;
  }
  if (seconds > AndroidUtilTimeUtils_SECONDS_PER_MINUTE) {
    minutes = seconds / AndroidUtilTimeUtils_SECONDS_PER_MINUTE;
    seconds -= minutes * AndroidUtilTimeUtils_SECONDS_PER_MINUTE;
  }
  jint pos = 0;
  if (fieldLen != 0) {
    jint myLen = AndroidUtilTimeUtils_accumFieldWithInt_withInt_withBoolean_withInt_(days, 1, false, 0);
    myLen += AndroidUtilTimeUtils_accumFieldWithInt_withInt_withBoolean_withInt_(hours, 1, myLen > 0, 2);
    myLen += AndroidUtilTimeUtils_accumFieldWithInt_withInt_withBoolean_withInt_(minutes, 1, myLen > 0, 2);
    myLen += AndroidUtilTimeUtils_accumFieldWithInt_withInt_withBoolean_withInt_(seconds, 1, myLen > 0, 2);
    myLen += AndroidUtilTimeUtils_accumFieldWithInt_withInt_withBoolean_withInt_(millis, 2, true, myLen > 0 ? 3 : 0) + 1;
    while (myLen < fieldLen) {
      *IOSCharArray_GetRef(formatStr, pos) = ' ';
      pos++;
      myLen++;
    }
  }
  *IOSCharArray_GetRef(formatStr, pos) = prefix;
  pos++;
  jint start = pos;
  jboolean zeropad = fieldLen != 0;
  pos = AndroidUtilTimeUtils_printFieldLockedWithCharArray_withInt_withChar_withInt_withBoolean_withInt_(formatStr, days, 'd', pos, false, 0);
  pos = AndroidUtilTimeUtils_printFieldLockedWithCharArray_withInt_withChar_withInt_withBoolean_withInt_(formatStr, hours, 'h', pos, pos != start, zeropad ? 2 : 0);
  pos = AndroidUtilTimeUtils_printFieldLockedWithCharArray_withInt_withChar_withInt_withBoolean_withInt_(formatStr, minutes, 'm', pos, pos != start, zeropad ? 2 : 0);
  pos = AndroidUtilTimeUtils_printFieldLockedWithCharArray_withInt_withChar_withInt_withBoolean_withInt_(formatStr, seconds, 's', pos, pos != start, zeropad ? 2 : 0);
  pos = AndroidUtilTimeUtils_printFieldLockedWithCharArray_withInt_withChar_withInt_withBoolean_withInt_(formatStr, millis, 'm', pos, true, (zeropad && pos != start) ? 3 : 0);
  *IOSCharArray_GetRef(formatStr, pos) = 's';
  return pos + 1;
}

void AndroidUtilTimeUtils_formatDurationWithLong_withJavaLangStringBuilder_(jlong duration, JavaLangStringBuilder *builder) {
  AndroidUtilTimeUtils_initialize();
  @synchronized(AndroidUtilTimeUtils_sFormatSync) {
    jint len = AndroidUtilTimeUtils_formatDurationLockedWithLong_withInt_(duration, 0);
    [((JavaLangStringBuilder *) nil_chk(builder)) appendWithCharArray:AndroidUtilTimeUtils_sFormatStr withInt:0 withInt:len];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidUtilTimeUtils)
