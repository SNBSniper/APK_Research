.class final enum Lorg/mapsforge/android/maps/rendertheme/Closed;
.super Ljava/lang/Enum;
.source "Closed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mapsforge/android/maps/rendertheme/Closed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/android/maps/rendertheme/Closed;

.field public static final enum ANY:Lorg/mapsforge/android/maps/rendertheme/Closed;

.field public static final enum NO:Lorg/mapsforge/android/maps/rendertheme/Closed;

.field public static final enum YES:Lorg/mapsforge/android/maps/rendertheme/Closed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/Closed;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/android/maps/rendertheme/Closed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/Closed;->ANY:Lorg/mapsforge/android/maps/rendertheme/Closed;

    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/Closed;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lorg/mapsforge/android/maps/rendertheme/Closed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/Closed;->NO:Lorg/mapsforge/android/maps/rendertheme/Closed;

    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/Closed;

    const-string v1, "YES"

    invoke-direct {v0, v1, v4}, Lorg/mapsforge/android/maps/rendertheme/Closed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/Closed;->YES:Lorg/mapsforge/android/maps/rendertheme/Closed;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mapsforge/android/maps/rendertheme/Closed;

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/Closed;->ANY:Lorg/mapsforge/android/maps/rendertheme/Closed;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/Closed;->NO:Lorg/mapsforge/android/maps/rendertheme/Closed;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/Closed;->YES:Lorg/mapsforge/android/maps/rendertheme/Closed;

    aput-object v1, v0, v4

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/Closed;->$VALUES:[Lorg/mapsforge/android/maps/rendertheme/Closed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/Closed;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lorg/mapsforge/android/maps/rendertheme/Closed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/Closed;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/android/maps/rendertheme/Closed;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/Closed;->$VALUES:[Lorg/mapsforge/android/maps/rendertheme/Closed;

    invoke-virtual {v0}, [Lorg/mapsforge/android/maps/rendertheme/Closed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/android/maps/rendertheme/Closed;

    return-object v0
.end method
