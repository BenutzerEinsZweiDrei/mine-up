.class public Lcom/polidea/multiplatformbleadapter/ConnectionOptions;
.super Ljava/lang/Object;
.source "ConnectionOptions.java"


# instance fields
.field private final autoConnect:Z

.field private final connectionPriority:I

.field private final refreshGattMoment:Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

.field private final requestMTU:I

.field private final timeoutInMillis:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;ILcom/polidea/multiplatformbleadapter/RefreshGattMoment;Ljava/lang/Long;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->autoConnect:Z

    .line 45
    iput p2, p0, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->requestMTU:I

    .line 46
    iput-object p3, p0, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->refreshGattMoment:Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    .line 47
    iput-object p4, p0, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->timeoutInMillis:Ljava/lang/Long;

    .line 48
    iput p5, p0, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->connectionPriority:I

    return-void
.end method


# virtual methods
.method public getAutoConnect()Ljava/lang/Boolean;
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->autoConnect:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPriority()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->connectionPriority:I

    return v0
.end method

.method public getRefreshGattMoment()Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->refreshGattMoment:Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    return-object v0
.end method

.method public getRequestMTU()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->requestMTU:I

    return v0
.end method

.method public getTimeoutInMillis()Ljava/lang/Long;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->timeoutInMillis:Ljava/lang/Long;

    return-object v0
.end method
