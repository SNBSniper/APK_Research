.class public final Landroid/support/v4/widget/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/s$b;,
        Landroid/support/v4/widget/s$a;,
        Landroid/support/v4/widget/s$d;,
        Landroid/support/v4/widget/s$c;,
        Landroid/support/v4/widget/s$e;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/s$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/s$b;

    invoke-direct {v0}, Landroid/support/v4/widget/s$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/s;->a:Landroid/support/v4/widget/s$e;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/s$a;

    invoke-direct {v0}, Landroid/support/v4/widget/s$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/s;->a:Landroid/support/v4/widget/s$e;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/widget/s$d;

    invoke-direct {v0}, Landroid/support/v4/widget/s$d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/s;->a:Landroid/support/v4/widget/s$e;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/widget/s$c;

    invoke-direct {v0}, Landroid/support/v4/widget/s$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/s;->a:Landroid/support/v4/widget/s$e;

    goto :goto_0
.end method

.method public static a(Landroid/widget/PopupWindow;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/s;->a:Landroid/support/v4/widget/s$e;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/s$e;->a(Landroid/widget/PopupWindow;I)V

    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 6

    sget-object v0, Landroid/support/v4/widget/s;->a:Landroid/support/v4/widget/s$e;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/s$e;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/s;->a:Landroid/support/v4/widget/s$e;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/s$e;->a(Landroid/widget/PopupWindow;Z)V

    return-void
.end method
