.class Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeFileArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

.field final synthetic val$append:Z

.field final synthetic val$data:Lcom/facebook/react/bridge/ReadableArray;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    iput-object p2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;->val$data:Lcom/facebook/react/bridge/ReadableArray;

    iput-boolean p4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;->val$append:Z

    iput-object p5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;->val$path:Ljava/lang/String;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;->val$data:Lcom/facebook/react/bridge/ReadableArray;

    iget-boolean v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;->val$append:Z

    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, v2, v3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->writeFile(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V

    return-void
.end method
