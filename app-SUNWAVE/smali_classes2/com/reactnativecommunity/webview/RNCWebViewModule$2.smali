.class synthetic Lcom/reactnativecommunity/webview/RNCWebViewModule$2;
.super Ljava/lang/Object;
.source "RNCWebViewModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/webview/RNCWebViewModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$reactnativecommunity$webview$RNCWebViewModule$MimeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 500
    invoke-static {}, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->values()[Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/reactnativecommunity/webview/RNCWebViewModule$2;->$SwitchMap$com$reactnativecommunity$webview$RNCWebViewModule$MimeType:[I

    :try_start_0
    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->IMAGE:Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    invoke-virtual {v1}, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/reactnativecommunity/webview/RNCWebViewModule$2;->$SwitchMap$com$reactnativecommunity$webview$RNCWebViewModule$MimeType:[I

    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->VIDEO:Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    invoke-virtual {v1}, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
