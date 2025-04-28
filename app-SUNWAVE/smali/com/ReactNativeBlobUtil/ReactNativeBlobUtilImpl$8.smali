.class Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

.field final synthetic val$append:Z

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$transformFile:Z


# direct methods
.method constructor <init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    iput-object p2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$encoding:Ljava/lang/String;

    iput-object p4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$data:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$transformFile:Z

    iput-boolean p6, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$append:Z

    iput-object p7, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$path:Ljava/lang/String;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$encoding:Ljava/lang/String;

    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$data:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$transformFile:Z

    iget-boolean v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$append:Z

    iget-object v5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static/range {v0 .. v5}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/Promise;)V

    return-void
.end method
