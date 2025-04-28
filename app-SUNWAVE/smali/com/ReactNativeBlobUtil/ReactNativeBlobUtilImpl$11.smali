.class Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->readStream(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

.field final synthetic val$bufferSize:I

.field final synthetic val$ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$streamId:Ljava/lang/String;

.field final synthetic val$tick:I


# direct methods
.method constructor <init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    iput-object p2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    iput-object p3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$encoding:Ljava/lang/String;

    iput p5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$bufferSize:I

    iput p6, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$tick:I

    iput-object p7, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$streamId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 282
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 283
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$encoding:Ljava/lang/String;

    iget v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$bufferSize:I

    iget v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$tick:I

    iget-object v5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;->val$streamId:Ljava/lang/String;

    sget-object v6, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual/range {v0 .. v6}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->readStream(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method
