.class public interface abstract Lcom/polidea/rxandroidble2/internal/ScanResultInterface;
.super Ljava/lang/Object;
.source "ScanResultInterface.java"


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public abstract getRssi()I
.end method

.method public abstract getScanCallbackType()Lcom/polidea/rxandroidble2/scan/ScanCallbackType;
.end method

.method public abstract getScanRecord()Lcom/polidea/rxandroidble2/scan/ScanRecord;
.end method

.method public abstract getTimestampNanos()J
.end method
