.class public Lorg/spongycastle/asn1/isismtt/x509/Admissions;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "Admissions.java"


# instance fields
.field private admissionAuthority:Lorg/spongycastle/asn1/x509/GeneralName;

.field private namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

.field private professionInfos:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x1

    .line 73
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 81
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DEREncodable;

    .line 82
    .local v1, "o":Lorg/spongycastle/asn1/DEREncodable;
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 84
    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad tag number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v1    # "o":Lorg/spongycastle/asn1/DEREncodable;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    .restart local v1    # "o":Lorg/spongycastle/asn1/DEREncodable;
    :pswitch_0
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v1    # "o":Lorg/spongycastle/asn1/DEREncodable;
    invoke-static {v1, v4}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 95
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DEREncodable;

    .line 97
    .restart local v1    # "o":Lorg/spongycastle/asn1/DEREncodable;
    :cond_1
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 99
    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 105
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad tag number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v1    # "o":Lorg/spongycastle/asn1/DEREncodable;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    .restart local v1    # "o":Lorg/spongycastle/asn1/DEREncodable;
    :pswitch_1
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v1    # "o":Lorg/spongycastle/asn1/DEREncodable;
    invoke-static {v1, v4}, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    goto :goto_0

    .line 102
    .restart local v1    # "o":Lorg/spongycastle/asn1/DEREncodable;
    :pswitch_2
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v1    # "o":Lorg/spongycastle/asn1/DEREncodable;
    invoke-static {v1, v4}, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    .line 107
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DEREncodable;

    .line 109
    .restart local v1    # "o":Lorg/spongycastle/asn1/DEREncodable;
    :cond_2
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->professionInfos:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 110
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad object encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_3
    return-void

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 99
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;[Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;)V
    .locals 1
    .param p1, "admissionAuthority"    # Lorg/spongycastle/asn1/x509/GeneralName;
    .param p2, "namingAuthority"    # Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;
    .param p3, "professionInfos"    # [Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 130
    iput-object p2, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    .line 131
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p3}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->professionInfos:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 132
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/isismtt/x509/Admissions;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 43
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;

    .line 50
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 48
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/isismtt/x509/Admissions;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 53
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAdmissionAuthority()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getNamingAuthority()Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    return-object v0
.end method

.method public getProfessionInfos()[Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;
    .locals 5

    .prologue
    .line 146
    iget-object v4, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->professionInfos:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v3, v4, [Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;

    .line 147
    .local v3, "infos":[Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;
    const/4 v0, 0x0

    .line 148
    .local v0, "count":I
    iget-object v4, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->professionInfos:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 152
    :cond_0
    return-object v3
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 174
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 176
    .local v0, "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 180
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    if-eqz v1, :cond_1

    .line 182
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 184
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->professionInfos:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 186
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method