.class final Lcl/birdie/transantiagomaster/facebook/WallFragment$1$1;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/WallFragment$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/facebook/WallFragment$1;

.field private final synthetic val$arg2:I


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/WallFragment$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1$1;->this$1:Lcl/birdie/transantiagomaster/facebook/WallFragment$1;

    iput p2, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1$1;->val$arg2:I

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 215
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 209
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1$1;->this$1:Lcl/birdie/transantiagomaster/facebook/WallFragment$1;

    # getter for: Lcl/birdie/transantiagomaster/facebook/WallFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$1;->access$0(Lcl/birdie/transantiagomaster/facebook/WallFragment$1;)Lcl/birdie/transantiagomaster/facebook/WallFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1$1;->this$1:Lcl/birdie/transantiagomaster/facebook/WallFragment$1;

    # getter for: Lcl/birdie/transantiagomaster/facebook/WallFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$1;->access$0(Lcl/birdie/transantiagomaster/facebook/WallFragment$1;)Lcl/birdie/transantiagomaster/facebook/WallFragment;

    move-result-object v0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    iget v2, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1$1;->val$arg2:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Id:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onDisplayComment(Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method