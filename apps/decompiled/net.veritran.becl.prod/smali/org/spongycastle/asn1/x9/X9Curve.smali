.class public Lorg/spongycastle/asn1/x9/X9Curve;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "X9Curve.java"

# interfaces
.implements Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private curve:Lorg/spongycastle/math/ec/ECCurve;

.field private fieldIdentifier:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x9/X9FieldID;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 18
    .param p1, "fieldID"    # Lorg/spongycastle/asn1/x9/X9FieldID;
    .param p2, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x9/X9FieldID;->getIdentifier()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 50
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/DERObjectIdentifier;

    sget-object v8, Lorg/spongycastle/asn1/x9/X9Curve;->prime_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 52
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x9/X9FieldID;->getParameters()Lorg/spongycastle/asn1/DERObject;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v14

    .line 53
    .local v14, "p":Ljava/math/BigInteger;
    new-instance v1, Lorg/spongycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v14, v7}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 54
    .local v1, "x9A":Lorg/spongycastle/asn1/x9/X9FieldElement;
    new-instance v6, Lorg/spongycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {v6, v14, v7}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 55
    .local v6, "x9B":Lorg/spongycastle/asn1/x9/X9FieldElement;
    new-instance v7, Lorg/spongycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;->getValue()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X9FieldElement;->getValue()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v7, v14, v8, v9}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 96
    .end local v1    # "x9A":Lorg/spongycastle/asn1/x9/X9FieldElement;
    .end local v6    # "x9B":Lorg/spongycastle/asn1/x9/X9FieldElement;
    .end local v14    # "p":Ljava/math/BigInteger;
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 98
    const/4 v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/spongycastle/asn1/x9/X9Curve;->seed:[B

    .line 100
    :cond_1
    return-void

    .line 59
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/DERObjectIdentifier;

    sget-object v8, Lorg/spongycastle/asn1/x9/X9Curve;->characteristic_two_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v8}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x9/X9FieldID;->getParameters()Lorg/spongycastle/asn1/DERObject;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/asn1/DERSequence;

    .line 63
    .local v15, "parameters":Lorg/spongycastle/asn1/DERSequence;
    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Lorg/spongycastle/asn1/DERSequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 65
    .local v2, "m":I
    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lorg/spongycastle/asn1/DERSequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 68
    .local v17, "representation":Lorg/spongycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x0

    .line 69
    .local v3, "k1":I
    const/4 v4, 0x0

    .line 70
    .local v4, "k2":I
    const/4 v5, 0x0

    .line 71
    .local v5, "k3":I
    sget-object v7, Lorg/spongycastle/asn1/x9/X9Curve;->tpBasis:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 74
    const/4 v7, 0x2

    invoke-virtual {v15, v7}, Lorg/spongycastle/asn1/DERSequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 89
    :goto_1
    new-instance v1, Lorg/spongycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(IIIILorg/spongycastle/asn1/ASN1OctetString;)V

    .line 90
    .restart local v1    # "x9A":Lorg/spongycastle/asn1/x9/X9FieldElement;
    new-instance v6, Lorg/spongycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/asn1/ASN1OctetString;

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(IIIILorg/spongycastle/asn1/ASN1OctetString;)V

    .line 92
    .restart local v6    # "x9B":Lorg/spongycastle/asn1/x9/X9FieldElement;
    new-instance v7, Lorg/spongycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;->getValue()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X9FieldElement;->getValue()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v7 .. v13}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    goto/16 :goto_0

    .line 80
    .end local v1    # "x9A":Lorg/spongycastle/asn1/x9/X9FieldElement;
    .end local v6    # "x9B":Lorg/spongycastle/asn1/x9/X9FieldElement;
    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v15, v7}, Lorg/spongycastle/asn1/DERSequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/asn1/DERSequence;

    .line 82
    .local v16, "pentanomial":Lorg/spongycastle/asn1/DERSequence;
    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/DERSequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 84
    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/DERSequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 86
    const/4 v7, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/DERSequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    goto :goto_1
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 31
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 32
    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->seed:[B

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;[B)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "seed"    # [B

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 40
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 41
    iput-object p2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->seed:[B

    .line 42
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    .line 43
    return-void
.end method

.method private setFieldIdentifier()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    instance-of v0, v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lorg/spongycastle/asn1/x9/X9Curve;->prime_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 117
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    instance-of v0, v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lorg/spongycastle/asn1/x9/X9Curve;->characteristic_two_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/DERObjectIdentifier;

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->seed:[B

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 143
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/x9/X9Curve;->prime_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    new-instance v1, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 146
    new-instance v1, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 154
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->seed:[B

    if-eqz v1, :cond_1

    .line 156
    new-instance v1, Lorg/spongycastle/asn1/DERBitString;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 159
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 148
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/x9/X9Curve;->characteristic_two_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 151
    new-instance v1, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method
