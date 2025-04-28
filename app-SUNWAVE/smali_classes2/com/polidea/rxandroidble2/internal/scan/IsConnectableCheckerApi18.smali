.class public Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi18;
.super Ljava/lang/Object;
.source "IsConnectableCheckerApi18.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Landroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2/scan/IsConnectable;
    .locals 0

    .line 19
    sget-object p1, Lcom/polidea/rxandroidble2/scan/IsConnectable;->LEGACY_UNKNOWN:Lcom/polidea/rxandroidble2/scan/IsConnectable;

    return-object p1
.end method
