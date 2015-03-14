//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/esf/SignerLocation.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/DERUTF8String.h"
#include "org/bouncycastle/asn1/esf/SignerLocation.h"
#include "org/bouncycastle/asn1/x500/DirectoryString.h"

@interface OrgBouncycastleAsn1EsfSignerLocation () {
 @public
  OrgBouncycastleAsn1DERUTF8String *countryName_;
  OrgBouncycastleAsn1DERUTF8String *localityName_;
  OrgBouncycastleAsn1ASN1Sequence *postalAddress_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EsfSignerLocation, countryName_, OrgBouncycastleAsn1DERUTF8String *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EsfSignerLocation, localityName_, OrgBouncycastleAsn1DERUTF8String *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EsfSignerLocation, postalAddress_, OrgBouncycastleAsn1ASN1Sequence *)

@implementation OrgBouncycastleAsn1EsfSignerLocation

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects];
    while ([((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]) {
      OrgBouncycastleAsn1DERTaggedObject *o = (OrgBouncycastleAsn1DERTaggedObject *) check_class_cast([e nextElement], [OrgBouncycastleAsn1DERTaggedObject class]);
      {
        OrgBouncycastleAsn1X500DirectoryString *countryNameDirectoryString;
        OrgBouncycastleAsn1X500DirectoryString *localityNameDirectoryString;
        switch ([((OrgBouncycastleAsn1DERTaggedObject *) nil_chk(o)) getTagNo]) {
          case 0:
          countryNameDirectoryString = OrgBouncycastleAsn1X500DirectoryString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, YES);
          self->countryName_ = [[OrgBouncycastleAsn1DERUTF8String alloc] initWithNSString:[((OrgBouncycastleAsn1X500DirectoryString *) nil_chk(countryNameDirectoryString)) getString]];
          break;
          case 1:
          localityNameDirectoryString = OrgBouncycastleAsn1X500DirectoryString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, YES);
          self->localityName_ = [[OrgBouncycastleAsn1DERUTF8String alloc] initWithNSString:[((OrgBouncycastleAsn1X500DirectoryString *) nil_chk(localityNameDirectoryString)) getString]];
          break;
          case 2:
          if ([o isExplicit]) {
            self->postalAddress_ = OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, YES);
          }
          else {
            self->postalAddress_ = OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, NO);
          }
          if (postalAddress_ != nil && [postalAddress_ size] > 6) {
            @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"postal address must contain less than 6 strings"];
          }
          break;
          default:
          @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"illegal tag"];
        }
      }
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1DERUTF8String:(OrgBouncycastleAsn1DERUTF8String *)countryName
                    withOrgBouncycastleAsn1DERUTF8String:(OrgBouncycastleAsn1DERUTF8String *)localityName
                     withOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)postalAddress {
  if (self = [super init]) {
    if (postalAddress != nil && [postalAddress size] > 6) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"postal address must contain less than 6 strings"];
    }
    if (countryName != nil) {
      self->countryName_ = OrgBouncycastleAsn1DERUTF8String_getInstanceWithId_([countryName toASN1Primitive]);
    }
    if (localityName != nil) {
      self->localityName_ = OrgBouncycastleAsn1DERUTF8String_getInstanceWithId_([localityName toASN1Primitive]);
    }
    if (postalAddress != nil) {
      self->postalAddress_ = OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_([postalAddress toASN1Primitive]);
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1EsfSignerLocation *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1EsfSignerLocation_getInstanceWithId_(obj);
}

- (OrgBouncycastleAsn1DERUTF8String *)getCountryName {
  return countryName_;
}

- (OrgBouncycastleAsn1DERUTF8String *)getLocalityName {
  return localityName_;
}

- (OrgBouncycastleAsn1ASN1Sequence *)getPostalAddress {
  return postalAddress_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  if (countryName_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:0 withOrgBouncycastleAsn1ASN1Encodable:countryName_]];
  }
  if (localityName_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:1 withOrgBouncycastleAsn1ASN1Encodable:localityName_]];
  }
  if (postalAddress_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:2 withOrgBouncycastleAsn1ASN1Encodable:postalAddress_]];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1EsfSignerLocation *)other {
  [super copyAllFieldsTo:other];
  other->countryName_ = countryName_;
  other->localityName_ = localityName_;
  other->postalAddress_ = postalAddress_;
}

@end

OrgBouncycastleAsn1EsfSignerLocation *OrgBouncycastleAsn1EsfSignerLocation_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1EsfSignerLocation_init();
  if (obj == nil || [obj isKindOfClass:[OrgBouncycastleAsn1EsfSignerLocation class]]) {
    return (OrgBouncycastleAsn1EsfSignerLocation *) check_class_cast(obj, [OrgBouncycastleAsn1EsfSignerLocation class]);
  }
  return [[OrgBouncycastleAsn1EsfSignerLocation alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1EsfSignerLocation)