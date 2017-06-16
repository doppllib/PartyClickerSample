//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "AndroidAppApplication.h"
#include "CoTouchlabDopplTestingDopplContextTestRunner.h"
#include "CoTouchlabDopplTestingDopplRuntimeEnvironment.h"
#include "CoTouchlabDopplTestingTestingContext.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "org/junit/runner/notification/RunNotifier.h"
#include "org/junit/runners/BlockJUnit4ClassRunner.h"
#include "org/junit/runners/model/FrameworkMethod.h"

@interface CoTouchlabDopplTestingDopplContextTestRunner ()

- (JavaIoFile *)initContext OBJC_METHOD_FAMILY_NONE;

- (void)deleteRecursiveWithJavaIoFile:(JavaIoFile *)contextDataDir;

@end

__attribute__((unused)) static JavaIoFile *CoTouchlabDopplTestingDopplContextTestRunner_initContext(CoTouchlabDopplTestingDopplContextTestRunner *self);

__attribute__((unused)) static void CoTouchlabDopplTestingDopplContextTestRunner_deleteRecursiveWithJavaIoFile_(CoTouchlabDopplTestingDopplContextTestRunner *self, JavaIoFile *contextDataDir);

@implementation CoTouchlabDopplTestingDopplContextTestRunner

- (instancetype)initWithIOSClass:(IOSClass *)klass {
  CoTouchlabDopplTestingDopplContextTestRunner_initWithIOSClass_(self, klass);
  return self;
}

- (void)runChildWithId:(OrgJunitRunnersModelFrameworkMethod *)method
withOrgJunitRunnerNotificationRunNotifier:(OrgJunitRunnerNotificationRunNotifier *)notifier {
  JavaIoFile *contextDataDir = CoTouchlabDopplTestingDopplContextTestRunner_initContext(self);
  @try {
    [super runChildWithId:method withOrgJunitRunnerNotificationRunNotifier:notifier];
  }
  @finally {
    CoTouchlabDopplTestingDopplContextTestRunner_deleteRecursiveWithJavaIoFile_(self, contextDataDir);
    [((JavaIoFile *) nil_chk(contextDataDir)) delete__];
  }
}

- (JavaIoFile *)initContext {
  return CoTouchlabDopplTestingDopplContextTestRunner_initContext(self);
}

- (void)deleteRecursiveWithJavaIoFile:(JavaIoFile *)contextDataDir {
  CoTouchlabDopplTestingDopplContextTestRunner_deleteRecursiveWithJavaIoFile_(self, contextDataDir);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, 2, -1, -1 },
    { NULL, "V", 0x4, 3, 4, -1, -1, -1, -1 },
    { NULL, "LJavaIoFile;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithIOSClass:);
  methods[1].selector = @selector(runChildWithId:withOrgJunitRunnerNotificationRunNotifier:);
  methods[2].selector = @selector(initContext);
  methods[3].selector = @selector(deleteRecursiveWithJavaIoFile:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LIOSClass;", "LOrgJunitRunnersModelInitializationError;", "(Ljava/lang/Class<*>;)V", "runChild", "LOrgJunitRunnersModelFrameworkMethod;LOrgJunitRunnerNotificationRunNotifier;", "deleteRecursive", "LJavaIoFile;" };
  static const J2ObjcClassInfo _CoTouchlabDopplTestingDopplContextTestRunner = { "DopplContextTestRunner", "co.touchlab.doppl.testing", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_CoTouchlabDopplTestingDopplContextTestRunner;
}

@end

void CoTouchlabDopplTestingDopplContextTestRunner_initWithIOSClass_(CoTouchlabDopplTestingDopplContextTestRunner *self, IOSClass *klass) {
  OrgJunitRunnersBlockJUnit4ClassRunner_initWithIOSClass_(self, klass);
}

CoTouchlabDopplTestingDopplContextTestRunner *new_CoTouchlabDopplTestingDopplContextTestRunner_initWithIOSClass_(IOSClass *klass) {
  J2OBJC_NEW_IMPL(CoTouchlabDopplTestingDopplContextTestRunner, initWithIOSClass_, klass)
}

CoTouchlabDopplTestingDopplContextTestRunner *create_CoTouchlabDopplTestingDopplContextTestRunner_initWithIOSClass_(IOSClass *klass) {
  J2OBJC_CREATE_IMPL(CoTouchlabDopplTestingDopplContextTestRunner, initWithIOSClass_, klass)
}

JavaIoFile *CoTouchlabDopplTestingDopplContextTestRunner_initContext(CoTouchlabDopplTestingDopplContextTestRunner *self) {
  @try {
    JavaIoFile *context = JavaIoFile_createTempFileWithNSString_withNSString_(@"context", nil);
    NSString *filename = [((JavaIoFile *) nil_chk(context)) getName];
    if (![context isDirectory] && [((NSString *) nil_chk(filename)) java_hasSuffix:@".tmp"]) {
      context = create_JavaIoFile_initWithJavaIoFile_withNSString_([context getParentFile], [((NSString *) nil_chk(filename)) java_substring:0 endIndex:[filename java_lastIndexOfString:@".tmp"]]);
      if ([context exists]) @throw create_JavaLangRuntimeException_initWithNSString_(@"Can't create a new temp file for testing context");
    }
    [context mkdirs];
    JreStrongAssignAndConsume(JreLoadStaticRef(CoTouchlabDopplTestingDopplRuntimeEnvironment, application), new_CoTouchlabDopplTestingTestingContext_initWithJavaIoFile_(context));
    return context;
  }
  @catch (JavaIoIOException *e) {
    @throw create_JavaLangRuntimeException_initWithNSException_(e);
  }
}

void CoTouchlabDopplTestingDopplContextTestRunner_deleteRecursiveWithJavaIoFile_(CoTouchlabDopplTestingDopplContextTestRunner *self, JavaIoFile *contextDataDir) {
  IOSObjectArray *files = [((JavaIoFile *) nil_chk(contextDataDir)) listFiles];
  {
    IOSObjectArray *a__ = files;
    JavaIoFile * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    JavaIoFile * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      JavaIoFile *file = *b__++;
      if ([((JavaIoFile *) nil_chk(file)) isDirectory]) CoTouchlabDopplTestingDopplContextTestRunner_deleteRecursiveWithJavaIoFile_(self, file);
      [file delete__];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabDopplTestingDopplContextTestRunner)
