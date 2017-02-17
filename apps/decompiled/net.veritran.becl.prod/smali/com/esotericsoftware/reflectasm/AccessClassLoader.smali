.class Lcom/esotericsoftware/reflectasm/AccessClassLoader;
.super Ljava/lang/ClassLoader;
.source "AccessClassLoader.java"


# static fields
.field private static final accessClassLoaders:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/esotericsoftware/reflectasm/AccessClassLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile selfContextAccessClassLoader:Lcom/esotericsoftware/reflectasm/AccessClassLoader;

.field private static final selfContextParentClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/WeakHashMap;

    .line 17
    const-class v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    invoke-static {v0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->getParentClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextParentClassLoader:Ljava/lang/ClassLoader;

    .line 18
    new-instance v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    sget-object v1, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextParentClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextAccessClassLoader:Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 68
    return-void
.end method

.method public static activeAccessClassLoaders()I
    .locals 2

    .prologue
    .line 61
    sget-object v1, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    .line 62
    .local v0, "sz":I
    sget-object v1, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextAccessClassLoader:Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 63
    :cond_0
    return v0
.end method

.method static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .locals 6
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->getParentClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 23
    .local v1, "parent":Ljava/lang/ClassLoader;
    sget-object v3, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextParentClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 24
    sget-object v3, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextAccessClassLoader:Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    if-nez v3, :cond_1

    .line 25
    sget-object v4, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 26
    :try_start_0
    sget-object v3, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextAccessClassLoader:Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    if-nez v3, :cond_0

    .line 27
    new-instance v3, Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    sget-object v5, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextParentClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v3, v5}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v3, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextAccessClassLoader:Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    .line 28
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextAccessClassLoader:Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    .line 44
    :goto_0
    return-object v0

    .line 28
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 33
    :cond_2
    sget-object v4, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 34
    :try_start_2
    sget-object v3, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 35
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/esotericsoftware/reflectasm/AccessClassLoader;>;"
    if-eqz v2, :cond_4

    .line 36
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    .line 37
    .local v0, "accessClassLoader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    if-eqz v0, :cond_3

    .line 38
    monitor-exit v4

    goto :goto_0

    .line 45
    .end local v0    # "accessClassLoader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/esotericsoftware/reflectasm/AccessClassLoader;>;"
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 40
    .restart local v0    # "accessClassLoader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/esotericsoftware/reflectasm/AccessClassLoader;>;"
    :cond_3
    :try_start_3
    sget-object v3, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v0    # "accessClassLoader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    :cond_4
    new-instance v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 43
    .restart local v0    # "accessClassLoader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    sget-object v3, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method private static getParentClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 94
    .local v0, "parent":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method

.method public static remove(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p0, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 50
    sget-object v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextParentClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->selfContextAccessClassLoader:Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    .line 58
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v1, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 82
    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "defineClass"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, [B

    aput-object v5, v2, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-class v5, Ljava/security/ProtectionDomain;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 84
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    array-length v4, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/esotericsoftware/reflectasm/FieldAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/esotericsoftware/reflectasm/FieldAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-object v0

    .line 73
    :cond_0
    :try_start_1
    const-class v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    goto :goto_0

    .line 74
    :cond_1
    const-class v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;

    goto :goto_0

    .line 76
    :cond_2
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
