.class final Lorg/mapsforge/android/maps/MapZoomControls$ZoomOutClickListener;
.super Ljava/lang/Object;
.source "MapZoomControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/MapZoomControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomOutClickListener"
.end annotation


# instance fields
.field private final mapView:Lorg/mapsforge/android/maps/MapView;


# direct methods
.method constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/mapsforge/android/maps/MapZoomControls$ZoomOutClickListener;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 65
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapZoomControls$ZoomOutClickListener;->mapView:Lorg/mapsforge/android/maps/MapView;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/mapsforge/android/maps/MapView;->zoom(BF)Z

    .line 70
    return-void
.end method