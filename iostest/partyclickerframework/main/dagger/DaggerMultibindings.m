//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "DaggerMultibindings.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/Documented.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Target.h"

@interface DaggerMultibindings : NSObject

@end

__attribute__((unused)) static IOSObjectArray *DaggerMultibindings__Annotations$0();

@implementation DaggerMultibindings

+ (const J2ObjcClassInfo *)__metadata {
  static const void *ptrTable[] = { (void *)&DaggerMultibindings__Annotations$0 };
  static const J2ObjcClassInfo _DaggerMultibindings = { "Multibindings", "dagger", ptrTable, NULL, NULL, 7, 0x2609, 0, 0, -1, -1, -1, -1, 0 };
  return &_DaggerMultibindings;
}

@end

IOSObjectArray *DaggerMultibindings__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangAnnotationDocumented(), create_JavaLangAnnotationTarget([IOSObjectArray arrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, TYPE) } count:1 type:JavaLangAnnotationElementType_class_()]) } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(DaggerMultibindings)
