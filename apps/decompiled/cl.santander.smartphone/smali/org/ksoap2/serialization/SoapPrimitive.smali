.class public Lorg/ksoap2/serialization/SoapPrimitive;
.super Ljava/lang/Object;
.source "SoapPrimitive.java"


# instance fields
.field name:Ljava/lang/String;

.field namespace:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 48
    instance-of v2, p1, Lorg/ksoap2/serialization/SoapPrimitive;

    if-nez v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 50
    check-cast v0, Lorg/ksoap2/serialization/SoapPrimitive;

    .line 51
    .local v0, "p":Lorg/ksoap2/serialization/SoapPrimitive;
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    iget-object v3, v0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    iget-object v3, v0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    iget-object v3, v0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    return-object v0
.end method
