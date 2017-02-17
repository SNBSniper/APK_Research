.class public Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
.super Ljava/lang/Object;
.source "GzipParameters.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private compressionLevel:I

.field private filename:Ljava/lang/String;

.field private modificationTime:J

.field private operatingSystem:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    .line 35
    const/16 v0, 0xff

    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressionLevel()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    return v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getModificationTime()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationTime:J

    return-wide v0
.end method

.method public getOperatingSystem()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCompressionLevel(I)V
    .locals 3
    .param p1, "compressionLevel"    # I

    .prologue
    .line 51
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid gzip compression level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    .line 55
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->filename:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setModificationTime(J)V
    .locals 1
    .param p1, "modificationTime"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationTime:J

    .line 68
    return-void
.end method

.method public setOperatingSystem(I)V
    .locals 0
    .param p1, "operatingSystem"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    .line 120
    return-void
.end method
