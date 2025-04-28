.class Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody$FormField;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormField"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field filename:Ljava/lang/String;

.field mime:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;


# direct methods
.method constructor <init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 415
    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody$FormField;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "name"

    .line 416
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody$FormField;->name:Ljava/lang/String;

    :cond_0
    const-string p1, "filename"

    .line 418
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody$FormField;->filename:Ljava/lang/String;

    :cond_1
    const-string/jumbo p1, "type"

    .line 420
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody$FormField;->mime:Ljava/lang/String;

    goto :goto_1

    .line 423
    :cond_2
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody$FormField;->filename:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string/jumbo p1, "text/plain"

    goto :goto_0

    :cond_3
    const-string p1, "application/octet-stream"

    :goto_0
    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody$FormField;->mime:Ljava/lang/String;

    :goto_1
    const-string p1, "data"

    .line 425
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody$FormField;->data:Ljava/lang/String;

    :cond_4
    return-void
.end method
