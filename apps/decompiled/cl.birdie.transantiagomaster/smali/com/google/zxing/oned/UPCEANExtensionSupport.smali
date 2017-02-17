.class final Lcom/google/zxing/oned/UPCEANExtensionSupport;
.super Ljava/lang/Object;


# static fields
.field private static final CHECK_DIGIT_ENCODINGS:[I

.field private static final EXTENSION_START_PATTERN:[I


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->CHECK_DIGIT_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeMiddleCounters:[I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRowStringBuffer:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method final decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    invoke-static {p2, p3, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRowStringBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v6, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeMiddleCounters:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v6, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v6, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v6, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v6, v0

    iget v7, p2, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v0, 0x1

    aget v1, v4, v0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v3, v0, :cond_3

    if-ge v1, v7, :cond_3

    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p2, v6, v1, v0}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v8

    rem-int/lit8 v0, v8, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_1
    array-length v9, v6

    if-ge v0, v9, :cond_0

    aget v9, v6, v0

    add-int/2addr v1, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    if-lt v8, v0, :cond_10

    const/4 v0, 0x1

    rsub-int/lit8 v8, v3, 0x4

    shl-int/2addr v0, v8

    or-int/2addr v0, v2

    :goto_2
    const/4 v2, 0x4

    if-eq v3, v2, :cond_2

    :goto_3
    if-ge v1, v7, :cond_1

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    :goto_4
    if-ge v1, v7, :cond_2

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_4
    const/4 v0, 0x0

    move v3, v0

    :goto_5
    const/16 v0, 0xa

    if-ge v3, v0, :cond_6

    sget-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->CHECK_DIGIT_ENCODINGS:[I

    aget v0, v0, v3

    if-ne v2, v0, :cond_5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v2, 0x0

    add-int/lit8 v0, v7, -0x2

    :goto_6
    if-ltz v0, :cond_7

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    add-int/2addr v2, v8

    add-int/lit8 v0, v0, -0x2

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_7
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v7, -0x1

    :goto_7
    if-ltz v0, :cond_8

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, -0x2

    goto :goto_7

    :cond_8
    mul-int/lit8 v0, v2, 0x3

    rem-int/lit8 v0, v0, 0xa

    if-eq v0, v3, :cond_9

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_8
    new-instance v2, Lcom/google/zxing/Result;

    const/4 v3, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    const/4 v7, 0x0

    new-instance v8, Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    aget v9, v4, v9

    const/4 v10, 0x1

    aget v4, v4, v10

    add-int/2addr v4, v9

    int-to-float v4, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    int-to-float v9, p1

    invoke-direct {v8, v4, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v6, v7

    const/4 v4, 0x1

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v1

    int-to-float v8, p1

    invoke-direct {v7, v1, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v6, v4

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v5, v3, v6, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    if-eqz v0, :cond_a

    invoke-virtual {v2, v0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Hashtable;)V

    :cond_a
    return-object v2

    :pswitch_1
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    :goto_9
    if-nez v2, :cond_f

    const/4 v0, 0x0

    goto :goto_8

    :pswitch_2
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, ""

    :goto_a
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v6, v2, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    rem-int/lit8 v2, v2, 0x64

    const/16 v7, 0xa

    if-ge v2, v7, :cond_e

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    move-object v2, v0

    goto :goto_9

    :sswitch_0
    const-string v0, "\u00c2\u00a3"

    goto :goto_a

    :sswitch_1
    const-string v0, "$"

    goto :goto_a

    :sswitch_2
    const-string v0, "90000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    const-string v0, "99991"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "0.00"

    goto :goto_c

    :cond_c
    const-string v0, "99990"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Used"

    goto :goto_c

    :cond_d
    const-string v0, ""

    goto :goto_a

    :cond_e
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_f
    new-instance v0, Ljava/util/Hashtable;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Ljava/util/Hashtable;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_10
    move v0, v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
        0x39 -> :sswitch_2
    .end sparse-switch
.end method
