.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;


# instance fields
.field public bits:[I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-void
.end method


# virtual methods
.method public final get(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRange$486912e3(II)Z
    .locals 11

    const/16 v6, 0x1f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p2, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-ne p2, p1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 v9, p2, -0x1

    shr-int/lit8 v8, p1, 0x5

    shr-int/lit8 v10, v9, 0x5

    move v7, v8

    :goto_1
    if-gt v7, v10, :cond_7

    if-le v7, v8, :cond_3

    move v0, v2

    :goto_2
    if-ge v7, v10, :cond_4

    move v5, v6

    :goto_3
    if-nez v0, :cond_5

    if-ne v5, v6, :cond_5

    const/4 v0, -0x1

    :cond_2
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v7

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p1, 0x1f

    goto :goto_2

    :cond_4
    and-int/lit8 v3, v9, 0x1f

    move v5, v3

    goto :goto_3

    :cond_5
    move v3, v0

    move v0, v2

    :goto_4
    if-gt v3, v5, :cond_2

    shl-int v4, v1, v3

    or-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public final reverse()V
    .locals 7

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    new-array v1, v0, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    shr-int/lit8 v3, v0, 0x5

    aget v4, v1, v3

    const/4 v5, 0x1

    and-int/lit8 v6, v0, 0x1f

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-void
.end method

.method public final set(I)V
    .locals 5

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v2, Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v0, v1, :cond_2

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x58

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2e

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
