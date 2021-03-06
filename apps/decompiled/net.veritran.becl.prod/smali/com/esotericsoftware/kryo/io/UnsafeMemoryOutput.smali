.class public final Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;
.super Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
.source "UnsafeMemoryOutput.java"


# static fields
.field private static final isLittleEndian:Z


# instance fields
.field private bufaddress:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->isLittleEndian:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->varIntsEnabled:Z

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;-><init>(II)V

    .line 52
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p2, "maxBufferSize"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->varIntsEnabled:Z

    .line 60
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->updateBufferAddress()V

    .line 61
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "maxBufferSize"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(JI)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->varIntsEnabled:Z

    .line 77
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->updateBufferAddress()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(Ljava/io/OutputStream;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->varIntsEnabled:Z

    .line 66
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->updateBufferAddress()V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(Ljava/io/OutputStream;I)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->varIntsEnabled:Z

    .line 72
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->updateBufferAddress()V

    .line 73
    return-void
.end method

.method private updateBufferAddress()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->bufaddress:J

    .line 87
    return-void
.end method

.method private final writeBytes(Ljava/lang/Object;JJJ)V
    .locals 12
    .param p1, "srcArray"    # Ljava/lang/Object;
    .param p2, "srcArrayTypeOffset"    # J
    .param p4, "srcOffset"    # J
    .param p6, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 386
    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    sub-int/2addr v3, v4

    move-wide/from16 v0, p6

    long-to-int v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 389
    .local v2, "copyCount":I
    :goto_0
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v3

    add-long v5, p2, p4

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->bufaddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    int-to-long v10, v4

    add-long/2addr v8, v10

    int-to-long v10, v2

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 390
    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 391
    int-to-long v4, v2

    sub-long p6, p6, v4

    .line 392
    const-wide/16 v4, 0x0

    cmp-long v3, p6, v4

    if-nez v3, :cond_0

    return-void

    .line 393
    :cond_0
    int-to-long v4, v2

    add-long p4, p4, v4

    .line 394
    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->capacity:I

    move-wide/from16 v0, p6

    long-to-int v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 395
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->require(I)Z

    goto :goto_0
.end method

.method private final writeLittleEndianInt(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 314
    sget-boolean v0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->isLittleEndian:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeInt(I)V

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->swapInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeInt(I)V

    goto :goto_0
.end method

.method private final writeLittleEndianLong(J)V
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 321
    sget-boolean v0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->isLittleEndian:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLong(J)V

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/util/Util;->swapLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLong(J)V

    goto :goto_0
.end method


# virtual methods
.method public setBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "maxBufferSize"    # I

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    .line 82
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->updateBufferAddress()V

    .line 83
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBoolean(Z)V

    .line 131
    return-void
.end method

.method public writeByte(B)V
    .locals 2
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(B)V

    .line 125
    return-void
.end method

.method public final writeByte(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    .line 120
    return-void
.end method

.method public final writeBytes(Ljava/lang/Object;JJ)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 380
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeBytes(Ljava/lang/Object;JJJ)V

    .line 381
    return-void
.end method

.method public final writeChar(C)V
    .locals 2
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeChar(C)V

    .line 137
    return-void
.end method

.method public final writeChars([C)V
    .locals 9
    .param p1, "object"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 366
    array-length v0, p1

    shl-int/lit8 v8, v0, 0x1

    .line 367
    .local v8, "bytesToCopy":I
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->charArrayBaseOffset:J

    const-wide/16 v4, 0x0

    int-to-long v6, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeBytes(Ljava/lang/Object;JJJ)V

    .line 368
    return-void
.end method

.method public final writeDouble(D)V
    .locals 9
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 141
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->require(I)Z

    .line 142
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v2

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->bufaddress:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5, p1, p2}, Lsun/misc/Unsafe;->putDouble(JD)V

    .line 143
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v2

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->bufaddress:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v0

    .line 144
    .local v0, "check":D
    iget v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 145
    return-void
.end method

.method public final writeDoubles([D)V
    .locals 9
    .param p1, "object"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 371
    array-length v0, p1

    shl-int/lit8 v8, v0, 0x3

    .line 372
    .local v8, "bytesToCopy":I
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->doubleArrayBaseOffset:J

    const-wide/16 v4, 0x0

    int-to-long v6, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeBytes(Ljava/lang/Object;JJJ)V

    .line 373
    return-void
.end method

.method public final writeFloat(F)V
    .locals 6
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->require(I)Z

    .line 99
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->bufaddress:J

    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3, p1}, Lsun/misc/Unsafe;->putFloat(JF)V

    .line 100
    iget v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 101
    return-void
.end method

.method public final writeFloats([F)V
    .locals 9
    .param p1, "object"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 356
    array-length v0, p1

    shl-int/lit8 v8, v0, 0x2

    .line 357
    .local v8, "bytesToCopy":I
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->floatArrayBaseOffset:J

    const-wide/16 v4, 0x0

    int-to-long v6, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeBytes(Ljava/lang/Object;JJJ)V

    .line 358
    return-void
.end method

.method public final writeInt(IZ)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeInt(I)V

    .line 150
    const/4 v0, 0x4

    .line 152
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeVarInt(IZ)I

    move-result v0

    goto :goto_0
.end method

.method public final writeInt(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->require(I)Z

    .line 92
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->bufaddress:J

    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 93
    iget v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 94
    return-void
.end method

.method public final writeInts([I)V
    .locals 9
    .param p1, "object"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 346
    array-length v0, p1

    shl-int/lit8 v8, v0, 0x2

    .line 347
    .local v8, "bytesToCopy":I
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->intArrayBaseOffset:J

    const-wide/16 v4, 0x0

    int-to-long v6, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeBytes(Ljava/lang/Object;JJJ)V

    .line 348
    return-void
.end method

.method public final writeInts([IZ)V
    .locals 9
    .param p1, "object"    # [I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 331
    array-length v0, p1

    shl-int/lit8 v8, v0, 0x2

    .line 332
    .local v8, "bytesToCopy":I
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->intArrayBaseOffset:J

    const-wide/16 v4, 0x0

    int-to-long v6, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeBytes(Ljava/lang/Object;JJJ)V

    .line 335
    .end local v8    # "bytesToCopy":I
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInts([IZ)V

    goto :goto_0
.end method

.method public final writeLong(JZ)I
    .locals 1
    .param p1, "value"    # J
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLong(J)V

    .line 158
    const/16 v0, 0x8

    .line 160
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeVarLong(JZ)I

    move-result v0

    goto :goto_0
.end method

.method public final writeLong(J)V
    .locals 7
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 112
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->require(I)Z

    .line 113
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->bufaddress:J

    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3, p1, p2}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 114
    iget v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 115
    return-void
.end method

.method public final writeLongs([J)V
    .locals 9
    .param p1, "object"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 351
    array-length v0, p1

    shl-int/lit8 v8, v0, 0x3

    .line 352
    .local v8, "bytesToCopy":I
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->longArrayBaseOffset:J

    const-wide/16 v4, 0x0

    int-to-long v6, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeBytes(Ljava/lang/Object;JJJ)V

    .line 353
    return-void
.end method

.method public final writeLongs([JZ)V
    .locals 9
    .param p1, "object"    # [J
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 339
    array-length v0, p1

    shl-int/lit8 v8, v0, 0x3

    .line 340
    .local v8, "bytesToCopy":I
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->longArrayBaseOffset:J

    const-wide/16 v4, 0x0

    int-to-long v6, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeBytes(Ljava/lang/Object;JJJ)V

    .line 343
    .end local v8    # "bytesToCopy":I
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLongs([JZ)V

    goto :goto_0
.end method

.method public final writeShort(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->require(I)Z

    .line 106
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->bufaddress:J

    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    int-to-short v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lsun/misc/Unsafe;->putShort(JS)V

    .line 107
    iget v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 108
    return-void
.end method

.method public final writeShorts([S)V
    .locals 9
    .param p1, "object"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 361
    array-length v0, p1

    shl-int/lit8 v8, v0, 0x1

    .line 362
    .local v8, "bytesToCopy":I
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->shortArrayBaseOffset:J

    const-wide/16 v4, 0x0

    int-to-long v6, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeBytes(Ljava/lang/Object;JJJ)V

    .line 363
    return-void
.end method

.method public final writeVarInt(IZ)I
    .locals 8
    .param p1, "val"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 164
    int-to-long v0, p1

    .line 165
    .local v0, "value":J
    if-nez p2, :cond_0

    const/4 v4, 0x1

    shl-long v4, v0, v4

    const/16 v6, 0x1f

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 166
    :cond_0
    const-wide/16 v2, 0x0

    .line 168
    .local v2, "varInt":J
    const-wide/16 v4, 0x7f

    and-long v2, v0, v4

    .line 170
    const/4 v4, 0x7

    ushr-long/2addr v0, v4

    .line 172
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 173
    long-to-int v4, v2

    int-to-byte v4, v4

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeByte(B)V

    .line 174
    const/4 v4, 0x1

    .line 215
    :goto_0
    return v4

    .line 177
    :cond_1
    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    .line 178
    const-wide/16 v4, 0x7f

    and-long/2addr v4, v0

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 180
    const/4 v4, 0x7

    ushr-long/2addr v0, v4

    .line 182
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 183
    long-to-int v4, v2

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianInt(I)V

    .line 184
    iget v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 185
    const/4 v4, 0x2

    goto :goto_0

    .line 188
    :cond_2
    const-wide/32 v4, 0x8000

    or-long/2addr v2, v4

    .line 189
    const-wide/16 v4, 0x7f

    and-long/2addr v4, v0

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 191
    const/4 v4, 0x7

    ushr-long/2addr v0, v4

    .line 193
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    .line 194
    long-to-int v4, v2

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianInt(I)V

    .line 195
    iget v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 196
    const/4 v4, 0x3

    goto :goto_0

    .line 199
    :cond_3
    const-wide/32 v4, 0x800000

    or-long/2addr v2, v4

    .line 200
    const-wide/16 v4, 0x7f

    and-long/2addr v4, v0

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 202
    const/4 v4, 0x7

    ushr-long/2addr v0, v4

    .line 204
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_4

    .line 205
    long-to-int v4, v2

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianInt(I)V

    .line 206
    iget v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v4, v4, 0x0

    iput v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 207
    const/4 v4, 0x4

    goto :goto_0

    .line 210
    :cond_4
    const-wide/32 v4, -0x80000000

    or-long/2addr v2, v4

    .line 211
    const-wide/16 v4, 0x7f

    and-long/2addr v4, v0

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 212
    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 213
    invoke-direct {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianLong(J)V

    .line 214
    iget v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 215
    const/4 v4, 0x5

    goto :goto_0
.end method

.method public final writeVarLong(JZ)I
    .locals 9
    .param p1, "value"    # J
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 219
    if-nez p3, :cond_0

    const/4 v1, 0x1

    shl-long v4, p1, v1

    const/16 v1, 0x3f

    shr-long v6, p1, v1

    xor-long p1, v4, v6

    .line 220
    :cond_0
    const/4 v0, 0x0

    .line 222
    .local v0, "varInt":I
    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    long-to-int v0, v4

    .line 224
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 226
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_1

    .line 227
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->write(I)V

    .line 228
    const/4 v1, 0x1

    .line 310
    :goto_0
    return v1

    .line 231
    :cond_1
    or-int/lit16 v0, v0, 0x80

    .line 232
    int-to-long v4, v0

    const-wide/16 v6, 0x7f

    and-long/2addr v6, p1

    const/16 v1, 0x8

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    long-to-int v0, v4

    .line 234
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 236
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_2

    .line 237
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianInt(I)V

    .line 238
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 239
    const/4 v1, 0x2

    goto :goto_0

    .line 242
    :cond_2
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 243
    int-to-long v4, v0

    const-wide/16 v6, 0x7f

    and-long/2addr v6, p1

    const/16 v1, 0x10

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    long-to-int v0, v4

    .line 245
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 247
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_3

    .line 248
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianInt(I)V

    .line 249
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 250
    const/4 v1, 0x3

    goto :goto_0

    .line 253
    :cond_3
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 254
    int-to-long v4, v0

    const-wide/16 v6, 0x7f

    and-long/2addr v6, p1

    const/16 v1, 0x18

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    long-to-int v0, v4

    .line 256
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 258
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_4

    .line 259
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianInt(I)V

    .line 260
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v1, v1, 0x0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 261
    const/4 v1, 0x4

    goto :goto_0

    .line 264
    :cond_4
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 265
    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const-wide/16 v6, 0x7f

    and-long/2addr v6, p1

    const/16 v1, 0x20

    shl-long/2addr v6, v1

    or-long v2, v4, v6

    .line 267
    .local v2, "varLong":J
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 269
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_5

    .line 270
    invoke-direct {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianLong(J)V

    .line 271
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 272
    const/4 v1, 0x5

    goto/16 :goto_0

    .line 275
    :cond_5
    const-wide v4, 0x8000000000L

    or-long/2addr v2, v4

    .line 276
    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 278
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 280
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_6

    .line 281
    invoke-direct {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianLong(J)V

    .line 282
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 283
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 286
    :cond_6
    const-wide v4, 0x800000000000L

    or-long/2addr v2, v4

    .line 287
    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 289
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 291
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_7

    .line 292
    invoke-direct {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianLong(J)V

    .line 293
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->position:I

    .line 294
    const/4 v1, 0x7

    goto/16 :goto_0

    .line 297
    :cond_7
    const-wide/high16 v4, 0x80000000000000L

    or-long/2addr v2, v4

    .line 298
    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 300
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 302
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_8

    .line 303
    invoke-direct {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianLong(J)V

    .line 304
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 307
    :cond_8
    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v2, v4

    .line 308
    invoke-direct {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->writeLittleEndianLong(J)V

    .line 309
    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryOutput;->write(I)V

    .line 310
    const/16 v1, 0x9

    goto/16 :goto_0
.end method
