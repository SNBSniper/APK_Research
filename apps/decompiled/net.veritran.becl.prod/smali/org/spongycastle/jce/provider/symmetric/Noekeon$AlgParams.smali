.class public Lorg/spongycastle/jce/provider/symmetric/Noekeon$AlgParams;
.super Lorg/spongycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;
.source "Noekeon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/Noekeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "Noekeon IV"

    return-object v0
.end method