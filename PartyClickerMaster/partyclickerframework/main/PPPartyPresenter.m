//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "PDDataProvider.h"
#include "PDModPersonTask.h"
#include "PDParty.h"
#include "PPPartyPresenter.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/concurrent/ExecutorService.h"
#include "java/util/concurrent/Executors.h"
#include "javax/inject/Inject.h"

@interface PPPartyPresenter () {
 @public
  jint partyId_;
  PDParty *party_;
  jint partyCount_;
  id<JavaUtilConcurrentExecutorService> executorService_;
}

@end

J2OBJC_FIELD_SETTER(PPPartyPresenter, party_, PDParty *)
J2OBJC_FIELD_SETTER(PPPartyPresenter, executorService_, id<JavaUtilConcurrentExecutorService>)

__attribute__((unused)) static IOSObjectArray *PPPartyPresenter__Annotations$0();

@implementation PPPartyPresenter

- (instancetype)initWithInt:(jint)partyId {
  PPPartyPresenter_initWithInt_(self, partyId);
  return self;
}

- (void)init__ {
  JreStrongAssign(&party_, [((id<PDDataProvider>) nil_chk(databaseHelper_)) loadPartyWithInt:partyId_]);
  partyCount_ = [((id<PDDataProvider>) nil_chk(databaseHelper_)) countCurrentPartyWithInt:partyId_];
}

- (void)addPerson {
  partyCount_++;
  [((id<JavaUtilConcurrentExecutorService>) nil_chk(executorService_)) executeWithJavaLangRunnable:create_PDModPersonTask_initWithPDParty_withBoolean_withPDDataProvider_(party_, true, databaseHelper_)];
}

- (void)removePerson {
  if (partyCount_ > 0) {
    partyCount_--;
    [((id<JavaUtilConcurrentExecutorService>) nil_chk(executorService_)) executeWithJavaLangRunnable:create_PDModPersonTask_initWithPDParty_withBoolean_withPDDataProvider_(party_, false, databaseHelper_)];
  }
}

- (jint)getPartyCount {
  return partyCount_;
}

- (PDParty *)getParty {
  return party_;
}

- (void)dealloc {
  RELEASE_(party_);
  RELEASE_(executorService_);
  RELEASE_(databaseHelper_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LPDParty;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(init__);
  methods[2].selector = @selector(addPerson);
  methods[3].selector = @selector(removePerson);
  methods[4].selector = @selector(getPartyCount);
  methods[5].selector = @selector(getParty);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "partyId_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "party_", "LPDParty;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "partyCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "executorService_", "LJavaUtilConcurrentExecutorService;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "databaseHelper_", "LPDDataProvider;", .constantValue.asLong = 0, 0x0, -1, -1, -1, 2 },
  };
  static const void *ptrTable[] = { "I", "init", (void *)&PPPartyPresenter__Annotations$0 };
  static const J2ObjcClassInfo _PPPartyPresenter = { "PartyPresenter", "com.kgalligan.partyclicker.presenter", ptrTable, methods, fields, 7, 0x1, 6, 5, -1, -1, -1, -1, -1 };
  return &_PPPartyPresenter;
}

@end

void PPPartyPresenter_initWithInt_(PPPartyPresenter *self, jint partyId) {
  NSObject_init(self);
  JreStrongAssign(&self->executorService_, JavaUtilConcurrentExecutors_newSingleThreadExecutor());
  self->partyId_ = partyId;
}

PPPartyPresenter *new_PPPartyPresenter_initWithInt_(jint partyId) {
  J2OBJC_NEW_IMPL(PPPartyPresenter, initWithInt_, partyId)
}

PPPartyPresenter *create_PPPartyPresenter_initWithInt_(jint partyId) {
  J2OBJC_CREATE_IMPL(PPPartyPresenter, initWithInt_, partyId)
}

IOSObjectArray *PPPartyPresenter__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxInjectInject() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PPPartyPresenter)