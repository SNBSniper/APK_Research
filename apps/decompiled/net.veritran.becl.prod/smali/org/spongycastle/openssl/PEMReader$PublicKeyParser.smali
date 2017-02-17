.class Lorg/spongycastle/openssl/PEMReader$PublicKeyParser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lorg/spongycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublicKeyParser"
.end annotation


# instance fields
.field private provider:Ljava/lang/String;

.field final synthetic this$0:Lorg/spongycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 424
    iput-object p1, p0, Lorg/spongycastle/openssl/PEMReader$PublicKeyParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p2, p0, Lorg/spongycastle/openssl/PEMReader$PublicKeyParser;->provider:Ljava/lang/String;

    .line 426
    return-void
.end method


# virtual methods
.method public parseObject(Lorg/spongycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "obj"    # Lorg/spongycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 432
    .local v4, "keySpec":Ljava/security/spec/KeySpec;
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "DSA"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "RSA"

    aput-object v7, v0, v6

    .line 433
    .local v0, "algorithms":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 437
    :try_start_0
    aget-object v6, v0, v2

    iget-object v7, p0, Lorg/spongycastle/openssl/PEMReader$PublicKeyParser;->provider:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 438
    .local v3, "keyFact":Ljava/security/KeyFactory;
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 456
    .end local v3    # "keyFact":Ljava/security/KeyFactory;
    :goto_1
    return-object v5

    .line 450
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Ljava/security/NoSuchProviderException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/openssl/PEMReader$PublicKeyParser;->provider:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 446
    .end local v1    # "e":Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v6

    .line 433
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 442
    :catch_2
    move-exception v6

    goto :goto_2
.end method
