.class public abstract Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.super Ljava/lang/Object;
.source "MapTileModuleProviderBase.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;,
        Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field protected final mPending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Lorg/osmdroid/tileprovider/MapTileRequestState;",
            ">;"
        }
    .end annotation
.end field

.field protected final mQueueLockObject:Ljava/lang/Object;

.field protected final mWorking:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Lorg/osmdroid/tileprovider/MapTileRequestState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "pThreadPoolSize"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mQueueLockObject:Ljava/lang/Object;

    .line 91
    const/16 v0, 0x28

    if-ge v0, p1, :cond_0

    .line 92
    sget-object v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->logger:Lorg/slf4j/Logger;

    const-string v1, "The pending queue size is smaller than the thread pool size. Automatically reducing the thread pool size."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 93
    const/16 p1, 0x28

    .line 95
    :cond_0
    new-instance v0, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getThreadGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    .line 99
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    .line 129
    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->logger:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->clearQueue()V

    return-void
.end method

.method private clearQueue()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mQueueLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 147
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 148
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->clearQueue()V

    .line 156
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 157
    return-void
.end method

.method public abstract getMaximumZoomLevel()I
.end method

.method public abstract getMinimumZoomLevel()I
.end method

.method protected abstract getThreadGroupName()Ljava/lang/String;
.end method

.method protected abstract getTileLoader()Ljava/lang/Runnable;
.end method

.method public abstract getUsesDataConnection()Z
.end method

.method public final loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 4
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .prologue
    .line 132
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mQueueLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getTileLoader()Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :goto_0
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->logger:Lorg/slf4j/Logger;

    const-string v2, "RejectedExecutionException"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final removeTileFromQueues(Lorg/osmdroid/tileprovider/MapTile;)V
    .locals 2
    .param p1, "mapTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 160
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mQueueLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public abstract setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
.end method