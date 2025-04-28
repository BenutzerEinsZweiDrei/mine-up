.class Lcom/bleplx/BlePlxModule$2;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bleplx/BlePlxModule;


# direct methods
.method constructor <init>(Lcom/bleplx/BlePlxModule;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/bleplx/BlePlxModule$2;->this$0:Lcom/bleplx/BlePlxModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/Integer;)V
    .locals 2

    .line 101
    iget-object p1, p0, Lcom/bleplx/BlePlxModule$2;->this$0:Lcom/bleplx/BlePlxModule;

    sget-object v0, Lcom/bleplx/Event;->RestoreStateEvent:Lcom/bleplx/Event;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bleplx/BlePlxModule;->access$000(Lcom/bleplx/BlePlxModule;Lcom/bleplx/Event;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/bleplx/BlePlxModule$2;->onEvent(Ljava/lang/Integer;)V

    return-void
.end method
