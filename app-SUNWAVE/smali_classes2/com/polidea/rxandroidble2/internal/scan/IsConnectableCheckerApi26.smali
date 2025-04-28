.class public Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi26;
.super Ljava/lang/Object;
.source "IsConnectableCheckerApi26.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Landroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2/scan/IsConnectable;
    .locals 0

    .line 21
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->isConnectable()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/polidea/rxandroidble2/scan/IsConnectable;->CONNECTABLE:Lcom/polidea/rxandroidble2/scan/IsConnectable;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/polidea/rxandroidble2/scan/IsConnectable;->NOT_CONNECTABLE:Lcom/polidea/rxandroidble2/scan/IsConnectable;

    :goto_0
    return-object p1
.end method
