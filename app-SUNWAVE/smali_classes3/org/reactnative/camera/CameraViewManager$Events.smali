.class public final enum Lorg/reactnative/camera/CameraViewManager$Events;
.super Ljava/lang/Enum;
.source "CameraViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reactnative/camera/CameraViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/reactnative/camera/CameraViewManager$Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_CAMERA_READY:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_BARCODES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_BARCODE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_BAR_CODE_READ:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_FACES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_FACE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_MOUNT_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_PICTURE_SAVED:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_PICTURE_TAKEN:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_RECORDING_END:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_RECORDING_START:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_TEXT_RECOGNIZED:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_TOUCH:Lorg/reactnative/camera/CameraViewManager$Events;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/reactnative/camera/CameraViewManager$Events;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lorg/reactnative/camera/CameraViewManager$Events;

    .line 18
    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_CAMERA_READY:Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_MOUNT_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BAR_CODE_READ:Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_FACES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BARCODES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_FACE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BARCODE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_TEXT_RECOGNIZED:Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_PICTURE_TAKEN:Lorg/reactnative/camera/CameraViewManager$Events;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_PICTURE_SAVED:Lorg/reactnative/camera/CameraViewManager$Events;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_RECORDING_START:Lorg/reactnative/camera/CameraViewManager$Events;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_RECORDING_END:Lorg/reactnative/camera/CameraViewManager$Events;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_TOUCH:Lorg/reactnative/camera/CameraViewManager$Events;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_CAMERA_READY"

    const/4 v2, 0x0

    const-string v3, "onCameraReady"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_CAMERA_READY:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 20
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_MOUNT_ERROR"

    const/4 v2, 0x1

    const-string v3, "onMountError"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_MOUNT_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 21
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_BAR_CODE_READ"

    const/4 v2, 0x2

    const-string v3, "onBarCodeRead"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BAR_CODE_READ:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 22
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_FACES_DETECTED"

    const/4 v2, 0x3

    const-string v3, "onFacesDetected"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_FACES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 23
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_BARCODES_DETECTED"

    const/4 v2, 0x4

    const-string v3, "onGoogleVisionBarcodesDetected"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BARCODES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 24
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_FACE_DETECTION_ERROR"

    const/4 v2, 0x5

    const-string v3, "onFaceDetectionError"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_FACE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 25
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_BARCODE_DETECTION_ERROR"

    const/4 v2, 0x6

    const-string v3, "onGoogleVisionBarcodeDetectionError"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BARCODE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 26
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_TEXT_RECOGNIZED"

    const/4 v2, 0x7

    const-string v3, "onTextRecognized"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_TEXT_RECOGNIZED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 27
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_PICTURE_TAKEN"

    const/16 v2, 0x8

    const-string v3, "onPictureTaken"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_PICTURE_TAKEN:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 28
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_PICTURE_SAVED"

    const/16 v2, 0x9

    const-string v3, "onPictureSaved"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_PICTURE_SAVED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 29
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_RECORDING_START"

    const/16 v2, 0xa

    const-string v3, "onRecordingStart"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_RECORDING_START:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 30
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_RECORDING_END"

    const/16 v2, 0xb

    const-string v3, "onRecordingEnd"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_RECORDING_END:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 31
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_ON_TOUCH"

    const/16 v2, 0xc

    const-string v3, "onTouch"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_TOUCH:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 18
    invoke-static {}, Lorg/reactnative/camera/CameraViewManager$Events;->$values()[Lorg/reactnative/camera/CameraViewManager$Events;

    move-result-object v0

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->$VALUES:[Lorg/reactnative/camera/CameraViewManager$Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lorg/reactnative/camera/CameraViewManager$Events;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/reactnative/camera/CameraViewManager$Events;
    .locals 1

    .line 18
    const-class v0, Lorg/reactnative/camera/CameraViewManager$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/reactnative/camera/CameraViewManager$Events;

    return-object p0
.end method

.method public static values()[Lorg/reactnative/camera/CameraViewManager$Events;
    .locals 1

    .line 18
    sget-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->$VALUES:[Lorg/reactnative/camera/CameraViewManager$Events;

    invoke-virtual {v0}, [Lorg/reactnative/camera/CameraViewManager$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/reactnative/camera/CameraViewManager$Events;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/reactnative/camera/CameraViewManager$Events;->mName:Ljava/lang/String;

    return-object v0
.end method
