.class public final Landroid/support/v4/widget/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/z$a;,
        Landroid/support/v4/widget/z$d;,
        Landroid/support/v4/widget/z$c;,
        Landroid/support/v4/widget/z$e;,
        Landroid/support/v4/widget/z$b;,
        Landroid/support/v4/widget/z$f;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/z$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/z$a;

    invoke-direct {v0}, Landroid/support/v4/widget/z$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/z;->a:Landroid/support/v4/widget/z$f;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/z$d;

    invoke-direct {v0}, Landroid/support/v4/widget/z$d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/z;->a:Landroid/support/v4/widget/z$f;

    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/widget/z$c;

    invoke-direct {v0}, Landroid/support/v4/widget/z$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/z;->a:Landroid/support/v4/widget/z$f;

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/widget/z$e;

    invoke-direct {v0}, Landroid/support/v4/widget/z$e;-><init>()V

    sput-object v0, Landroid/support/v4/widget/z;->a:Landroid/support/v4/widget/z$f;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/widget/z$b;

    invoke-direct {v0}, Landroid/support/v4/widget/z$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/z;->a:Landroid/support/v4/widget/z$f;

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/z;->a:Landroid/support/v4/widget/z$f;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/z$f;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    sget-object v0, Landroid/support/v4/widget/z;->a:Landroid/support/v4/widget/z$f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/z$f;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
