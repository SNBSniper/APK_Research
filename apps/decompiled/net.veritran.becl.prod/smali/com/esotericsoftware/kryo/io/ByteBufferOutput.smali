.class public Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
.super Lcom/esotericsoftware/kryo/io/Output;
.source "ByteBufferOutput.java"


# static fields
.field protected static final nativeOrder:Ljava/nio/ByteOrder;


# instance fields
.field byteOrder:Ljava/nio/ByteOrder;

.field protected niobuffer:Ljava/nio/ByteBuffer;

.field protected varIntsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->nativeOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->varIntsEnabled:Z

    .line 28
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    .line 41
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "bufferSize"    # I
    .param p2, "maxBufferSize"    # I

    .prologue
    const/4 v1, -0x1

    .line 46
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->varIntsEnabled:Z

    .line 28
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    .line 47
    if-ge p2, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize cannot be < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 49
    if-ne p2, v1, :cond_1

    const p2, 0x7fffffff

    .end local p2    # "maxBufferSize":I
    :cond_1
    iput p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    .line 51
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 52
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "maxBufferSize"    # I

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->varIntsEnabled:Z

    .line 28
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    .line 99
    invoke-static {p1, p2, p3}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->getDirectBufferAt(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    .line 100
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const/16 v0, 0x1000

    .line 56
    invoke-direct {p0, v0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    .line 57
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .prologue
    .line 63
    invoke-direct {p0, p2, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    .line 64
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->varIntsEnabled:Z

    .line 28
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    .line 70
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "maxBufferSize"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->varIntsEnabled:Z

    .line 28
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    .line 77
    return-void
.end method

.method private isNativeOrder()Z
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->nativeOrder:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAscii_slow(Ljava/lang/String;I)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "charCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 541
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    .line 542
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 543
    .local v1, "charIndex":I
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 544
    .local v2, "charsToWrite":I
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_1

    .line 545
    new-array v3, p2, [B

    .line 546
    .local v3, "tmp":[B
    add-int v4, v1, v2

    invoke-virtual {p1, v1, v4, v3, v6}, Ljava/lang/String;->getBytes(II[BI)V

    .line 547
    invoke-virtual {v0, v3, v6, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 549
    add-int/2addr v1, v2

    .line 550
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 551
    sub-int v4, p2, v1

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 552
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 554
    .end local v3    # "tmp":[B
    :cond_1
    return-void
.end method

.method private writeString_slow(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "charCount"    # I
    .param p3, "charIndex"    # I

    .prologue
    .line 522
    :goto_0
    if-ge p3, p2, :cond_3

    .line 523
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    sub-int v2, p2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 524
    :cond_0
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 525
    .local v0, "c":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    int-to-byte v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 522
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 527
    :cond_1
    const/16 v1, 0x7ff

    if-le v0, v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 529
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 530
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 531
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    and-int/lit8 v3, v0, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 533
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 534
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 535
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    and-int/lit8 v3, v0, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 538
    .end local v0    # "c":I
    :cond_3
    return-void
.end method

.method private writeUtf8Length(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 488
    ushr-int/lit8 v0, p1, 0x6

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 490
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    or-int/lit16 v1, p1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 491
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 519
    :goto_0
    return-void

    .line 492
    :cond_0
    ushr-int/lit8 v0, p1, 0xd

    if-nez v0, :cond_1

    .line 493
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 494
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 v1, p1, 0x40

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 495
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0x6

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 496
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_0

    .line 497
    :cond_1
    ushr-int/lit8 v0, p1, 0x14

    if-nez v0, :cond_2

    .line 498
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 499
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 v1, p1, 0x40

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 500
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 501
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0xd

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 502
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_0

    .line 503
    :cond_2
    ushr-int/lit8 v0, p1, 0x1b

    if-nez v0, :cond_3

    .line 504
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 505
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 v1, p1, 0x40

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 506
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 507
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0xd

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 508
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0x14

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 509
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto/16 :goto_0

    .line 511
    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 512
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 v1, p1, 0x40

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 513
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 514
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0xd

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 515
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0x14

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 516
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0x1b

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 517
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->total:J

    .line 179
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->flush()V

    .line 226
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 209
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_0

    .line 221
    :goto_0
    return-void

    .line 211
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    new-array v1, v2, [B

    .line 212
    .local v1, "tmp":[B
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 214
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 215
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    const/4 v3, 0x0

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    iget-wide v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->total:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->total:J

    .line 220
    iput v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_0

    .line 216
    .end local v1    # "tmp":[B
    :catch_0
    move-exception v0

    .line 217
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getVarIntsEnabled()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->varIntsEnabled:Z

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    .line 119
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->clear()V

    .line 109
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    .line 111
    return-void
.end method

.method protected require(I)Z
    .locals 5
    .param p1, "required"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v3, v4

    if-lt v3, p1, :cond_0

    .line 202
    :goto_0
    return v1

    .line 184
    :cond_0
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    if-le p1, v3, :cond_1

    .line 185
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer overflow. Max capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->flush()V

    .line 187
    :goto_1
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v3, v4

    if-ge v3, p1, :cond_6

    .line 188
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    if-ne v3, v4, :cond_2

    .line 189
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer overflow. Available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_2
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-nez v3, :cond_3

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 192
    :cond_3
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 193
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-gez v3, :cond_4

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 194
    :cond_4
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    :goto_2
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 199
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 200
    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 194
    .end local v0    # "newBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    :cond_6
    move v1, v2

    .line 202
    goto/16 :goto_0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    .line 137
    return-void
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "maxBufferSize"    # I

    .prologue
    const/4 v0, -0x1

    .line 143
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    if-ge p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize cannot be < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    .line 146
    if-ne p2, v0, :cond_2

    const p2, 0x7fffffff

    .end local p2    # "maxBufferSize":I
    :cond_2
    iput p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    .line 148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 149
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->total:J

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    .line 152
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->total:J

    .line 131
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 172
    return-void
.end method

.method public setVarIntsEnabled(Z)V
    .locals 0
    .param p1, "varIntsEnabled"    # Z

    .prologue
    .line 920
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->varIntsEnabled:Z

    .line 921
    return-void
.end method

.method public toBytes()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    new-array v0, v1, [B

    .line 163
    .local v0, "newBuffer":[B
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v1, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 166
    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 236
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 238
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 239
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 243
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    .line 245
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    .line 250
    return-void
.end method

.method public writeAscii(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 466
    if-nez p1, :cond_0

    .line 467
    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    .line 483
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 471
    .local v0, "charCount":I
    if-nez v0, :cond_1

    .line 472
    const/16 v2, 0x81

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    goto :goto_0

    .line 475
    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v2, v3

    if-ge v2, v0, :cond_2

    .line 476
    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeAscii_slow(Ljava/lang/String;I)V

    .line 482
    :goto_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 478
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 479
    .local v1, "tmp":[B
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 480
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_1
.end method

.method public writeBoolean(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 814
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 815
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 816
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 817
    return-void

    .line 815
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 255
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 257
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 258
    return-void
.end method

.method public writeByte(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 261
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 263
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 264
    return-void
.end method

.method public writeBytes([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 268
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    .line 270
    return-void
.end method

.method public writeBytes([BII)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 274
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bytes cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 277
    .local v0, "copyCount":I
    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 278
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 279
    sub-int/2addr p3, v0

    .line 280
    if-nez p3, :cond_1

    return-void

    .line 281
    :cond_1
    add-int/2addr p2, v0

    .line 282
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 283
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    goto :goto_0
.end method

.method public writeChar(C)V
    .locals 1
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 823
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 824
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 825
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 826
    return-void
.end method

.method public writeChars([C)V
    .locals 3
    .param p1, "object"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 888
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v1, v2

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->isNativeOrder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 890
    .local v0, "buf":Ljava/nio/CharBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 891
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 894
    .end local v0    # "buf":Ljava/nio/CharBuffer;
    :goto_0
    return-void

    .line 893
    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeChars([C)V

    goto :goto_0
.end method

.method public writeDouble(DDZ)I
    .locals 3
    .param p1, "value"    # D
    .param p3, "precision"    # D
    .param p5, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 841
    mul-double v0, p1, p3

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1, p5}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(JZ)I

    move-result v0

    return v0
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 832
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 833
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 834
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 835
    return-void
.end method

.method public writeDoubles([D)V
    .locals 3
    .param p1, "object"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 898
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v1, v2

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->isNativeOrder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 900
    .local v0, "buf":Ljava/nio/DoubleBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 901
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 904
    .end local v0    # "buf":Ljava/nio/DoubleBuffer;
    :goto_0
    return-void

    .line 903
    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeDoubles([D)V

    goto :goto_0
.end method

.method public writeFloat(FFZ)I
    .locals 1
    .param p1, "value"    # F
    .param p2, "precision"    # F
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 569
    mul-float v0, p1, p2

    float-to-int v0, v0

    invoke-virtual {p0, v0, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(IZ)I

    move-result v0

    return v0
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 560
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 561
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 562
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 563
    return-void
.end method

.method public writeFloats([F)V
    .locals 3
    .param p1, "object"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 868
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v1, v2

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->isNativeOrder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 870
    .local v0, "buf":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 871
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 874
    .end local v0    # "buf":Ljava/nio/FloatBuffer;
    :goto_0
    return-void

    .line 873
    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloats([F)V

    goto :goto_0
.end method

.method public writeInt(IZ)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 299
    const/4 v0, 0x4

    .line 301
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeVarInt(IZ)I

    move-result v0

    goto :goto_0
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 292
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 293
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 294
    return-void
.end method

.method public writeInts([I)V
    .locals 3
    .param p1, "object"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 848
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v1, v2

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->isNativeOrder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 850
    .local v0, "buf":Ljava/nio/IntBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 851
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 854
    .end local v0    # "buf":Ljava/nio/IntBuffer;
    :goto_0
    return-void

    .line 853
    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInts([I)V

    goto :goto_0
.end method

.method public writeLong(JZ)I
    .locals 1
    .param p1, "value"    # J
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 593
    const/16 v0, 0x8

    .line 595
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeVarLong(JZ)I

    move-result v0

    goto :goto_0
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 585
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 586
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 587
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 588
    return-void
.end method

.method public writeLongS(JZ)I
    .locals 7
    .param p1, "value"    # J
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 719
    if-nez p3, :cond_0

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long v2, p1, v2

    xor-long p1, v0, v2

    .line 720
    :cond_0
    const/4 v0, 0x7

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 721
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 722
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 723
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 724
    const/4 v0, 0x1

    .line 807
    :goto_0
    return v0

    .line 726
    :cond_1
    const/16 v0, 0xe

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 727
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 728
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 729
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 730
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 731
    const/4 v0, 0x2

    goto :goto_0

    .line 733
    :cond_2
    const/16 v0, 0x15

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 734
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 735
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 736
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 737
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xe

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 738
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 739
    const/4 v0, 0x3

    goto :goto_0

    .line 741
    :cond_3
    const/16 v0, 0x1c

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 742
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 743
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 744
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 745
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xe

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 746
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 747
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 748
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 750
    :cond_4
    const/16 v0, 0x23

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 751
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 752
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 753
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 754
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xe

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 755
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 756
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x1c

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 757
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 758
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 760
    :cond_5
    const/16 v0, 0x2a

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 761
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 762
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 763
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 764
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xe

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 765
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 766
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x1c

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 767
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x23

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 768
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 769
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 771
    :cond_6
    const/16 v0, 0x31

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 772
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 773
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 774
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 775
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xe

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 776
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 777
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x1c

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 778
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x23

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 779
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x2a

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 780
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 781
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 783
    :cond_7
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 784
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 785
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 786
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 787
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xe

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 788
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 789
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x1c

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 790
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x23

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 791
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x2a

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 792
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x31

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 793
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 794
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 796
    :cond_8
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 797
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 798
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 799
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xe

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 800
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 801
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x1c

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 802
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x23

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 803
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x2a

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 804
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x31

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 805
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x38

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 806
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 807
    const/16 v0, 0x9

    goto/16 :goto_0
.end method

.method public writeLongs([J)V
    .locals 3
    .param p1, "object"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 858
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v1, v2

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->isNativeOrder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    .line 860
    .local v0, "buf":Ljava/nio/LongBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 861
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 864
    .end local v0    # "buf":Ljava/nio/LongBuffer;
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeLongs([J)V

    goto :goto_0
.end method

.method public writeShort(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 577
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 578
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 579
    return-void
.end method

.method public writeShorts([S)V
    .locals 3
    .param p1, "object"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 878
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v1, v2

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->isNativeOrder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 880
    .local v0, "buf":Ljava/nio/ShortBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 881
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 884
    .end local v0    # "buf":Ljava/nio/ShortBuffer;
    :goto_0
    return-void

    .line 883
    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeShorts([S)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    const/16 v5, 0x80

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    .line 458
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 439
    .local v1, "charCount":I
    if-nez v1, :cond_1

    .line 440
    const/16 v5, 0x81

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    goto :goto_0

    .line 443
    :cond_1
    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeUtf8Length(I)V

    .line 444
    const/4 v2, 0x0

    .line 445
    .local v2, "charIndex":I
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v5, v6

    if-lt v5, v1, :cond_3

    .line 447
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .local v3, "position":I
    move v4, v3

    .line 448
    .end local v3    # "position":I
    .local v4, "position":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 449
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 450
    .local v0, "c":I
    const/16 v5, 0x7f

    if-le v0, v5, :cond_5

    .line 453
    .end local v0    # "c":I
    :cond_2
    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 454
    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 456
    .end local v4    # "position":I
    :cond_3
    if-ge v2, v1, :cond_4

    invoke-direct {p0, p1, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString_slow(Ljava/lang/CharSequence;II)V

    .line 457
    :cond_4
    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 451
    .restart local v0    # "c":I
    .restart local v4    # "position":I
    :cond_5
    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "position":I
    .restart local v3    # "position":I
    int-to-byte v6, v0

    invoke-virtual {v5, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 448
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "position":I
    .restart local v4    # "position":I
    goto :goto_1
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x7f

    .line 380
    iget-object v8, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v9, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 381
    if-nez p1, :cond_0

    .line 382
    const/16 v8, 0x80

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    .line 428
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 386
    .local v2, "charCount":I
    if-nez v2, :cond_1

    .line 387
    const/16 v8, 0x81

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, 0x0

    .line 392
    .local v0, "ascii":Z
    const/4 v8, 0x1

    if-le v2, v8, :cond_2

    const/16 v8, 0x40

    if-ge v2, v8, :cond_2

    .line 393
    const/4 v0, 0x1

    .line 394
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 395
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 396
    .local v1, "c":I
    if-le v1, v10, :cond_3

    .line 397
    const/4 v0, 0x0

    .line 402
    .end local v1    # "c":I
    .end local v4    # "i":I
    :cond_2
    if-eqz v0, :cond_5

    .line 403
    iget v8, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v9, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v8, v9

    if-ge v8, v2, :cond_4

    .line 404
    invoke-direct {p0, p1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeAscii_slow(Ljava/lang/String;I)V

    .line 410
    :goto_2
    iget-object v8, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v9, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v11, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    invoke-virtual {v8, v9, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 394
    .restart local v1    # "c":I
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 406
    .end local v1    # "c":I
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 407
    .local v7, "tmp":[B
    iget-object v8, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    array-length v10, v7

    invoke-virtual {v8, v7, v9, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 408
    iget v8, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v8, v2

    iput v8, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_2

    .line 412
    .end local v7    # "tmp":[B
    :cond_5
    add-int/lit8 v8, v2, 0x1

    invoke-direct {p0, v8}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeUtf8Length(I)V

    .line 413
    const/4 v3, 0x0

    .line 414
    .local v3, "charIndex":I
    iget v8, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v9, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v8, v9

    if-lt v8, v2, :cond_7

    .line 416
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .local v5, "position":I
    move v6, v5

    .line 417
    .end local v5    # "position":I
    .local v6, "position":I
    :goto_3
    if-ge v3, v2, :cond_6

    .line 418
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 419
    .restart local v1    # "c":I
    if-le v1, v10, :cond_9

    .line 422
    .end local v1    # "c":I
    :cond_6
    iput v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 423
    iget-object v8, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 425
    .end local v6    # "position":I
    :cond_7
    if-ge v3, v2, :cond_8

    invoke-direct {p0, p1, v2, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString_slow(Ljava/lang/CharSequence;II)V

    .line 426
    :cond_8
    iget-object v8, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v9, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 420
    .restart local v1    # "c":I
    .restart local v6    # "position":I
    :cond_9
    iget-object v8, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "position":I
    .restart local v5    # "position":I
    int-to-byte v9, v1

    invoke-virtual {v8, v6, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 417
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "position":I
    .restart local v6    # "position":I
    goto :goto_3
.end method

.method public writeVarInt(IZ)I
    .locals 9
    .param p1, "val"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 307
    move v0, p1

    .line 308
    .local v0, "value":I
    if-nez p2, :cond_0

    shl-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v0, 0x1f

    xor-int v0, v4, v5

    .line 309
    :cond_0
    const/4 v1, 0x0

    .line 311
    .local v1, "varInt":I
    and-int/lit8 v1, v0, 0x7f

    .line 313
    ushr-int/lit8 v0, v0, 0x7

    .line 315
    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    .line 317
    const/4 v4, 0x1

    .line 370
    :goto_0
    return v4

    .line 320
    :cond_1
    or-int/lit16 v1, v1, 0x80

    .line 321
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    .line 323
    ushr-int/lit8 v0, v0, 0x7

    .line 325
    if-nez v0, :cond_2

    .line 326
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 327
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 328
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 329
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 330
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    const/4 v4, 0x2

    goto :goto_0

    .line 334
    :cond_2
    const v4, 0x8000

    or-int/2addr v1, v4

    .line 335
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    .line 337
    ushr-int/lit8 v0, v0, 0x7

    .line 339
    if-nez v0, :cond_3

    .line 340
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 341
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 342
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 343
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 344
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 345
    const/4 v4, 0x3

    goto :goto_0

    .line 348
    :cond_3
    const/high16 v4, 0x800000

    or-int/2addr v1, v4

    .line 349
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v1, v4

    .line 351
    ushr-int/lit8 v0, v0, 0x7

    .line 353
    if-nez v0, :cond_4

    .line 354
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 355
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 356
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 357
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v4, v4, 0x0

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 358
    const/4 v4, 0x4

    goto :goto_0

    .line 361
    :cond_4
    const/high16 v4, -0x80000000

    or-int/2addr v1, v4

    .line 362
    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    int-to-long v6, v0

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long v2, v4, v6

    .line 364
    .local v2, "varLong":J
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 365
    invoke-virtual {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 366
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 368
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 369
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 370
    const/4 v4, 0x5

    goto/16 :goto_0
.end method

.method public writeVarLong(JZ)I
    .locals 9
    .param p1, "value"    # J
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 599
    if-nez p3, :cond_0

    const/4 v1, 0x1

    shl-long v4, p1, v1

    const/16 v1, 0x3f

    shr-long v6, p1, v1

    xor-long p1, v4, v6

    .line 600
    :cond_0
    const/4 v0, 0x0

    .line 602
    .local v0, "varInt":I
    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    long-to-int v0, v4

    .line 604
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 606
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_1

    .line 607
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    .line 608
    const/4 v1, 0x1

    .line 712
    :goto_0
    return v1

    .line 611
    :cond_1
    or-int/lit16 v0, v0, 0x80

    .line 612
    int-to-long v4, v0

    const-wide/16 v6, 0x7f

    and-long/2addr v6, p1

    const/16 v1, 0x8

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    long-to-int v0, v4

    .line 614
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 616
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_2

    .line 617
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 618
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 619
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 620
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 621
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 622
    const/4 v1, 0x2

    goto :goto_0

    .line 625
    :cond_2
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 626
    int-to-long v4, v0

    const-wide/16 v6, 0x7f

    and-long/2addr v6, p1

    const/16 v1, 0x10

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    long-to-int v0, v4

    .line 628
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 630
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_3

    .line 631
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 632
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 633
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 634
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 635
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 636
    const/4 v1, 0x3

    goto :goto_0

    .line 639
    :cond_3
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 640
    int-to-long v4, v0

    const-wide/16 v6, 0x7f

    and-long/2addr v6, p1

    const/16 v1, 0x18

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    long-to-int v0, v4

    .line 642
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 644
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_4

    .line 645
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 646
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 647
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 648
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v1, v1, 0x0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 649
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 652
    :cond_4
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 653
    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long v2, v4, v6

    .line 654
    .local v2, "varLong":J
    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 656
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 658
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_5

    .line 659
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 660
    invoke-virtual {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 661
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 662
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 663
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 664
    const/4 v1, 0x5

    goto/16 :goto_0

    .line 667
    :cond_5
    const-wide v4, 0x8000000000L

    or-long/2addr v2, v4

    .line 668
    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 670
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 672
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_6

    .line 673
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 674
    invoke-virtual {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 675
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 676
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 677
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 678
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 681
    :cond_6
    const-wide v4, 0x800000000000L

    or-long/2addr v2, v4

    .line 682
    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 684
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 686
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_7

    .line 687
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 688
    invoke-virtual {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 689
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 690
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 691
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 692
    const/4 v1, 0x7

    goto/16 :goto_0

    .line 695
    :cond_7
    const-wide/high16 v4, 0x80000000000000L

    or-long/2addr v2, v4

    .line 696
    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 698
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 700
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_8

    .line 701
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 702
    invoke-virtual {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 703
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 704
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 707
    :cond_8
    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v2, v4

    .line 708
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 709
    invoke-virtual {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 710
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->niobuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 711
    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->write(I)V

    .line 712
    const/16 v1, 0x9

    goto/16 :goto_0
.end method
