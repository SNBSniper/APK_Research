.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$KryoSerializableSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "DefaultSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KryoSerializableSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer",
        "<",
        "Lcom/esotericsoftware/kryo/KryoSerializable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/KryoSerializable;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class",
            "<",
            "Lcom/esotericsoftware/kryo/KryoSerializable;",
            ">;)",
            "Lcom/esotericsoftware/kryo/KryoSerializable;"
        }
    .end annotation

    .prologue
    .line 431
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/esotericsoftware/kryo/KryoSerializable;>;"
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/KryoSerializable;

    .line 432
    .local v0, "object":Lcom/esotericsoftware/kryo/KryoSerializable;
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 433
    invoke-interface {v0, p1, p2}, Lcom/esotericsoftware/kryo/KryoSerializable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    .line 434
    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "x1"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "x2"    # Ljava/lang/Class;

    .prologue
    .line 425
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$KryoSerializableSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/KryoSerializable;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/esotericsoftware/kryo/KryoSerializable;)V
    .locals 0
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # Lcom/esotericsoftware/kryo/KryoSerializable;

    .prologue
    .line 427
    invoke-interface {p3, p1, p2}, Lcom/esotericsoftware/kryo/KryoSerializable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    .line 428
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "x1"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 425
    check-cast p3, Lcom/esotericsoftware/kryo/KryoSerializable;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$KryoSerializableSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/esotericsoftware/kryo/KryoSerializable;)V

    return-void
.end method
