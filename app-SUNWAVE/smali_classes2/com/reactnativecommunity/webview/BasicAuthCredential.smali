.class Lcom/reactnativecommunity/webview/BasicAuthCredential;
.super Ljava/lang/Object;
.source "RNCWebViewManager.java"


# instance fields
.field password:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1822
    iput-object p1, p0, Lcom/reactnativecommunity/webview/BasicAuthCredential;->username:Ljava/lang/String;

    .line 1823
    iput-object p2, p0, Lcom/reactnativecommunity/webview/BasicAuthCredential;->password:Ljava/lang/String;

    return-void
.end method
