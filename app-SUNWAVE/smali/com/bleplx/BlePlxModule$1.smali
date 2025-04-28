.class Lcom/bleplx/BlePlxModule$1;
.super Ljava/lang/Object;
.source "BlePlxModule.java"

# interfaces
.implements Lcom/polidea/multiplatformbleadapter/OnEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bleplx/BlePlxModule;->createClient(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bleplx/BlePlxModule;


# direct methods
.method constructor <init>(Lcom/bleplx/BlePlxModule;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/bleplx/BlePlxModule$1;->this$0:Lcom/bleplx/BlePlxModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bleplx/BlePlxModule$1;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/bleplx/BlePlxModule$1;->this$0:Lcom/bleplx/BlePlxModule;

    sget-object v1, Lcom/bleplx/Event;->StateChangeEvent:Lcom/bleplx/Event;

    invoke-static {v0, v1, p1}, Lcom/bleplx/BlePlxModule;->access$000(Lcom/bleplx/BlePlxModule;Lcom/bleplx/Event;Ljava/lang/Object;)V

    return-void
.end method
