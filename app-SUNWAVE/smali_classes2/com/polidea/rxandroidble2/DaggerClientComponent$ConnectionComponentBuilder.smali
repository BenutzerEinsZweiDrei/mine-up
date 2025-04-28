.class final Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/DaggerClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectionComponentBuilder"
.end annotation


# instance fields
.field private autoConnect:Ljava/lang/Boolean;

.field private final clientComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

.field private final deviceComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

.field private operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

.field private suppressOperationChecks:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->clientComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

    .line 202
    iput-object p2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->deviceComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)V

    return-void
.end method


# virtual methods
.method public autoConnect(Z)Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;
    .locals 0

    .line 207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->autoConnect:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic autoConnect(Z)Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->autoConnect(Z)Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;
    .locals 9

    .line 225
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->autoConnect:Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lbleshadow/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 226
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->suppressOperationChecks:Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lbleshadow/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 227
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

    const-class v1, Lcom/polidea/rxandroidble2/Timeout;

    invoke-static {v0, v1}, Lbleshadow/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 228
    new-instance v0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentImpl;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->clientComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->deviceComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object v5, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->autoConnect:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->suppressOperationChecks:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentImpl;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/polidea/rxandroidble2/Timeout;Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V

    return-object v0
.end method

.method public operationTimeout(Lcom/polidea/rxandroidble2/Timeout;)Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;
    .locals 0

    .line 219
    invoke-static {p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2/Timeout;

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

    return-object p0
.end method

.method public bridge synthetic operationTimeout(Lcom/polidea/rxandroidble2/Timeout;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->operationTimeout(Lcom/polidea/rxandroidble2/Timeout;)Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public suppressOperationChecks(Z)Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;
    .locals 0

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->suppressOperationChecks:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic suppressOperationChecks(Z)Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;->suppressOperationChecks(Z)Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;

    move-result-object p1

    return-object p1
.end method
