.class final Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;
.super Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeCachedField;
.source "UnsafeCacheFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeRegionField"
.end annotation


# static fields
.field static final bulkReadsSupported:Z


# instance fields
.field final len:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "offset"    # J
    .param p3, "len"    # J

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeCachedField;-><init>(J)V

    .line 214
    iput-wide p3, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->len:J

    .line 215
    return-void
.end method

.method private readSlow(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
    .locals 10
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v8, 0x8

    .line 258
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    .line 259
    .local v0, "unsafe":Lsun/misc/Unsafe;
    iget-wide v2, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    .local v2, "off":J
    :goto_0
    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    iget-wide v6, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->len:J

    add-long/2addr v4, v6

    sub-long/2addr v4, v8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v4

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 259
    add-long/2addr v2, v8

    goto :goto_0

    .line 263
    :cond_0
    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    iget-wide v6, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->len:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 264
    :goto_1
    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    iget-wide v6, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->len:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 265
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v1

    invoke-virtual {v0, p2, v2, v3, v1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 264
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_1

    .line 268
    :cond_1
    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "original"    # Ljava/lang/Object;
    .param p2, "copy"    # Ljava/lang/Object;

    .prologue
    .line 271
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v1

    iget-wide v3, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    iget-wide v6, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    iget-wide v8, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->len:J

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 272
    return-void
.end method

.method public final read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
    .locals 0
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->readSlow(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public final write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 12
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v10, 0x8

    .line 218
    instance-of v1, p1, Lcom/esotericsoftware/kryo/io/UnsafeOutput;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 219
    check-cast v0, Lcom/esotericsoftware/kryo/io/UnsafeOutput;

    .line 220
    .local v0, "unsafeOutput":Lcom/esotericsoftware/kryo/io/UnsafeOutput;
    iget-wide v2, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->len:J

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/kryo/io/UnsafeOutput;->writeBytes(Ljava/lang/Object;JJ)V

    .line 237
    .end local v0    # "unsafeOutput":Lcom/esotericsoftware/kryo/io/UnsafeOutput;
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    instance-of v1, p1, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;

    .line 223
    .local v0, "unsafeOutput":Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;
    iget-wide v2, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->len:J

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeBytes(Ljava/lang/Object;JJ)V

    goto :goto_0

    .line 226
    .end local v0    # "unsafeOutput":Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;
    :cond_2
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v8

    .line 227
    .local v8, "unsafe":Lsun/misc/Unsafe;
    iget-wide v6, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    .local v6, "off":J
    :goto_1
    iget-wide v2, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->len:J

    add-long/2addr v2, v4

    sub-long/2addr v2, v10

    cmp-long v1, v6, v2

    if-gez v1, :cond_3

    .line 228
    invoke-virtual {v8, p2, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    .line 227
    add-long/2addr v6, v10

    goto :goto_1

    .line 231
    :cond_3
    iget-wide v2, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->len:J

    add-long/2addr v2, v4

    cmp-long v1, v6, v2

    if-gez v1, :cond_0

    .line 232
    :goto_2
    iget-wide v2, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->offset:J

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeRegionField;->len:J

    add-long/2addr v2, v4

    cmp-long v1, v6, v2

    if-gez v1, :cond_0

    .line 233
    invoke-virtual {v8, p2, v6, v7}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->write(I)V

    .line 232
    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    goto :goto_2
.end method
