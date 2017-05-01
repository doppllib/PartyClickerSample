//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue")
#ifdef RESTRICT_RxInternalUtilUnsafeMpmcArrayQueue
#define INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue 0
#else
#define INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue 1
#endif
#undef RESTRICT_RxInternalUtilUnsafeMpmcArrayQueue
#ifdef INCLUDE_RxInternalUtilUnsafeMpmcArrayQueue
#define INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueConsumerField 1
#endif
#ifdef INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueConsumerField
#define INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueL2Pad 1
#endif
#ifdef INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueL2Pad
#define INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueProducerField 1
#endif
#ifdef INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueProducerField
#define INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueL1Pad 1
#endif

#if !defined (RxInternalUtilUnsafeMpmcArrayQueueL1Pad_) && (INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueL1Pad))
#define RxInternalUtilUnsafeMpmcArrayQueueL1Pad_

#define RESTRICT_RxInternalUtilUnsafeConcurrentSequencedCircularArrayQueue 1
#define INCLUDE_RxInternalUtilUnsafeConcurrentSequencedCircularArrayQueue 1
#include "RxInternalUtilUnsafeConcurrentSequencedCircularArrayQueue.h"

@interface RxInternalUtilUnsafeMpmcArrayQueueL1Pad : RxInternalUtilUnsafeConcurrentSequencedCircularArrayQueue {
 @public
  jlong p10_;
  jlong p11_;
  jlong p12_;
  jlong p13_;
  jlong p14_;
  jlong p15_;
  jlong p16_;
  jlong p30_MpmcArrayQueueL1Pad_;
  jlong p31_MpmcArrayQueueL1Pad_;
  jlong p32_MpmcArrayQueueL1Pad_;
  jlong p33_MpmcArrayQueueL1Pad_;
  jlong p34_MpmcArrayQueueL1Pad_;
  jlong p35_MpmcArrayQueueL1Pad_;
  jlong p36_MpmcArrayQueueL1Pad_;
  jlong p37_MpmcArrayQueueL1Pad_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilUnsafeMpmcArrayQueueL1Pad)

FOUNDATION_EXPORT void RxInternalUtilUnsafeMpmcArrayQueueL1Pad_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueL1Pad *self, jint capacity);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeMpmcArrayQueueL1Pad)

#endif

#if !defined (RxInternalUtilUnsafeMpmcArrayQueueProducerField_) && (INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueProducerField))
#define RxInternalUtilUnsafeMpmcArrayQueueProducerField_

@interface RxInternalUtilUnsafeMpmcArrayQueueProducerField : RxInternalUtilUnsafeMpmcArrayQueueL1Pad

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

#pragma mark Protected

- (jboolean)casProducerIndexWithLong:(jlong)expect
                            withLong:(jlong)newValue;

- (jlong)lvProducerIndex;

#pragma mark Package-Private

@end

J2OBJC_STATIC_INIT(RxInternalUtilUnsafeMpmcArrayQueueProducerField)

FOUNDATION_EXPORT void RxInternalUtilUnsafeMpmcArrayQueueProducerField_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueProducerField *self, jint capacity);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeMpmcArrayQueueProducerField)

#endif

#if !defined (RxInternalUtilUnsafeMpmcArrayQueueL2Pad_) && (INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueL2Pad))
#define RxInternalUtilUnsafeMpmcArrayQueueL2Pad_

@interface RxInternalUtilUnsafeMpmcArrayQueueL2Pad : RxInternalUtilUnsafeMpmcArrayQueueProducerField {
 @public
  jlong p20_;
  jlong p21_;
  jlong p22_;
  jlong p23_;
  jlong p24_;
  jlong p25_;
  jlong p26_;
  jlong p30_MpmcArrayQueueL2Pad_;
  jlong p31_MpmcArrayQueueL2Pad_;
  jlong p32_MpmcArrayQueueL2Pad_;
  jlong p33_MpmcArrayQueueL2Pad_;
  jlong p34_MpmcArrayQueueL2Pad_;
  jlong p35_MpmcArrayQueueL2Pad_;
  jlong p36_MpmcArrayQueueL2Pad_;
  jlong p37_MpmcArrayQueueL2Pad_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilUnsafeMpmcArrayQueueL2Pad)

FOUNDATION_EXPORT void RxInternalUtilUnsafeMpmcArrayQueueL2Pad_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueL2Pad *self, jint capacity);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeMpmcArrayQueueL2Pad)

#endif

#if !defined (RxInternalUtilUnsafeMpmcArrayQueueConsumerField_) && (INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueConsumerField))
#define RxInternalUtilUnsafeMpmcArrayQueueConsumerField_

@interface RxInternalUtilUnsafeMpmcArrayQueueConsumerField : RxInternalUtilUnsafeMpmcArrayQueueL2Pad

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

#pragma mark Protected

- (jboolean)casConsumerIndexWithLong:(jlong)expect
                            withLong:(jlong)newValue;

- (jlong)lvConsumerIndex;

#pragma mark Package-Private

@end

J2OBJC_STATIC_INIT(RxInternalUtilUnsafeMpmcArrayQueueConsumerField)

FOUNDATION_EXPORT void RxInternalUtilUnsafeMpmcArrayQueueConsumerField_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueConsumerField *self, jint capacity);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeMpmcArrayQueueConsumerField)

#endif

#if !defined (RxInternalUtilUnsafeMpmcArrayQueue_) && (INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeMpmcArrayQueue))
#define RxInternalUtilUnsafeMpmcArrayQueue_

@interface RxInternalUtilUnsafeMpmcArrayQueue : RxInternalUtilUnsafeMpmcArrayQueueConsumerField {
 @public
  jlong p40_;
  jlong p41_;
  jlong p42_;
  jlong p43_;
  jlong p44_;
  jlong p45_;
  jlong p46_;
  jlong p30_MpmcArrayQueue_;
  jlong p31_MpmcArrayQueue_;
  jlong p32_MpmcArrayQueue_;
  jlong p33_MpmcArrayQueue_;
  jlong p34_MpmcArrayQueue_;
  jlong p35_MpmcArrayQueue_;
  jlong p36_MpmcArrayQueue_;
  jlong p37_MpmcArrayQueue_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

- (jboolean)isEmpty;

- (jboolean)offerWithId:(id)e;

- (id)peek;

- (id)poll;

- (jint)size;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilUnsafeMpmcArrayQueue)

FOUNDATION_EXPORT void RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueue *self, jint capacity);

FOUNDATION_EXPORT RxInternalUtilUnsafeMpmcArrayQueue *new_RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalUtilUnsafeMpmcArrayQueue *create_RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(jint capacity);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeMpmcArrayQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue")