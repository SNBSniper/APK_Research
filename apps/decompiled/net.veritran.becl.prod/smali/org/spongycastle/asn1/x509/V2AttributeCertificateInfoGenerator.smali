.class public Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;
.super Ljava/lang/Object;
.source "V2AttributeCertificateInfoGenerator.java"


# instance fields
.field private attributes:Lorg/spongycastle/asn1/ASN1EncodableVector;

.field private endDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

.field private extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

.field private holder:Lorg/spongycastle/asn1/x509/Holder;

.field private issuer:Lorg/spongycastle/asn1/x509/AttCertIssuer;

.field private issuerUniqueID:Lorg/spongycastle/asn1/DERBitString;

.field private serialNumber:Lorg/spongycastle/asn1/DERInteger;

.field private signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private startDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

.field private version:Lorg/spongycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 47
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/spongycastle/asn1/ASN1EncodableVector;

    .line 48
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 4
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/spongycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lorg/spongycastle/asn1/x509/Attribute;

    new-instance v2, Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v3, p2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/Attribute;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 58
    return-void
.end method

.method public addAttribute(Lorg/spongycastle/asn1/x509/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Lorg/spongycastle/asn1/x509/Attribute;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 66
    return-void
.end method

.method public generateAttributeCertificateInfo()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;
    .locals 4

    .prologue
    .line 112
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/spongycastle/asn1/DERInteger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/spongycastle/asn1/x509/AttCertIssuer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/spongycastle/asn1/x509/Holder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/spongycastle/asn1/ASN1EncodableVector;

    if-nez v2, :cond_1

    .line 116
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not all mandatory fields set in V2 AttributeCertificateInfo generator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->version:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 122
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 123
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/spongycastle/asn1/x509/AttCertIssuer;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 124
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 125
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 130
    new-instance v1, Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;-><init>(Lorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/DERGeneralizedTime;)V

    .line 131
    .local v1, "validity":Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 134
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 136
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuerUniqueID:Lorg/spongycastle/asn1/DERBitString;

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuerUniqueID:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 141
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    if-eqz v2, :cond_3

    .line 143
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 146
    :cond_3
    new-instance v2, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v2
.end method

.method public setEndDate(Lorg/spongycastle/asn1/DERGeneralizedTime;)V
    .locals 0
    .param p1, "endDate"    # Lorg/spongycastle/asn1/DERGeneralizedTime;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 96
    return-void
.end method

.method public setExtensions(Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 0
    .param p1, "extensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 108
    return-void
.end method

.method public setHolder(Lorg/spongycastle/asn1/x509/Holder;)V
    .locals 0
    .param p1, "holder"    # Lorg/spongycastle/asn1/x509/Holder;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/spongycastle/asn1/x509/Holder;

    .line 53
    return-void
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x509/AttCertIssuer;)V
    .locals 0
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x509/AttCertIssuer;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/spongycastle/asn1/x509/AttCertIssuer;

    .line 84
    return-void
.end method

.method public setIssuerUniqueID(Lorg/spongycastle/asn1/DERBitString;)V
    .locals 0
    .param p1, "issuerUniqueID"    # Lorg/spongycastle/asn1/DERBitString;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuerUniqueID:Lorg/spongycastle/asn1/DERBitString;

    .line 102
    return-void
.end method

.method public setSerialNumber(Lorg/spongycastle/asn1/DERInteger;)V
    .locals 0
    .param p1, "serialNumber"    # Lorg/spongycastle/asn1/DERInteger;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/spongycastle/asn1/DERInteger;

    .line 72
    return-void
.end method

.method public setSignature(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "signature"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 78
    return-void
.end method

.method public setStartDate(Lorg/spongycastle/asn1/DERGeneralizedTime;)V
    .locals 0
    .param p1, "startDate"    # Lorg/spongycastle/asn1/DERGeneralizedTime;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 90
    return-void
.end method