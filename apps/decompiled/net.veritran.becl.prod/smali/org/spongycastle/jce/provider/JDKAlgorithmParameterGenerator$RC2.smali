.class public Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;
.super Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC2"
.end annotation


# instance fields
.field spec:Ljavax/crypto/spec/RC2ParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 5

    .prologue
    .line 303
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    if-nez v3, :cond_1

    .line 305
    const/16 v3, 0x8

    new-array v1, v3, [B

    .line 307
    .local v1, "iv":[B
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->random:Ljava/security/SecureRandom;

    if-nez v3, :cond_0

    .line 309
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->random:Ljava/security/SecureRandom;

    .line 312
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 316
    :try_start_0
    const-string v3, "RC2"

    sget-object v4, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 317
    .local v2, "params":Ljava/security/AlgorithmParameters;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v1    # "iv":[B
    :goto_0
    return-object v2

    .line 319
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    .restart local v1    # "iv":[B
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iv":[B
    :cond_1
    :try_start_1
    const-string v3, "RC2"

    sget-object v4, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 329
    .restart local v2    # "params":Ljava/security/AlgorithmParameters;
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 331
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_1
    move-exception v0

    .line 333
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 290
    instance-of v0, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v0, :cond_0

    .line 292
    check-cast p1, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local p1    # "genParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    .line 293
    return-void

    .line 296
    .restart local p1    # "genParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for RC2 parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method