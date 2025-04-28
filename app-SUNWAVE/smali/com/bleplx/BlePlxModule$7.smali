.class Lcom/bleplx/BlePlxModule$7;
.super Ljava/lang/Object;
.source "BlePlxModule.java"

# interfaces
.implements Lcom/polidea/multiplatformbleadapter/OnEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bleplx/BlePlxModule;->startDeviceScan(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
        "Lcom/polidea/multiplatformbleadapter/ScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bleplx/BlePlxModule;


# direct methods
.method constructor <init>(Lcom/bleplx/BlePlxModule;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/bleplx/BlePlxModule$7;->this$0:Lcom/bleplx/BlePlxModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/polidea/multiplatformbleadapter/ScanResult;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/bleplx/BlePlxModule$7;->this$0:Lcom/bleplx/BlePlxModule;

    sget-object v1, Lcom/bleplx/Event;->ScanEvent:Lcom/bleplx/Event;

    iget-object v2, p0, Lcom/bleplx/BlePlxModule$7;->this$0:Lcom/bleplx/BlePlxModule;

    invoke-static {v2}, Lcom/bleplx/BlePlxModule;->access$200(Lcom/bleplx/BlePlxModule;)Lcom/bleplx/converter/ScanResultToJsObjectConverter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bleplx/converter/ScanResultToJsObjectConverter;->toJSCallback(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/bleplx/BlePlxModule;->access$000(Lcom/bleplx/BlePlxModule;Lcom/bleplx/Event;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Lcom/polidea/multiplatformbleadapter/ScanResult;

    invoke-virtual {p0, p1}, Lcom/bleplx/BlePlxModule$7;->onEvent(Lcom/polidea/multiplatformbleadapter/ScanResult;)V

    return-void
.end method
