.class Lcl/santander/smartphone/TransferSupergirosConfirm$5;
.super Ljava/lang/Object;
.source "TransferSupergirosConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferSupergirosConfirm;->supergiroRealizar()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$5;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$5;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v0, v0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v0}, Lcl/santander/smartphone/ServicesManager;->LogOff(Landroid/app/Activity;)Z
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    iput-boolean v2, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 407
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$5;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v0, v0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$5;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v1, v1, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 410
    return-void

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0

    .line 402
    :catch_1
    move-exception v0

    goto :goto_0

    .line 401
    :catch_2
    move-exception v0

    goto :goto_0
.end method
