.class public final enum Lcl/santander/santanderCL/utils/Constant$ENTORNO;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/santanderCL/utils/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENTORNO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/santander/santanderCL/utils/Constant$ENTORNO;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$ENTORNO;

.field public static final enum HOMOLOGACION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

.field public static final enum INTEGRACION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

.field public static final enum PRODUCCION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    const-string v1, "INTEGRACION"

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->INTEGRACION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    const-string v1, "HOMOLOGACION"

    invoke-direct {v0, v1, v3}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->HOMOLOGACION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    const-string v1, "PRODUCCION"

    invoke-direct {v0, v1, v4}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->PRODUCCION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    const/4 v0, 0x3

    new-array v0, v0, [Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->INTEGRACION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    aput-object v1, v0, v2

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->HOMOLOGACION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    aput-object v1, v0, v3

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->PRODUCCION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    aput-object v1, v0, v4

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/santander/santanderCL/utils/Constant$ENTORNO;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    return-object v0
.end method

.method public static values()[Lcl/santander/santanderCL/utils/Constant$ENTORNO;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    array-length v1, v0

    new-array v2, v1, [Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method