.class final Lnet/hockeyapp/android/CrashManager$2;
.super Ljava/lang/Object;
.source "CrashManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/CrashManager;->showDialog(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ignoreDefaultHandler:Z

.field final synthetic val$listener:Lnet/hockeyapp/android/CrashManagerListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lnet/hockeyapp/android/CrashManager$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lnet/hockeyapp/android/CrashManager$2;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iput-boolean p3, p0, Lnet/hockeyapp/android/CrashManager$2;->val$ignoreDefaultHandler:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lnet/hockeyapp/android/CrashManager$2;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iget-boolean v2, p0, Lnet/hockeyapp/android/CrashManager$2;->val$ignoreDefaultHandler:Z

    # invokes: Lnet/hockeyapp/android/CrashManager;->sendCrashes(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->access$100(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 342
    return-void
.end method
