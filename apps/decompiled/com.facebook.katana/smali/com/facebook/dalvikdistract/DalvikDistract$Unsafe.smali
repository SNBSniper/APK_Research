.class final Lcom/facebook/dalvikdistract/DalvikDistract$Unsafe;
.super Ljava/lang/Object;
.source "DalvikDistract.java"


# instance fields
.field private final wrapped:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/facebook/dalvikdistract/DalvikDistract$Unsafe;->wrapped:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/dalvikdistract/DalvikDistract$Unsafe;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/dalvikdistract/DalvikDistract$Unsafe;->wrapped:Ljava/lang/Object;

    return-object v0
.end method
