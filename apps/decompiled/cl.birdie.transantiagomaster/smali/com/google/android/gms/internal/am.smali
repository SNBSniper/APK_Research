.class public final Lcom/google/android/gms/internal/am;
.super Lcom/google/android/gms/internal/ar$a;


# instance fields
.field private final lV:Lcom/google/android/gms/ads/doubleclick/AppEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ar$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/am;->lV:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-void
.end method


# virtual methods
.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/am;->lV:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-void
.end method