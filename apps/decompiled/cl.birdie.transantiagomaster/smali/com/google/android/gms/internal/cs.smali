.class public final Lcom/google/android/gms/internal/cs;
.super Lcom/google/android/gms/internal/do;

# interfaces
.implements Lcom/google/android/gms/internal/cu$a;
.implements Lcom/google/android/gms/internal/ea$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cs$a;
    }
.end annotation


# instance fields
.field private final ky:Lcom/google/android/gms/internal/bq;

.field private final lC:Lcom/google/android/gms/internal/dz;

.field private final li:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mR:Lcom/google/android/gms/internal/bj;

.field private final oG:Lcom/google/android/gms/internal/cr$a;

.field private final oH:Ljava/lang/Object;

.field private final oI:Lcom/google/android/gms/internal/cx$a;

.field private final oJ:Lcom/google/android/gms/internal/l;

.field private oK:Lcom/google/android/gms/internal/do;

.field private oL:Lcom/google/android/gms/internal/cz;

.field private oM:Z

.field private oN:Lcom/google/android/gms/internal/bh;

.field private oO:Lcom/google/android/gms/internal/bn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx$a;Lcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/cr$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/do;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->oH:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cs;->oM:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/cs;->ky:Lcom/google/android/gms/internal/bq;

    iput-object p6, p0, Lcom/google/android/gms/internal/cs;->oG:Lcom/google/android/gms/internal/cr$a;

    iput-object p4, p0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    iput-object p1, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cs;->oI:Lcom/google/android/gms/internal/cx$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/cs;->oJ:Lcom/google/android/gms/internal/l;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/ak;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cs$a;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->pr:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->pr:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v2, v2, Lcom/google/android/gms/internal/cz;->pr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget-object v6, v0, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    array-length v7, v6

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_5

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/internal/ak;->width:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    iget v0, v8, Lcom/google/android/gms/internal/ak;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    iget v9, v8, Lcom/google/android/gms/internal/ak;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_3

    iget v9, v8, Lcom/google/android/gms/internal/ak;->heightPixels:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_2
    if-ne v4, v0, :cond_4

    if-ne v5, v1, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ak;

    iget-object v1, p1, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget-object v1, v1, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/ak;-><init>(Lcom/google/android/gms/internal/ak;[Lcom/google/android/gms/internal/ak;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v2, v2, Lcom/google/android/gms/internal/cz;->pr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget v0, v8, Lcom/google/android/gms/internal/ak;->width:I

    goto :goto_1

    :cond_3
    iget v1, v8, Lcom/google/android/gms/internal/ak;->height:I

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v2, v2, Lcom/google/android/gms/internal/cz;->pr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cs;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cr$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oG:Lcom/google/android/gms/internal/cr$a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/dz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    return-object v0
.end method

.method private e(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cs$a;
        }
    .end annotation

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cs;->f(J)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    const-string v1, "Timed out waiting for WebView to finish loading."

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cs;->oM:Z

    if-eqz v0, :cond_0

    return-void
.end method

.method private f(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cs$a;
        }
    .end annotation

    const-wide/32 v0, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    const-string v1, "Ad request cancelled."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/cz;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/dz;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cs;->oM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final aY()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    const/4 v2, 0x3

    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/internal/dw;->n(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oJ:Lcom/google/android/gms/internal/l;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/l;->y()Lcom/google/android/gms/internal/h;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v12, Lcom/google/android/gms/internal/cx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/cs;->oI:Lcom/google/android/gms/internal/cx$a;

    invoke-direct {v12, v3, v2}, Lcom/google/android/gms/internal/cx;-><init>(Lcom/google/android/gms/internal/cx$a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    const/4 v11, -0x2

    const-wide/16 v3, -0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    iget-object v2, v12, Lcom/google/android/gms/internal/cx;->kK:Lcom/google/android/gms/internal/dx;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/dx;->rt:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/dw;->n(I)Z

    new-instance v2, Lcom/google/android/gms/internal/cv$a;

    move-object/from16 v0, p0

    invoke-direct {v2, v6, v12, v0}, Lcom/google/android/gms/internal/cv$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cu$a;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cv$a;->start()V

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/cs;->oH:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cs;->oK:Lcom/google/android/gms/internal/do;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oK:Lcom/google/android/gms/internal/do;

    if-nez v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/cs$a;

    const-string v7, "Could not start the ad request service."

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v6

    throw v2
    :try_end_3
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v2

    :goto_1
    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cs$a;->getErrorCode()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    const/4 v7, -0x1

    if-ne v6, v7, :cond_e

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cs$a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/dw;->x(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    if-nez v2, :cond_f

    new-instance v2, Lcom/google/android/gms/internal/cz;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/cz;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    :goto_3
    sget-object v2, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/cs$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/cs$1;-><init>(Lcom/google/android/gms/internal/cs;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v24, v3

    move-object/from16 v21, v5

    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v2, v2, Lcom/google/android/gms/internal/cz;->pw:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-nez v2, :cond_10

    :try_start_5
    new-instance v29, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v2, v2, Lcom/google/android/gms/internal/cz;->pw:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    :try_start_6
    new-instance v2, Lcom/google/android/gms/internal/dh;

    iget-object v3, v12, Lcom/google/android/gms/internal/cx;->pg:Lcom/google/android/gms/internal/ah;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v5, v5, Lcom/google/android/gms/internal/cz;->ne:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v7, v7, Lcom/google/android/gms/internal/cz;->nf:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v8, v8, Lcom/google/android/gms/internal/cz;->pq:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget v9, v9, Lcom/google/android/gms/internal/cz;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-wide v10, v10, Lcom/google/android/gms/internal/cz;->ni:J

    iget-object v12, v12, Lcom/google/android/gms/internal/cx;->pj:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-boolean v13, v13, Lcom/google/android/gms/internal/cz;->po:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    iget-object v14, v14, Lcom/google/android/gms/internal/bn;->nx:Lcom/google/android/gms/internal/bi;

    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    iget-object v15, v15, Lcom/google/android/gms/internal/bn;->ny:Lcom/google/android/gms/internal/br;

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v16, v0

    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->nz:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->mR:Lcom/google/android/gms/internal/bj;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->nA:Lcom/google/android/gms/internal/bl;

    move-object/from16 v18, v0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/google/android/gms/internal/cz;->pp:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/internal/cz;->pn:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/cz;->ps:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->pt:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v2 .. v29}, Lcom/google/android/gms/internal/dh;-><init>(Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/dz;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/br;Ljava/lang/String;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/bl;JLcom/google/android/gms/internal/ak;JJJLjava/lang/String;Lorg/json/JSONObject;)V

    sget-object v3, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/cs$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/cs$2;-><init>(Lcom/google/android/gms/internal/cs;Lcom/google/android/gms/internal/dh;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v30
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :cond_1
    const/4 v2, 0x3

    :try_start_7
    invoke-static {v2}, Lcom/google/android/gms/internal/dw;->n(I)Z

    invoke-static {v6}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Failed to connect to remote ad request service."

    invoke-static {v2}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/cv$b;

    move-object/from16 v0, p0

    invoke-direct {v2, v6, v12, v0}, Lcom/google/android/gms/internal/cv$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cu$a;)V
    :try_end_7
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v30

    throw v2

    :cond_3
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_4
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/gms/internal/cs;->f(J)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lcom/google/android/gms/internal/cs$a;

    const-string v6, "Timed out waiting for ad response."

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/cs;->oH:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cs;->oK:Lcom/google/android/gms/internal/do;

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget v2, v2, Lcom/google/android/gms/internal/cz;->errorCode:I

    const/4 v6, -0x2

    if-eq v2, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget v2, v2, Lcom/google/android/gms/internal/cz;->errorCode:I

    const/4 v6, -0x3

    if-eq v2, v6, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/cs$a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "There was a problem getting an ad response. ErrorCode: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget v7, v7, Lcom/google/android/gms/internal/cz;->errorCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget v7, v7, Lcom/google/android/gms/internal/cz;->errorCode:I

    invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_2
    move-exception v2

    monitor-exit v6

    throw v2

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_b
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-wide v8

    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget v2, v2, Lcom/google/android/gms/internal/cz;->errorCode:I

    const/4 v3, -0x3

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v2, v2, Lcom/google/android/gms/internal/cz;->pm:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/cs$a;

    const-string v3, "No fill from ad server."

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v2

    :catch_1
    move-exception v2

    move-wide v3, v8

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/cz;->po:Z
    :try_end_c
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v2, :cond_8

    :try_start_d
    new-instance v2, Lcom/google/android/gms/internal/bj;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v3, v3, Lcom/google/android/gms/internal/cz;->pm:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/bj;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cs;->mR:Lcom/google/android/gms/internal/bj;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_8
    :try_start_e
    iget-object v2, v12, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget-object v2, v2, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/ak;
    :try_end_e
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v10

    :goto_a
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/cz;->po:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/cs;->oH:Ljava/lang/Object;

    monitor-enter v3
    :try_end_f
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    new-instance v2, Lcom/google/android/gms/internal/bh;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/cs;->ky:Lcom/google/android/gms/internal/bq;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/cs;->mR:Lcom/google/android/gms/internal/bj;

    invoke-direct {v2, v4, v12, v5, v6}, Lcom/google/android/gms/internal/bh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bj;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cs;->oN:Lcom/google/android/gms/internal/bh;

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oN:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v2, v13, v14}, Lcom/google/android/gms/internal/bh;->a$3651953c(J)Lcom/google/android/gms/internal/bn;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    iget v2, v2, Lcom/google/android/gms/internal/bn;->nw:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lcom/google/android/gms/internal/cs$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected mediation result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    iget v4, v4, Lcom/google/android/gms/internal/bn;->nw:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_11
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catch_2
    move-exception v2

    move-wide v3, v8

    move-object v5, v10

    goto/16 :goto_1

    :catch_3
    move-exception v2

    :try_start_12
    new-instance v2, Lcom/google/android/gms/internal/cs$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse mediation config: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v4, v4, Lcom/google/android/gms/internal/cz;->pm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_12
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :catchall_3
    move-exception v2

    :try_start_13
    monitor-exit v3

    throw v2

    :pswitch_0
    move-wide/from16 v24, v8

    move v6, v11

    move-object/from16 v21, v10

    goto/16 :goto_4

    :pswitch_1
    new-instance v2, Lcom/google/android/gms/internal/cs$a;

    const-string v3, "No fill from any mediation ad networks."

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/cz;->pu:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dz;->R()Lcom/google/android/gms/internal/ak;

    move-result-object v2

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ak;->lT:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_b
    new-instance v2, Lcom/google/android/gms/internal/ct;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ct;-><init>(Lcom/google/android/gms/internal/ea$a;Lcom/google/android/gms/internal/dz;IIB)V

    sget-object v3, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/cs$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/cs$4;-><init>(Lcom/google/android/gms/internal/cs;Lcom/google/android/gms/internal/ct;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/gms/internal/cs;->e(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ct;->bc()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/dw;->n(I)Z

    new-instance v2, Lcom/google/android/gms/internal/cs$a;

    const-string v3, "AdNetwork sent passback url"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_a
    iget v5, v2, Lcom/google/android/gms/internal/ak;->widthPixels:I

    iget v6, v2, Lcom/google/android/gms/internal/ak;->heightPixels:I

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ct;->bd()Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/cs$a;

    const-string v3, "AdNetwork timed out"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_c
    move-wide/from16 v24, v8

    move v6, v11

    move-object/from16 v21, v10

    goto/16 :goto_4

    :cond_d
    sget-object v2, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/cs$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/cs$3;-><init>(Lcom/google/android/gms/internal/cs;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/gms/internal/cs;->e(J)V
    :try_end_13
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-wide/from16 v24, v8

    move v6, v11

    move-object/from16 v21, v10

    goto/16 :goto_4

    :cond_e
    :try_start_14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cs$a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    new-instance v2, Lcom/google/android/gms/internal/cz;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-wide v7, v7, Lcom/google/android/gms/internal/cz;->ni:J

    invoke-direct {v2, v6, v7, v8}, Lcom/google/android/gms/internal/cz;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    goto/16 :goto_3

    :catch_4
    move-exception v2

    const-string v4, "Error parsing the JSON for Active View."

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_10
    move-object/from16 v29, v3

    goto/16 :goto_5

    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_9

    :cond_15
    move-object v10, v5

    goto/16 :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onStop()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->oH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oK:Lcom/google/android/gms/internal/do;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oK:Lcom/google/android/gms/internal/do;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/do;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->stopLoading()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oN:Lcom/google/android/gms/internal/bh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oN:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bh;->cancel()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
