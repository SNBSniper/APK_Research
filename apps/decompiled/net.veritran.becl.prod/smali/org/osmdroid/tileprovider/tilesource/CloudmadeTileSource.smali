.class public Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "CloudmadeTileSource.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;",
        "Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private mStyle:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pResourceId"    # Lorg/osmdroid/ResourceProxy$string;
    .param p3, "pZoomMinLevel"    # I
    .param p4, "pZoomMaxLevel"    # I
    .param p5, "pTileSizePixels"    # I
    .param p6, "pImageFilenameEnding"    # Ljava/lang/String;
    .param p7, "pBaseUrl"    # [Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct/range {p0 .. p7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    .line 20
    return-void
.end method


# virtual methods
.method public getStyle()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getStyle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->getStyle()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTileURLString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;
    .locals 6
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 33
    invoke-static {}, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->getCloudmadeKey()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 35
    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->logger:Lorg/slf4j/Logger;

    const-string v3, "CloudMade key is not set. You should enter it in the manifest and call CloudmadeUtil.retrieveCloudmadeKey()"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-static {}, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->getCloudmadeToken()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->getTileSizePixels()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mImageFilenameEnding:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public pathBase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 25
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mName:Ljava/lang/String;

    .line 27
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setStyle(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "pStyle"    # Ljava/lang/Integer;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    .line 45
    return-void
.end method

.method public bridge synthetic setStyle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->setStyle(Ljava/lang/Integer;)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 4
    .param p1, "pStyle"    # Ljava/lang/String;

    .prologue
    .line 50
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting integer style: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method