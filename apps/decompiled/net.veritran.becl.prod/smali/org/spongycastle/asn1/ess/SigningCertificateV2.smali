.class public Lorg/spongycastle/asn1/ess/SigningCertificateV2;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "SigningCertificateV2.java"


# instance fields
.field certs:Lorg/spongycastle/asn1/ASN1Sequence;

.field policies:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 43
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 45
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->policies:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 47
    :cond_2
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/ess/ESSCertIDv2;)V
    .locals 3
    .param p1, "certs"    # [Lorg/spongycastle/asn1/ess/ESSCertIDv2;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 52
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 53
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 55
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 58
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/ess/ESSCertIDv2;[Lorg/spongycastle/asn1/x509/PolicyInformation;)V
    .locals 3
    .param p1, "certs"    # [Lorg/spongycastle/asn1/ess/ESSCertIDv2;
    .param p2, "policies"    # [Lorg/spongycastle/asn1/x509/PolicyInformation;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 64
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 65
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 67
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 71
    if-eqz p2, :cond_2

    .line 73
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v1    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 74
    .restart local v1    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 76
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->policies:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 80
    :cond_2
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ess/SigningCertificateV2;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 19
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;

    .line 25
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 23
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 25
    new-instance v0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ess/SigningCertificateV2;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 28
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in \'SigningCertificateV2\' factory : "

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
.method public getCerts()[Lorg/spongycastle/asn1/ess/ESSCertIDv2;
    .locals 3

    .prologue
    .line 84
    iget-object v2, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v0, v2, [Lorg/spongycastle/asn1/ess/ESSCertIDv2;

    .line 85
    .local v0, "certIds":[Lorg/spongycastle/asn1/ess/ESSCertIDv2;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 87
    iget-object v2, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ess/ESSCertIDv2;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ess/ESSCertIDv2;

    move-result-object v2

    aput-object v2, v0, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-object v0
.end method

.method public getPolicies()[Lorg/spongycastle/asn1/x509/PolicyInformation;
    .locals 3

    .prologue
    .line 94
    iget-object v2, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->policies:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_1

    .line 96
    const/4 v1, 0x0

    .line 104
    :cond_0
    return-object v1

    .line 99
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->policies:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 100
    .local v1, "policyInformations":[Lorg/spongycastle/asn1/x509/PolicyInformation;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->policies:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 102
    iget-object v2, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->policies:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v2

    aput-object v2, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 123
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 125
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->policies:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->policies:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 130
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
