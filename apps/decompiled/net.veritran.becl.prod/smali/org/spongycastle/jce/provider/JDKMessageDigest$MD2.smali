.class public Lorg/spongycastle/jce/provider/JDKMessageDigest$MD2;
.super Lorg/spongycastle/jce/provider/JDKMessageDigest;
.source "JDKMessageDigest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKMessageDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JDKMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 154
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-super {p0}, Lorg/spongycastle/jce/provider/JDKMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/JDKMessageDigest$MD2;

    .line 160
    .local v0, "d":Lorg/spongycastle/jce/provider/JDKMessageDigest$MD2;
    new-instance v2, Lorg/spongycastle/crypto/digests/MD2Digest;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKMessageDigest$MD2;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v2, v1}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>(Lorg/spongycastle/crypto/digests/MD2Digest;)V

    iput-object v2, v0, Lorg/spongycastle/jce/provider/JDKMessageDigest$MD2;->digest:Lorg/spongycastle/crypto/Digest;

    .line 162
    return-object v0
.end method