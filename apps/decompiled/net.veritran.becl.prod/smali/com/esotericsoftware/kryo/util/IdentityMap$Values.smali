.class public Lcom/esotericsoftware/kryo/util/IdentityMap$Values;
.super Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;
.source "IdentityMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/IdentityMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator",
        "<",
        "Ljava/lang/Object;",
        "TV;>;",
        "Ljava/lang/Iterable",
        "<TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IdentityMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/IdentityMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Values;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Values<TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/IdentityMap;, "Lcom/esotericsoftware/kryo/util/IdentityMap<*TV;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/IdentityMap;)V

    .line 631
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 634
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Values;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Values<TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Values;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Values;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Values<TV;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Values;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Values<TV;>;"
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Values;->map:Lcom/esotericsoftware/kryo/util/IdentityMap;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/util/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Values;->nextIndex:I

    aget-object v0, v1, v2

    .line 639
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Values;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Values;->currentIndex:I

    .line 640
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$Values;->findNextIndex()V

    .line 641
    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 628
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Values;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Values<TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 628
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Values;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Values<TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Values;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Values<TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Values;->map:Lcom/esotericsoftware/kryo/util/IdentityMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/IdentityMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 651
    .local v0, "array":Ljava/util/ArrayList;
    :goto_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Values;->hasNext:Z

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$Values;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 653
    :cond_0
    return-object v0
.end method

.method public toArray(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Values;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Values<TV;>;"
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    :goto_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Values;->hasNext:Z

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$Values;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 660
    :cond_0
    return-void
.end method
