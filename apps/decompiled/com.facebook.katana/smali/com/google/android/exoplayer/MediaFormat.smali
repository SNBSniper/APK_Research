.class public Lcom/google/android/exoplayer/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:I

.field public final h:I

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/media/MediaFormat;

.field private n:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;IJIIFIILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJIIFII",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaFormat;->n:Z

    .line 147
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    .line 148
    iput p2, p0, Lcom/google/android/exoplayer/MediaFormat;->b:I

    .line 149
    iput-wide p3, p0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    .line 150
    iput p5, p0, Lcom/google/android/exoplayer/MediaFormat;->d:I

    .line 151
    iput p6, p0, Lcom/google/android/exoplayer/MediaFormat;->e:I

    .line 152
    iput p7, p0, Lcom/google/android/exoplayer/MediaFormat;->f:F

    .line 153
    iput p8, p0, Lcom/google/android/exoplayer/MediaFormat;->g:I

    .line 154
    iput p9, p0, Lcom/google/android/exoplayer/MediaFormat;->h:I

    .line 155
    if-nez p10, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p10

    :cond_0
    iput-object p10, p0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    .line 157
    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->j:I

    .line 158
    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->k:I

    .line 159
    return-void
.end method

.method public static a()Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 100
    const-string v0, "application/id3"

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 12

    .prologue
    const/4 v3, -0x1

    .line 112
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    const-wide/16 v4, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v11, 0x0

    move-object v2, p0

    move v6, v3

    move v7, v3

    move v9, v3

    move v10, v3

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;IJIIFIILjava/util/List;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 71
    const-wide/16 v2, -0x1

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->b(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IJIIFLjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJIIF",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;IJIIFIILjava/util/List;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJII",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 77
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;IJIIFLjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private final a(Landroid/media/MediaFormat;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 278
    const-string v0, "max-width"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->j:I

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 279
    const-string v0, "max-height"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->k:I

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 280
    return-void
.end method

.method private static final a(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 293
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 296
    :cond_0
    return-void
.end method

.method private static final a(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 285
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 286
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 288
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/MediaFormat;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->b:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->b:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->d:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->d:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->e:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->e:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->f:F

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->j:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->j:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->k:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->k:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->g:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->g:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->h:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->h:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 234
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v2, v3

    .line 229
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 234
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static b()Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 104
    const-string v0, "application/eia-608"

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJII",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;IJIIFIILjava/util/List;)V

    return-object v1
.end method

.method public static c()Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 108
    const-string v0, "application/ttml+xml"

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .prologue
    .line 162
    iput p1, p0, Lcom/google/android/exoplayer/MediaFormat;->j:I

    .line 163
    iput p2, p0, Lcom/google/android/exoplayer/MediaFormat;->k:I

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->m:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->m:Landroid/media/MediaFormat;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaFormat;->a(Landroid/media/MediaFormat;)V

    .line 167
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/MediaFormat;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 211
    if-ne p0, p1, :cond_0

    .line 217
    :goto_0
    return v0

    .line 214
    :cond_0
    if-nez p1, :cond_1

    .line 215
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/MediaFormat;->a(Lcom/google/android/exoplayer/MediaFormat;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaFormat;->n:Z

    .line 118
    return-void
.end method

.method public final e()Landroid/media/MediaFormat;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->m:Landroid/media/MediaFormat;

    if-nez v0, :cond_3

    .line 250
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 251
    const-string v0, "mime"

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "max-input-size"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->b:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 253
    const-string v0, "width"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->d:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 254
    const-string v0, "height"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->e:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 255
    const-string v0, "channel-count"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->g:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 256
    const-string v0, "sample-rate"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->h:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 257
    const-string v0, "com.google.android.videos.pixelWidthHeightRatio"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->f:F

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->a(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 259
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaFormat;->n:Z

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "is-adts"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 263
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "csd-"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 263
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 266
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 267
    const-string v0, "durationUs"

    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 269
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/MediaFormat;->a(Landroid/media/MediaFormat;)V

    .line 270
    iput-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->m:Landroid/media/MediaFormat;

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->m:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 201
    if-ne p0, p1, :cond_1

    .line 202
    const/4 v0, 0x1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 207
    check-cast p1, Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/MediaFormat;->a(Lcom/google/android/exoplayer/MediaFormat;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 179
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->l:I

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->b:I

    add-int/2addr v0, v2

    .line 183
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->d:I

    add-int/2addr v0, v2

    .line 184
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->e:I

    add-int/2addr v0, v2

    .line 185
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 186
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 187
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->j:I

    add-int/2addr v0, v2

    .line 188
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->k:I

    add-int/2addr v0, v2

    .line 189
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->g:I

    add-int/2addr v0, v2

    .line 190
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->h:I

    add-int/2addr v0, v2

    .line 191
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 192
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v2

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 194
    :cond_1
    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->l:I

    .line 196
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->l:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaFormat("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method