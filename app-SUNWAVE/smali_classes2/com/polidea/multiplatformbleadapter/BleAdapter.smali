.class public interface abstract Lcom/polidea/multiplatformbleadapter/BleAdapter;
.super Ljava/lang/Object;
.source "BleAdapter.java"


# virtual methods
.method public abstract cancelDeviceConnection(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract cancelTransaction(Ljava/lang/String;)V
.end method

.method public abstract connectToDevice(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/ConnectionOptions;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/ConnectionOptions;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/ConnectionState;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract createClient(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract descriptorsForCharacteristic(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation
.end method

.method public abstract descriptorsForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation
.end method

.method public abstract descriptorsForService(ILjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation
.end method

.method public abstract destroyClient()V
.end method

.method public abstract disable(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract discoverAllServicesAndCharacteristicsForDevice(Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract enable(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getCharacteristicsForDevice(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation
.end method

.method public abstract getCharacteristicsForService(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation
.end method

.method public abstract getConnectedDevices([Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "[",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getCurrentState()Ljava/lang/String;
.end method

.method public abstract getKnownDevices([Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "[",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getLogLevel()Ljava/lang/String;
.end method

.method public abstract getServicesForDevice(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Service;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation
.end method

.method public abstract isDeviceConnected(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract monitorCharacteristic(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract monitorCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract monitorCharacteristicForService(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readCharacteristic(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readCharacteristicForService(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readDescriptor(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readDescriptorForCharacteristic(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readDescriptorForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readDescriptorForService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readRSSIForDevice(Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract requestConnectionPriorityForDevice(Ljava/lang/String;ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract requestMTUForDevice(Ljava/lang/String;ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setLogLevel(Ljava/lang/String;)V
.end method

.method public abstract startDeviceScan([Ljava/lang/String;IILcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/ScanResult;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract stopDeviceScan()V
.end method

.method public abstract writeCharacteristic(ILjava/lang/String;ZLjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract writeCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract writeCharacteristicForService(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract writeDescriptor(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract writeDescriptorForCharacteristic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract writeDescriptorForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract writeDescriptorForService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation
.end method
