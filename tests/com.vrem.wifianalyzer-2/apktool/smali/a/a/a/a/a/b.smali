.class public La/a/a/a/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, La/a/a/a/a/b;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([J[J)La/a/a/a/a/b;

    goto :goto_0

    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([I[I)La/a/a/a/a/b;

    goto :goto_0

    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([S[S)La/a/a/a/a/b;

    goto :goto_0

    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([C[C)La/a/a/a/a/b;

    goto :goto_0

    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([B[B)La/a/a/a/a/b;

    goto :goto_0

    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([D[D)La/a/a/a/a/b;

    goto :goto_0

    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([F[F)La/a/a/a/a/b;

    goto :goto_0

    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([Z[Z)La/a/a/a/a/b;

    goto :goto_0

    :cond_8
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([Ljava/lang/Object;[Ljava/lang/Object;)La/a/a/a/a/b;

    goto/16 :goto_0
.end method


# virtual methods
.method public a(BB)La/a/a/a/a/b;
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(CC)La/a/a/a/a/b;
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(DD)La/a/a/a/a/b;
    .locals 5

    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, La/a/a/a/a/b;->a(JJ)La/a/a/a/a/b;

    move-result-object p0

    goto :goto_0
.end method

.method public a(FF)La/a/a/a/a/b;
    .locals 2

    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, La/a/a/a/a/b;->a(II)La/a/a/a/a/b;

    move-result-object p0

    goto :goto_0
.end method

.method public a(II)La/a/a/a/a/b;
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(JJ)La/a/a/a/a/b;
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, La/a/a/a/a/b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(SS)La/a/a/a/a/b;
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(ZZ)La/a/a/a/a/b;
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a([B[B)La/a/a/a/a/b;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(BB)La/a/a/a/a/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([C[C)La/a/a/a/a/b;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(CC)La/a/a/a/a/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([D[D)La/a/a/a/a/b;
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, La/a/a/a/a/b;->a(DD)La/a/a/a/a/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([F[F)La/a/a/a/a/b;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(FF)La/a/a/a/a/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([I[I)La/a/a/a/a/b;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(II)La/a/a/a/a/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([J[J)La/a/a/a/a/b;
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, La/a/a/a/a/b;->a(JJ)La/a/a/a/a/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([Ljava/lang/Object;[Ljava/lang/Object;)La/a/a/a/a/b;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([S[S)La/a/a/a/a/b;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(SS)La/a/a/a/a/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([Z[Z)La/a/a/a/a/b;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(ZZ)La/a/a/a/a/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/a/a/a/b;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    return v0
.end method
