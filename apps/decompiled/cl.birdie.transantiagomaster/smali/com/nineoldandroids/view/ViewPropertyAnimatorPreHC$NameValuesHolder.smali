.class final Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorPreHC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValuesHolder"
.end annotation


# instance fields
.field mDeltaValue:F

.field mFromValue:F

.field mNameConstant:I


# direct methods
.method constructor <init>(FF)V
    .locals 1
    .param p1, "fromValue"    # F
    .param p2, "deltaValue"    # F

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/16 v0, 0x200

    iput v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->mNameConstant:I

    .line 201
    iput p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->mFromValue:F

    .line 202
    iput p2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->mDeltaValue:F

    .line 203
    return-void
.end method