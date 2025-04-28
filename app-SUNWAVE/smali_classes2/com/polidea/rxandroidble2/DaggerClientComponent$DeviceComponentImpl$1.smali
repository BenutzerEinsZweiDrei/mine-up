.class Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$1;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"

# interfaces
.implements Lbleshadow/javax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->initialize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/javax/inject/Provider<",
        "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$1;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;
    .locals 4

    .line 410
    new-instance v0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$1;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->access$1800(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$1;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    invoke-static {v2}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->access$1900(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$1;->get()Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;

    move-result-object v0

    return-object v0
.end method
