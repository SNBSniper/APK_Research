.class public Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "SigPolicyQualifierInfo.java"


# instance fields
.field private sigPolicyQualifierId:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private sigQualifier:Lorg/spongycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/spongycastle/asn1/DEREncodable;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V
    .locals 0
    .param p1, "sigPolicyQualifierId"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "sigQualifier"    # Lorg/spongycastle/asn1/DEREncodable;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 23
    iput-object p2, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/spongycastle/asn1/DEREncodable;

    .line 24
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 36
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;

    .line 42
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 40
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 45
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in \'SigPolicyQualifierInfo\' factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSigPolicyQualifierId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSigQualifier()Lorg/spongycastle/asn1/DEREncodable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/spongycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 73
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 74
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/spongycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 76
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
