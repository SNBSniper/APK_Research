.class public final Lcom/google/zxing/client/result/TelParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;


# instance fields
.field private final number:Ljava/lang/String;

.field private final telURI:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    iput-object p1, p0, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/result/TelParsedResult;->telURI:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/result/TelParsedResult;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDisplayResult()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/TelParsedResult;->title:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
