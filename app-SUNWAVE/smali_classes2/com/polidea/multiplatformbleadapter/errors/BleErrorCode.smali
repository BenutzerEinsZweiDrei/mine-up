.class public final enum Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;
.super Ljava/lang/Enum;
.source "BleErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum BluetoothInUnknownState:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum BluetoothManagerDestroyed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum BluetoothPoweredOff:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum BluetoothResetting:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum BluetoothStateChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum BluetoothUnauthorized:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum BluetoothUnsupported:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum CharacteristicInvalidDataFormat:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum CharacteristicNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum CharacteristicNotifyChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum CharacteristicReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum CharacteristicWriteFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum CharacteristicsDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum CharacteristicsNotDiscovered:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DescriptorInvalidDataFormat:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DescriptorNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DescriptorReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DescriptorWriteFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DescriptorWriteNotAllowed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DescriptorsDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DescriptorsNotDiscovered:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DeviceAlreadyConnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DeviceConnectionFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DeviceDisconnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DeviceMTUChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DeviceNotConnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DeviceNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum DeviceRSSIReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum IncludedServicesDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum InvalidIdentifiers:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum LocationServicesDisabled:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum OperationCancelled:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum OperationStartFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum OperationTimedOut:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum ScanStartFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum ServiceNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum ServicesDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum ServicesNotDiscovered:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public static final enum UnknownError:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;


# instance fields
.field public final code:I


# direct methods
.method private static synthetic $values()[Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;
    .locals 3

    const/16 v0, 0x27

    new-array v0, v0, [Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 4
    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->UnknownError:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothManagerDestroyed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->OperationCancelled:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->OperationTimedOut:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->OperationStartFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->InvalidIdentifiers:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothUnsupported:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothUnauthorized:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothPoweredOff:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothInUnknownState:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothResetting:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothStateChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceConnectionFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceDisconnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceRSSIReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceAlreadyConnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceNotConnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceMTUChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ServicesDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->IncludedServicesDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ServiceNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ServicesNotDiscovered:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicsDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicWriteFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicNotifyChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicsNotDiscovered:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicInvalidDataFormat:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorsDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorWriteFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorsNotDiscovered:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorInvalidDataFormat:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorWriteNotAllowed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ScanStartFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->LocationServicesDisabled:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "UnknownError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->UnknownError:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 7
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "BluetoothManagerDestroyed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothManagerDestroyed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 8
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "OperationCancelled"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->OperationCancelled:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 9
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "OperationTimedOut"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->OperationTimedOut:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 10
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "OperationStartFailed"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->OperationStartFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 11
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "InvalidIdentifiers"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->InvalidIdentifiers:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 13
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "BluetoothUnsupported"

    const/4 v2, 0x6

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothUnsupported:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 14
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "BluetoothUnauthorized"

    const/4 v2, 0x7

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothUnauthorized:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 15
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "BluetoothPoweredOff"

    const/16 v2, 0x8

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothPoweredOff:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 16
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "BluetoothInUnknownState"

    const/16 v2, 0x9

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothInUnknownState:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 17
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "BluetoothResetting"

    const/16 v2, 0xa

    const/16 v3, 0x68

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothResetting:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 18
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "BluetoothStateChangeFailed"

    const/16 v2, 0xb

    const/16 v3, 0x69

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothStateChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 20
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DeviceConnectionFailed"

    const/16 v2, 0xc

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceConnectionFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 21
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DeviceDisconnected"

    const/16 v2, 0xd

    const/16 v3, 0xc9

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceDisconnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 22
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DeviceRSSIReadFailed"

    const/16 v2, 0xe

    const/16 v3, 0xca

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceRSSIReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 23
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DeviceAlreadyConnected"

    const/16 v2, 0xf

    const/16 v3, 0xcb

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceAlreadyConnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 24
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DeviceNotFound"

    const/16 v2, 0x10

    const/16 v3, 0xcc

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 25
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DeviceNotConnected"

    const/16 v2, 0x11

    const/16 v3, 0xcd

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceNotConnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 26
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DeviceMTUChangeFailed"

    const/16 v2, 0x12

    const/16 v3, 0xce

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceMTUChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 28
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "ServicesDiscoveryFailed"

    const/16 v2, 0x13

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ServicesDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 29
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "IncludedServicesDiscoveryFailed"

    const/16 v2, 0x14

    const/16 v3, 0x12d

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->IncludedServicesDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 30
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "ServiceNotFound"

    const/16 v2, 0x15

    const/16 v3, 0x12e

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ServiceNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 31
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "ServicesNotDiscovered"

    const/16 v2, 0x16

    const/16 v3, 0x12f

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ServicesNotDiscovered:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 33
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "CharacteristicsDiscoveryFailed"

    const/16 v2, 0x17

    const/16 v3, 0x190

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicsDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 34
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "CharacteristicWriteFailed"

    const/16 v2, 0x18

    const/16 v3, 0x191

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicWriteFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 35
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "CharacteristicReadFailed"

    const/16 v2, 0x19

    const/16 v3, 0x192

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 36
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "CharacteristicNotifyChangeFailed"

    const/16 v2, 0x1a

    const/16 v3, 0x193

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicNotifyChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 37
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "CharacteristicNotFound"

    const/16 v2, 0x1b

    const/16 v3, 0x194

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 38
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "CharacteristicsNotDiscovered"

    const/16 v2, 0x1c

    const/16 v3, 0x195

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicsNotDiscovered:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 39
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "CharacteristicInvalidDataFormat"

    const/16 v2, 0x1d

    const/16 v3, 0x196

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicInvalidDataFormat:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 41
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DescriptorsDiscoveryFailed"

    const/16 v2, 0x1e

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorsDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 42
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DescriptorWriteFailed"

    const/16 v2, 0x1f

    const/16 v3, 0x1f5

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorWriteFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 43
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DescriptorReadFailed"

    const/16 v2, 0x20

    const/16 v3, 0x1f6

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 44
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DescriptorNotFound"

    const/16 v2, 0x21

    const/16 v3, 0x1f7

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 45
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DescriptorsNotDiscovered"

    const/16 v2, 0x22

    const/16 v3, 0x1f8

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorsNotDiscovered:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 46
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DescriptorInvalidDataFormat"

    const/16 v2, 0x23

    const/16 v3, 0x1f9

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorInvalidDataFormat:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 47
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "DescriptorWriteNotAllowed"

    const/16 v2, 0x24

    const/16 v3, 0x1fa

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorWriteNotAllowed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 49
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "ScanStartFailed"

    const/16 v2, 0x25

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ScanStartFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 50
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v1, "LocationServicesDisabled"

    const/16 v2, 0x26

    const/16 v3, 0x259

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->LocationServicesDisabled:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 4
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->$values()[Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    move-result-object v0

    sput-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->$VALUES:[Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;
    .locals 1

    .line 4
    const-class v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;
    .locals 1

    .line 4
    sget-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->$VALUES:[Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {v0}, [Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    return-object v0
.end method
