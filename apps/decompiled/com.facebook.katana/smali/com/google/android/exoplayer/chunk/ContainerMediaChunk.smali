.class public Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;
.super Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;


# instance fields
.field private final k:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

.field private final l:J

.field private m:Lcom/google/android/exoplayer/MediaFormat;

.field private n:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private volatile o:I

.field private volatile p:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZLcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 15

    .prologue
    .line 72
    const/4 v14, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZZ)V

    .line 74
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->k:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 75
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->l:J

    .line 76
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->m:Lcom/google/android/exoplayer/MediaFormat;

    .line 77
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->n:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 78
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)I
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->d()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)I

    move-result v0

    return v0
.end method

.method public final a(JIII[B)V
    .locals 9

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->d()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->l:J

    add-long/2addr v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(JIII[B)V

    .line 125
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->m:Lcom/google/android/exoplayer/MediaFormat;

    .line 110
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->n:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 105
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .locals 2

    .prologue
    .line 99
    const-string v0, "ContainerMediaChunk"

    const-string v1, "Ignoring unexpected seekMap"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->d()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 120
    return-void
.end method

.method public final b()Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->m:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public final c()Lcom/google/android/exoplayer/drm/DrmInitData;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->n:Lcom/google/android/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->o:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->p:Z

    .line 132
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->p:Z

    return v0
.end method

.method public final h()V
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->o:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/Util;->a(Lcom/google/android/exoplayer/upstream/DataSpec;I)Lcom/google/android/exoplayer/upstream/DataSpec;

    move-result-object v4

    .line 145
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-wide v2, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->b:J

    iget-object v5, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v5, v4}, Lcom/google/android/exoplayer/upstream/DataSource;->a(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;JJ)V

    .line 147
    iget v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->o:I

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->k:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->a(Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    :cond_0
    const/4 v1, 0x0

    .line 154
    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->p:Z

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->k:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 158
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer/upstream/DataSpec;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->o:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->a()V

    .line 162
    return-void

    .line 158
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v4, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->b:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->o:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->a()V

    throw v0
.end method