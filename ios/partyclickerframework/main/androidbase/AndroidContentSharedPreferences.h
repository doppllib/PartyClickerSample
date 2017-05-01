//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidContentSharedPreferences")
#ifdef RESTRICT_AndroidContentSharedPreferences
#define INCLUDE_ALL_AndroidContentSharedPreferences 0
#else
#define INCLUDE_ALL_AndroidContentSharedPreferences 1
#endif
#undef RESTRICT_AndroidContentSharedPreferences

#if !defined (AndroidContentSharedPreferences_) && (INCLUDE_ALL_AndroidContentSharedPreferences || defined(INCLUDE_AndroidContentSharedPreferences))
#define AndroidContentSharedPreferences_

@protocol AndroidContentSharedPreferences_Editor;
@protocol AndroidContentSharedPreferences_OnSharedPreferenceChangeListener;
@protocol JavaUtilMap;

@protocol AndroidContentSharedPreferences < JavaObject >

- (id<JavaUtilMap>)getAll;

- (NSString *)getStringWithNSString:(NSString *)key
                       withNSString:(NSString *)defValue;

- (jint)getIntWithNSString:(NSString *)key
                   withInt:(jint)defValue;

- (jlong)getLongWithNSString:(NSString *)key
                    withLong:(jlong)defValue;

- (jfloat)getFloatWithNSString:(NSString *)key
                     withFloat:(jfloat)defValue;

- (jboolean)getBooleanWithNSString:(NSString *)key
                       withBoolean:(jboolean)defValue;

- (jboolean)containsWithNSString:(NSString *)key;

- (id<AndroidContentSharedPreferences_Editor>)edit;

- (void)registerOnSharedPreferenceChangeListenerWithAndroidContentSharedPreferences_OnSharedPreferenceChangeListener:(id<AndroidContentSharedPreferences_OnSharedPreferenceChangeListener>)listener;

- (void)unregisterOnSharedPreferenceChangeListenerWithAndroidContentSharedPreferences_OnSharedPreferenceChangeListener:(id<AndroidContentSharedPreferences_OnSharedPreferenceChangeListener>)listener;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidContentSharedPreferences)

J2OBJC_TYPE_LITERAL_HEADER(AndroidContentSharedPreferences)

#endif

#if !defined (AndroidContentSharedPreferences_OnSharedPreferenceChangeListener_) && (INCLUDE_ALL_AndroidContentSharedPreferences || defined(INCLUDE_AndroidContentSharedPreferences_OnSharedPreferenceChangeListener))
#define AndroidContentSharedPreferences_OnSharedPreferenceChangeListener_

@protocol AndroidContentSharedPreferences;

@protocol AndroidContentSharedPreferences_OnSharedPreferenceChangeListener < JavaObject >

- (void)onSharedPreferenceChangedWithAndroidContentSharedPreferences:(id<AndroidContentSharedPreferences>)sharedPreferences
                                                        withNSString:(NSString *)key;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidContentSharedPreferences_OnSharedPreferenceChangeListener)

J2OBJC_TYPE_LITERAL_HEADER(AndroidContentSharedPreferences_OnSharedPreferenceChangeListener)

#endif

#if !defined (AndroidContentSharedPreferences_Editor_) && (INCLUDE_ALL_AndroidContentSharedPreferences || defined(INCLUDE_AndroidContentSharedPreferences_Editor))
#define AndroidContentSharedPreferences_Editor_

@protocol AndroidContentSharedPreferences_Editor < JavaObject >

- (id<AndroidContentSharedPreferences_Editor>)putStringWithNSString:(NSString *)key
                                                       withNSString:(NSString *)value;

- (id<AndroidContentSharedPreferences_Editor>)putIntWithNSString:(NSString *)key
                                                         withInt:(jint)value;

- (id<AndroidContentSharedPreferences_Editor>)putLongWithNSString:(NSString *)key
                                                         withLong:(jlong)value;

- (id<AndroidContentSharedPreferences_Editor>)putFloatWithNSString:(NSString *)key
                                                         withFloat:(jfloat)value;

- (id<AndroidContentSharedPreferences_Editor>)putBooleanWithNSString:(NSString *)key
                                                         withBoolean:(jboolean)value;

- (id<AndroidContentSharedPreferences_Editor>)removeWithNSString:(NSString *)key;

- (id<AndroidContentSharedPreferences_Editor>)clear;

- (jboolean)commit;

- (void)apply;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidContentSharedPreferences_Editor)

J2OBJC_TYPE_LITERAL_HEADER(AndroidContentSharedPreferences_Editor)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidContentSharedPreferences")
