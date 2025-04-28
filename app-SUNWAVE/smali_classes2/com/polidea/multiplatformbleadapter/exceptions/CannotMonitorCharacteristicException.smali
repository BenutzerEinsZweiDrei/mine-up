.class public Lcom/polidea/multiplatformbleadapter/exceptions/CannotMonitorCharacteristicException;
.super Ljava/lang/RuntimeException;
.source "CannotMonitorCharacteristicException.java"


# instance fields
.field private characteristic:Lcom/polidea/multiplatformbleadapter/Characteristic;


# direct methods
.method public constructor <init>(Lcom/polidea/multiplatformbleadapter/Characteristic;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/exceptions/CannotMonitorCharacteristicException;->characteristic:Lcom/polidea/multiplatformbleadapter/Characteristic;

    return-void
.end method


# virtual methods
.method public getCharacteristic()Lcom/polidea/multiplatformbleadapter/Characteristic;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/exceptions/CannotMonitorCharacteristicException;->characteristic:Lcom/polidea/multiplatformbleadapter/Characteristic;

    return-object v0
.end method
