.class public Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;
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
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator",
        "<TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Iterable",
        "<TK;>;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IdentityMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/IdentityMap",
            "<TK;*>;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Keys<TK;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/IdentityMap;, "Lcom/esotericsoftware/kryo/util/IdentityMap<TK;*>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/IdentityMap;)V

    .line 666
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 669
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 680
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Keys<TK;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Keys<TK;>;"
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;->map:Lcom/esotericsoftware/kryo/util/IdentityMap;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/util/IdentityMap;->keyTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;->nextIndex:I

    aget-object v0, v1, v2

    .line 674
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;->currentIndex:I

    .line 675
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;->findNextIndex()V

    .line 676
    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 663
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 663
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 685
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Keys<TK;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;->map:Lcom/esotericsoftware/kryo/util/IdentityMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/IdentityMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 686
    .local v0, "array":Ljava/util/ArrayList;
    :goto_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$Keys;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 688
    :cond_0
    return-object v0
.end method
