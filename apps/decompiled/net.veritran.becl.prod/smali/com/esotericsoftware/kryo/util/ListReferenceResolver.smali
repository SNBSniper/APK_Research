.class public Lcom/esotericsoftware/kryo/util/ListReferenceResolver;
.super Ljava/lang/Object;
.source "ListReferenceResolver.java"

# interfaces
.implements Lcom/esotericsoftware/kryo/ReferenceResolver;


# instance fields
.field protected kryo:Lcom/esotericsoftware/kryo/Kryo;

.field protected final seenObjects:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addWrittenObject(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 23
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 24
    .local v0, "id":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return v0
.end method

.method public getReadObject(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "id"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWrittenId(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 30
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 31
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 29
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public nextReadId(Ljava/lang/Class;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 36
    .local v0, "id":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    return-void
.end method

.method public setKryo(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 0
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 20
    return-void
.end method

.method public setReadObject(ILjava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public useReferences(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 54
    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->isWrapperClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
