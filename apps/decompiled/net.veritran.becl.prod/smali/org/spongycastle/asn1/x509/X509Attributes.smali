.class public Lorg/spongycastle/asn1/x509/X509Attributes;
.super Ljava/lang/Object;
.source "X509Attributes.java"


# static fields
.field public static final RoleSyntax:Lorg/spongycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.72"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Attributes;->RoleSyntax:Lorg/spongycastle/asn1/DERObjectIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method