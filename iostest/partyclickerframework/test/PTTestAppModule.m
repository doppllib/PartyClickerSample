//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "AndroidAppApplication.h"
#include "AndroidArchPersistenceRoomRoom.h"
#include "AndroidArchPersistenceRoomRoomDatabase.h"
#include "CoTouchlabDopplTestingDopplRuntimeEnvironment.h"
#include "DaggerModule.h"
#include "DaggerProvides.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "PDDataProvider.h"
#include "PDDatabaseHelper.h"
#include "PDPartyDatabase.h"
#include "PPCrashReporter.h"
#include "PPLogCrashReporter.h"
#include "PTTestAppModule.h"
#include "RxAndroidSchedulersAndroidSchedulers.h"
#include "RxObservable.h"
#include "RxScheduler.h"
#include "RxSchedulersSchedulers.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/inject/Singleton.h"

#pragma clang diagnostic ignored "-Wprotocol"

__attribute__((unused)) static IOSObjectArray *PTTestAppModule__Annotations$0();

__attribute__((unused)) static IOSObjectArray *PTTestAppModule__Annotations$1();

__attribute__((unused)) static IOSObjectArray *PTTestAppModule__Annotations$2();

__attribute__((unused)) static IOSObjectArray *PTTestAppModule__Annotations$3();

__attribute__((unused)) static IOSObjectArray *PTTestAppModule__Annotations$4();

__attribute__((unused)) static IOSObjectArray *PTTestAppModule__Annotations$5();

@interface PTTestAppModule_$Lambda$1 : NSObject < RxObservable_Transformer >

- (id)callWithId:(id)o;

@end

J2OBJC_STATIC_INIT(PTTestAppModule_$Lambda$1)

inline PTTestAppModule_$Lambda$1 *PTTestAppModule_$Lambda$1_get_instance();
static PTTestAppModule_$Lambda$1 *PTTestAppModule_$Lambda$1_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(PTTestAppModule_$Lambda$1, instance, PTTestAppModule_$Lambda$1 *)

__attribute__((unused)) static void PTTestAppModule_$Lambda$1_init(PTTestAppModule_$Lambda$1 *self);

__attribute__((unused)) static PTTestAppModule_$Lambda$1 *new_PTTestAppModule_$Lambda$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static PTTestAppModule_$Lambda$1 *create_PTTestAppModule_$Lambda$1_init();

@implementation PTTestAppModule

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  PTTestAppModule_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (AndroidAppApplication *)providesApplication {
  return CoTouchlabDopplTestingDopplRuntimeEnvironment_getApplication();
}

- (id<PDDataProvider>)providesDataProviderWithPDPartyDatabase:(PDPartyDatabase *)partyDatabase {
  return create_PDDatabaseHelper_initWithPDPartyDatabase_(partyDatabase);
}

- (PDPartyDatabase *)providesPartyDatabaseWithAndroidAppApplication:(AndroidAppApplication *)application {
  return ((PDPartyDatabase *) [((AndroidArchPersistenceRoomRoomDatabase_Builder *) nil_chk([((AndroidArchPersistenceRoomRoomDatabase_Builder *) nil_chk(AndroidArchPersistenceRoomRoom_databaseBuilderWithAndroidContentContext_withIOSClass_withNSString_(application, PDPartyDatabase_class_(), @"hmm"))) allowMainThreadQueries])) build]);
}

- (id<PPCrashReporter>)providesCrashReporter {
  return create_PPLogCrashReporter_init();
}

- (id<RxObservable_Transformer>)providesSchedulerTransformer {
  return JreLoadStatic(PTTestAppModule_$Lambda$1, instance);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LAndroidAppApplication;", 0x0, -1, -1, -1, -1, 0, -1 },
    { NULL, "LPDDataProvider;", 0x0, 1, 2, -1, -1, 3, -1 },
    { NULL, "LPDPartyDatabase;", 0x0, 4, 5, -1, -1, 6, -1 },
    { NULL, "LPPCrashReporter;", 0x0, -1, -1, -1, -1, 7, -1 },
    { NULL, "LRxObservable_Transformer;", 0x0, -1, -1, -1, -1, 8, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(providesApplication);
  methods[2].selector = @selector(providesDataProviderWithPDPartyDatabase:);
  methods[3].selector = @selector(providesPartyDatabaseWithAndroidAppApplication:);
  methods[4].selector = @selector(providesCrashReporter);
  methods[5].selector = @selector(providesSchedulerTransformer);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { (void *)&PTTestAppModule__Annotations$0, "providesDataProvider", "LPDPartyDatabase;", (void *)&PTTestAppModule__Annotations$1, "providesPartyDatabase", "LAndroidAppApplication;", (void *)&PTTestAppModule__Annotations$2, (void *)&PTTestAppModule__Annotations$3, (void *)&PTTestAppModule__Annotations$4, (void *)&PTTestAppModule__Annotations$5 };
  static const J2ObjcClassInfo _PTTestAppModule = { "TestAppModule", "com.kgalligan.partyclicker.test", ptrTable, methods, NULL, 7, 0x1, 6, 0, -1, -1, -1, -1, 9 };
  return &_PTTestAppModule;
}

@end

void PTTestAppModule_init(PTTestAppModule *self) {
  NSObject_init(self);
}

PTTestAppModule *new_PTTestAppModule_init() {
  J2OBJC_NEW_IMPL(PTTestAppModule, init)
}

PTTestAppModule *create_PTTestAppModule_init() {
  J2OBJC_CREATE_IMPL(PTTestAppModule, init)
}

IOSObjectArray *PTTestAppModule__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_DaggerProvides(JreLoadEnum(DaggerProvides_Type, UNIQUE)), create_JavaxInjectSingleton() } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *PTTestAppModule__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_DaggerProvides(JreLoadEnum(DaggerProvides_Type, UNIQUE)), create_JavaxInjectSingleton() } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *PTTestAppModule__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_DaggerProvides(JreLoadEnum(DaggerProvides_Type, UNIQUE)), create_JavaxInjectSingleton() } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *PTTestAppModule__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_DaggerProvides(JreLoadEnum(DaggerProvides_Type, UNIQUE)), create_JavaxInjectSingleton() } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *PTTestAppModule__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_DaggerProvides(JreLoadEnum(DaggerProvides_Type, UNIQUE)), create_JavaxInjectSingleton() } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *PTTestAppModule__Annotations$5() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_DaggerModule([IOSObjectArray arrayWithLength:0 type:IOSClass_class_()]) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PTTestAppModule)

J2OBJC_INITIALIZED_DEFN(PTTestAppModule_$Lambda$1)

@implementation PTTestAppModule_$Lambda$1

- (id)callWithId:(id)o {
  RxObservable *observable = (RxObservable *) cast_chk(o, [RxObservable class]);
  return [((RxObservable *) nil_chk([((RxObservable *) nil_chk(observable)) subscribeOnWithRxScheduler:RxSchedulersSchedulers_io()])) observeOnWithRxScheduler:RxAndroidSchedulersAndroidSchedulers_mainThread()];
}

+ (void)initialize {
  if (self == [PTTestAppModule_$Lambda$1 class]) {
    JreStrongAssignAndConsume(&PTTestAppModule_$Lambda$1_instance, new_PTTestAppModule_$Lambda$1_init());
    J2OBJC_SET_INITIALIZED(PTTestAppModule_$Lambda$1)
  }
}

@end

void PTTestAppModule_$Lambda$1_init(PTTestAppModule_$Lambda$1 *self) {
  NSObject_init(self);
}

PTTestAppModule_$Lambda$1 *new_PTTestAppModule_$Lambda$1_init() {
  J2OBJC_NEW_IMPL(PTTestAppModule_$Lambda$1, init)
}

PTTestAppModule_$Lambda$1 *create_PTTestAppModule_$Lambda$1_init() {
  J2OBJC_CREATE_IMPL(PTTestAppModule_$Lambda$1, init)
}
