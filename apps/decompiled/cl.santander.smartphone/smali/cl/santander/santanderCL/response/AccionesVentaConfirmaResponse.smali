.class public Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
.super Ljava/lang/Object;
.source "AccionesVentaConfirmaResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 3
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 15
    if-eqz p1, :cond_0

    .line 16
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    .local v1, "root":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 20
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "INFO"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 22
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 28
    :cond_0
    return-void
.end method