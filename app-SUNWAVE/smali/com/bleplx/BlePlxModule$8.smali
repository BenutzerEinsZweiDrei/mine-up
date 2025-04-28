.class Lcom/bleplx/BlePlxModule$8;
.super Ljava/lang/Object;
.source "BlePlxModule.java"

# interfaces
.implements Lcom/polidea/multiplatformbleadapter/OnErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bleplx/BlePlxModule;->startDeviceScan(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bleplx/BlePlxModule;


# direct methods
.method constructor <init>(Lcom/bleplx/BlePlxModule;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/bleplx/BlePlxModule$8;->this$0:Lcom/bleplx/BlePlxModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/bleplx/BlePlxModule$8;->this$0:Lcom/bleplx/BlePlxModule;

    sget-object v1, Lcom/bleplx/Event;->ScanEvent:Lcom/bleplx/Event;

    iget-object v2, p0, Lcom/bleplx/BlePlxModule$8;->this$0:Lcom/bleplx/BlePlxModule;

    invoke-static {v2}, Lcom/bleplx/BlePlxModule;->access$100(Lcom/bleplx/BlePlxModule;)Lcom/bleplx/converter/BleErrorToJsObjectConverter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->toJSCallback(Lcom/polidea/multiplatformbleadapter/errors/BleError;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/bleplx/BlePlxModule;->access$000(Lcom/bleplx/BlePlxModule;Lcom/bleplx/Event;Ljava/lang/Object;)V

    return-void
.end method
