.class public Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "MonetaryValue.java"


# instance fields
.field amount:Lorg/spongycastle/asn1/DERInteger;

.field currency:Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

.field exponent:Lorg/spongycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 51
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->currency:Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    .line 53
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->amount:Lorg/spongycastle/asn1/DERInteger;

    .line 55
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->exponent:Lorg/spongycastle/asn1/DERInteger;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;II)V
    .locals 1
    .param p1, "currency"    # Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    .param p2, "amount"    # I
    .param p3, "exponent"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->currency:Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->amount:Lorg/spongycastle/asn1/DERInteger;

    .line 65
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v0, p3}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->exponent:Lorg/spongycastle/asn1/DERInteger;

    .line 66
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 33
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;

    .line 40
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 38
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAmount()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->amount:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->currency:Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    return-object v0
.end method

.method public getExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->exponent:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 86
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->currency:Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 87
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->amount:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 88
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->exponent:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 90
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
