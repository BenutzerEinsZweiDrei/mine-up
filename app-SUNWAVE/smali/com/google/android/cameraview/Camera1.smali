.class Lcom/google/android/cameraview/Camera1;
.super Lcom/google/android/cameraview/CameraViewImpl;
.source "Camera1.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final BROKEN_ROTATION_DEVICE_MODELS:[Ljava/lang/String;

.field private static final DELAY_MILLIS_BEFORE_RESETTING_FOCUS:I = 0xbb8

.field private static final FLASH_MODES:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOCUS_AREA_SIZE_DEFAULT:I = 0x12c

.field private static final FOCUS_METERING_AREA_WEIGHT_DEFAULT:I = 0x3e8

.field private static final INVALID_CAMERA_ID:I = -0x1

.field private static final WB_MODES:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _mCameraId:Ljava/lang/String;

.field private final isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

.field private mAutoFocus:Z

.field mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private final mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mDeviceOrientation:I

.field private mDisplayOrientation:I

.field private mExposure:F

.field private mFacing:I

.field private mFlash:I

.field private mHandler:Landroid/os/Handler;

.field private mIsPreviewActive:Z

.field private final mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsScanning:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mOrientation:I

.field private mPictureSize:Lcom/google/android/cameraview/Size;

.field private final mPictureSizes:Lcom/google/android/cameraview/SizeMap;

.field private mPlaySoundOnCapture:Ljava/lang/Boolean;

.field private mPlaySoundOnRecord:Ljava/lang/Boolean;

.field private final mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

.field private mPreviewTexture:Landroid/graphics/SurfaceTexture;

.field private mShowingPreview:Z

.field private mVideoPath:Ljava/lang/String;

.field private mWhiteBalance:I

.field private mZoom:F

.field private mustUpdateSurface:Z

.field sound:Landroid/media/MediaActionSound;

.field private surfaceWasDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 53
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroidx/collection/SparseArrayCompat;

    const-string v1, "SM-G532M"

    const-string v2, "SM-T813"

    const-string v3, "SM-T819"

    const-string v4, "SM-T307U"

    const-string v5, "SM-T713"

    .line 55
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/cameraview/Camera1;->BROKEN_ROTATION_DEVICE_MODELS:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "off"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const-string v3, "on"

    .line 59
    invoke-virtual {v0, v2, v3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const/4 v3, 0x2

    const-string/jumbo v4, "torch"

    .line 60
    invoke-virtual {v0, v3, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const/4 v4, 0x3

    const-string v5, "auto"

    .line 61
    invoke-virtual {v0, v4, v5}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const/4 v6, 0x4

    const-string v7, "red-eye"

    .line 62
    invoke-virtual {v0, v6, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 65
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/google/android/cameraview/Camera1;->WB_MODES:Landroidx/collection/SparseArrayCompat;

    .line 68
    invoke-virtual {v0, v1, v5}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const-string v1, "cloudy-daylight"

    .line 69
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const-string v1, "daylight"

    .line 70
    invoke-virtual {v0, v3, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const-string v1, "shade"

    .line 71
    invoke-virtual {v0, v4, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const-string v1, "fluorescent"

    .line 72
    invoke-virtual {v0, v6, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const/4 v1, 0x5

    const-string v2, "incandescent"

    .line 73
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/os/Handler;)V
    .locals 1

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/cameraview/CameraViewImpl;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/os/Handler;)V

    .line 80
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mHandler:Landroid/os/Handler;

    const-string p1, ""

    .line 83
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->_mCameraId:Ljava/lang/String;

    .line 85
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    .line 133
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 85
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->sound:Landroid/media/MediaActionSound;

    .line 94
    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 100
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance p1, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {p1}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 104
    iput-boolean p3, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    .line 107
    new-instance p1, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {p1}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    .line 125
    iput p3, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    .line 133
    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    .line 135
    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnRecord:Ljava/lang/Boolean;

    .line 145
    new-instance p1, Lcom/google/android/cameraview/Camera1$1;

    invoke-direct {p1, p0}, Lcom/google/android/cameraview/Camera1$1;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {p2, p1}, Lcom/google/android/cameraview/PreviewImpl;->setCallback(Lcom/google/android/cameraview/PreviewImpl$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/cameraview/Camera1;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/google/android/cameraview/Camera1;->surfaceWasDestroyed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/cameraview/Camera1;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->surfaceWasDestroyed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/cameraview/Camera1;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->updateSurface()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/cameraview/Camera1;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    return p0
.end method

.method static synthetic access$1102(Lcom/google/android/cameraview/Camera1;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/cameraview/Camera1;)Landroid/hardware/Camera$Parameters;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/cameraview/Camera1;FF)Landroid/graphics/Rect;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/cameraview/Camera1;->calculateFocusArea(FF)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/cameraview/Camera1;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/google/android/cameraview/Camera1;->mustUpdateSurface:Z

    return p0
.end method

.method static synthetic access$202(Lcom/google/android/cameraview/Camera1;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mustUpdateSurface:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/cameraview/Camera1;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/cameraview/Camera1;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/cameraview/Camera1;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->startCameraPreview()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/cameraview/Camera1;)Ljava/lang/Boolean;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/android/cameraview/Camera1;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/cameraview/Camera1;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/cameraview/Camera1;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/android/cameraview/Camera1;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    return p1
.end method

.method private calcCameraRotation(I)I
    .locals 2

    .line 1391
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    return v0

    .line 1395
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->isLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1396
    :goto_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private calcDisplayOrientation(I)I
    .locals 2

    .line 1372
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    rsub-int p1, v0, 0x168

    rem-int/lit16 p1, p1, 0x168

    return p1

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private calculateFocusArea(FF)Landroid/graphics/Rect;
    .locals 4

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    add-int/lit16 v0, p1, -0x96

    add-int/lit16 v1, p2, -0x96

    add-int/lit16 p1, p1, 0x96

    add-int/lit16 p2, p2, 0x96

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    const/16 v3, 0x7d0

    if-le p1, v3, :cond_1

    move p1, v3

    :cond_1
    if-gez v1, :cond_2

    move v1, v2

    :cond_2
    if-le p2, v3, :cond_3

    move p2, v3

    .line 1357
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit16 v0, v0, -0x3e8

    add-int/lit16 v1, v1, -0x3e8

    add-int/lit16 p1, p1, -0x3e8

    add-int/lit16 p2, p2, -0x3e8

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private chooseAspectRatio()Lcom/google/android/cameraview/AspectRatio;
    .locals 3

    .line 1103
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/AspectRatio;

    .line 1105
    sget-object v2, Lcom/google/android/cameraview/Constants;->DEFAULT_ASPECT_RATIO:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v1, v2}, Lcom/google/android/cameraview/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1
.end method

.method private chooseCamera()V
    .locals 7

    const-string v0, "CAMERA_1::"

    .line 1001
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->_mCameraId:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1032
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->_mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    .line 1033
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1035
    :catch_0
    iput v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    goto :goto_2

    .line 1004
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-nez v1, :cond_2

    .line 1007
    iput v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    const-string v1, "getNumberOfCameras returned 0. No camera available."

    .line 1008
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_4

    .line 1013
    iget-object v5, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1014
    iget-object v5, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget v6, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    if-ne v5, v6, :cond_3

    .line 1015
    iput v4, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1020
    :cond_4
    iput v3, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    .line 1021
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v3, "chooseCamera failed."

    .line 1027
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1028
    iput v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    :goto_2
    return-void
.end method

.method private chooseOptimalSize(Ljava/util/SortedSet;)Lcom/google/android/cameraview/Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Lcom/google/android/cameraview/Size;",
            ">;)",
            "Lcom/google/android/cameraview/Size;"
        }
    .end annotation

    .line 1184
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    invoke-interface {p1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/cameraview/Size;

    return-object p1

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->getWidth()I

    move-result v0

    .line 1190
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getHeight()I

    move-result v1

    .line 1191
    iget v2, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    invoke-direct {p0, v2}, Lcom/google/android/cameraview/Camera1;->isLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v1

    move v1, v0

    move v0, v4

    :cond_1
    const/4 v2, 0x0

    .line 1199
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/cameraview/Size;

    .line 1200
    invoke-virtual {v2}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v3

    if-gt v1, v3, :cond_2

    :cond_3
    return-object v2
.end method

.method private getBestSizeMatch(IILjava/util/SortedSet;)Lcom/google/android/cameraview/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/SortedSet<",
            "Lcom/google/android/cameraview/Size;",
            ">;)",
            "Lcom/google/android/cameraview/Size;"
        }
    .end annotation

    if-eqz p3, :cond_3

    .line 471
    invoke-interface {p3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    invoke-interface {p3}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/Size;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 479
    invoke-interface {p3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/Size;

    .line 480
    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v2

    if-gt p1, v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v2

    if-gt p2, v2, :cond_1

    move-object v0, v1

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isCompatibleWithDevice(I)Z
    .locals 5

    .line 1677
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->getSupportedPreviewFpsRange()Ljava/util/ArrayList;

    move-result-object v0

    mul-int/lit16 p1, p1, 0x3e8

    .line 1679
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1680
    aget v3, v1, v2

    const/4 v4, 0x1

    if-lt p1, v3, :cond_1

    aget v1, v1, v4

    if-gt p1, v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-lez p1, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    move v2, v4

    :cond_3
    if-eqz v2, :cond_0

    return v4

    :cond_4
    const-string p1, "CAMERA_1::"

    const-string v0, "fps (framePerSecond) received an unsupported value and will be ignored."

    .line 1685
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isLandscape(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private openCamera()Z
    .locals 6

    .line 1041
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1042
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->releaseCamera()V

    .line 1048
    :cond_0
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 1053
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    .line 1054
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1057
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 1058
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1059
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v4, Lcom/google/android/cameraview/Size;

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v1}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    goto :goto_0

    .line 1063
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 1064
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1065
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v4, Lcom/google/android/cameraview/Size;

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v1}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    goto :goto_1

    .line 1070
    :cond_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/AspectRatio;

    .line 1071
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v3, v1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1072
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v3, v1}, Lcom/google/android/cameraview/SizeMap;->remove(Lcom/google/android/cameraview/AspectRatio;)V

    goto :goto_2

    .line 1077
    :cond_5
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    if-nez v0, :cond_6

    .line 1078
    sget-object v0, Lcom/google/android/cameraview/Constants;->DEFAULT_ASPECT_RATIO:Lcom/google/android/cameraview/AspectRatio;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 1081
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->adjustCameraParameters()V

    .line 1082
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget v1, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    invoke-direct {p0, v1}, Lcom/google/android/cameraview/Camera1;->calcDisplayOrientation(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1083
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onCameraOpened()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 1091
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 1092
    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v2
.end method

.method private pauseMediaRecorder()V
    .locals 2

    .line 1659
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    :cond_0
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .line 1210
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1211
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 1212
    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    .line 1213
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onCameraClosed()V

    .line 1216
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1217
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private resetFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    .line 1313
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1314
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/cameraview/Camera1$11;

    invoke-direct {p2, p0}, Lcom/google/android/cameraview/Camera1$11;-><init>(Lcom/google/android/cameraview/Camera1;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resumeMediaRecorder()V
    .locals 2

    .line 1665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    :cond_0
    return-void
.end method

.method private setAutoFocusInternal(Z)Z
    .locals 3

    .line 1414
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    .line 1415
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1416
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "continuous-picture"

    .line 1417
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1419
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    if-eqz p1, :cond_1

    const-string p1, "macro"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1420
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "fixed"

    .line 1421
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1422
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "infinity"

    .line 1423
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1424
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1426
    :cond_3
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method private setCamcorderProfile(Landroid/media/CamcorderProfile;ZI)V
    .locals 2

    .line 1690
    invoke-direct {p0, p3}, Lcom/google/android/cameraview/Camera1;->isCompatibleWithDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1691
    :goto_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1692
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p3}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1693
    iget-object p3, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p3, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1694
    iget-object p3, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p3, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1695
    iget-object p3, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p3, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    if-eqz p2, :cond_1

    .line 1697
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget p3, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1698
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget p3, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1699
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget p3, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1700
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget p1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_1
    return-void
.end method

.method private setExposureInternal(F)Z
    .locals 4

    .line 1462
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mExposure:F

    .line 1463
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1464
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result p1

    .line 1465
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 1469
    iget v2, p0, Lcom/google/android/cameraview/Camera1;->mExposure:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    sub-int/2addr v1, p1

    int-to-float v0, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    add-int/2addr v0, p1

    .line 1473
    :cond_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private setFlashInternal(I)Z
    .locals 6

    .line 1438
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1439
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 1440
    sget-object v2, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v0, :cond_0

    return v1

    .line 1444
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1446
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    return v5

    .line 1449
    :cond_1
    iget p1, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    invoke-virtual {v2, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1450
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1451
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    return v5

    :cond_2
    return v1

    .line 1456
    :cond_3
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    return v1
.end method

.method private setPlaySoundInternal(Z)V
    .locals 3

    .line 1532
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    .line 1533
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1537
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1544
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "CAMERA_1::"

    const-string v2, "setPlaySoundInternal failed"

    .line 1547
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1548
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return-void
.end method

.method private setScanningInternal(Z)V
    .locals 1

    .line 1521
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    .line 1522
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1523
    iget-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    if-eqz p1, :cond_0

    .line 1524
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 1526
    :cond_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setUpMediaRecorder(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;I)V
    .locals 3

    .line 1584
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1585
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 1587
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1589
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    if-eqz p4, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1595
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    .line 1598
    iget p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    iget v0, p5, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1599
    iget p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    iget v0, p5, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_0

    .line 1601
    :cond_1
    iget p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    invoke-static {p1, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 1603
    :goto_0
    iget p5, p5, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput p5, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1604
    invoke-direct {p0, p1, p4, p6}, Lcom/google/android/cameraview/Camera1;->setCamcorderProfile(Landroid/media/CamcorderProfile;ZI)V

    .line 1606
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget p4, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-eqz p4, :cond_2

    invoke-virtual {p0, p4}, Lcom/google/android/cameraview/Camera1;->orientationEnumToRotation(I)I

    move-result p4

    goto :goto_1

    :cond_2
    iget p4, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    :goto_1
    invoke-direct {p0, p4}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    .line 1609
    iget-object p4, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p4, p2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :cond_3
    if-eq p3, p1, :cond_4

    .line 1612
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 1615
    :cond_4
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1616
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    return-void
.end method

.method private setWhiteBalanceInternal(I)Z
    .locals 5

    .line 1501
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mWhiteBalance:I

    .line 1502
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1503
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 1504
    sget-object v2, Lcom/google/android/cameraview/Camera1;->WB_MODES:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 1505
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    return v3

    .line 1509
    :cond_0
    iget p1, p0, Lcom/google/android/cameraview/Camera1;->mWhiteBalance:I

    invoke-virtual {v2, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1510
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 1511
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    return v3

    :cond_3
    return v1
.end method

.method private setZoomInternal(F)Z
    .locals 2

    .line 1485
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1488
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1489
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mZoom:F

    const/4 p1, 0x1

    return p1

    .line 1492
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mZoom:F

    const/4 p1, 0x0

    return p1
.end method

.method private startCameraPreview()V
    .locals 3

    .line 336
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 338
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    .line 339
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 340
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 344
    iput-boolean v1, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    const-string v1, "CAMERA_1::"

    const-string v2, "startCameraPreview failed"

    .line 345
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private stopMediaRecorder()V
    .locals 5

    .line 1622
    monitor-enter p0

    .line 1623
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1625
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "CAMERA_1::"

    const-string v3, "stopMediaRecorder stop failed"

    .line 1627
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1631
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1632
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "CAMERA_1::"

    const-string v3, "stopMediaRecorder reset failed"

    .line 1634
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1637
    :goto_1
    iput-object v1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingEnd()V

    .line 1642
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnRecord:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1643
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->sound:Landroid/media/MediaActionSound;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 1646
    :cond_1
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/Camera1;->displayOrientationToOrientationEnum(I)I

    move-result v0

    .line 1648
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 1653
    :cond_2
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    .line 1654
    iput-object v1, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    .line 1655
    monitor-exit p0

    return-void

    .line 1649
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget v3, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move v3, v0

    :goto_4
    invoke-interface {v2, v1, v3, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    .line 1650
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1655
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private updateSurface()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/cameraview/Camera1$2;

    invoke-direct {v1, p0}, Lcom/google/android/cameraview/Camera1$2;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mustUpdateSurface:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method adjustCameraParameters()V
    .locals 7

    .line 1113
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    const-string v1, "CAMERA_1::"

    if-nez v0, :cond_0

    const-string v0, "adjustCameraParameters received an unsupported aspect ratio value and will be ignored."

    .line 1115
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->chooseAspectRatio()Lcom/google/android/cameraview/AspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 1117
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v2, v0}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    .line 1122
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->chooseOptimalSize(Ljava/util/SortedSet;)Lcom/google/android/cameraview/Size;

    move-result-object v0

    .line 1128
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1130
    invoke-virtual {v2}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    .line 1131
    invoke-virtual {v4}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v6, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 1132
    invoke-virtual {v5, v6}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v5

    .line 1129
    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/cameraview/Camera1;->getBestSizeMatch(IILjava/util/SortedSet;)Lcom/google/android/cameraview/Size;

    move-result-object v2

    goto :goto_0

    .line 1136
    :cond_1
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v4, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 1139
    invoke-virtual {v2, v4}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v2

    .line 1136
    invoke-direct {p0, v3, v3, v2}, Lcom/google/android/cameraview/Camera1;->getBestSizeMatch(IILjava/util/SortedSet;)Lcom/google/android/cameraview/Size;

    move-result-object v2

    .line 1143
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    if-eqz v4, :cond_2

    .line 1145
    iget-object v5, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V

    .line 1146
    iput-boolean v3, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    .line 1148
    :cond_2
    iget-object v5, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1149
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1155
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v3}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 1157
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-eqz v0, :cond_3

    .line 1158
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/Camera1;->orientationEnumToRotation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    goto :goto_1

    .line 1160
    :cond_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    invoke-direct {p0, v2}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1163
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setAutoFocusInternal(Z)Z

    .line 1164
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setFlashInternal(I)Z

    .line 1165
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mExposure:F

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setExposureInternal(F)Z

    .line 1166
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/Camera1;->setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z

    .line 1167
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mZoom:F

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setZoomInternal(F)Z

    .line 1168
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mWhiteBalance:I

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setWhiteBalanceInternal(I)Z

    .line 1169
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setScanningInternal(Z)V

    .line 1170
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setPlaySoundInternal(Z)V

    .line 1173
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "setParameters failed"

    .line 1175
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v4, :cond_4

    .line 1178
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->startCameraPreview()V

    :cond_4
    return-void
.end method

.method displayOrientationToOrientationEnum(I)I
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1
.end method

.method fallbackToSoftwareRotation()Z
    .locals 2

    .line 744
    sget-object v0, Lcom/google/android/cameraview/Camera1;->BROKEN_ROTATION_DEVICE_MODELS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getAspectRatio()Lcom/google/android/cameraview/AspectRatio;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    return-object v0
.end method

.method getAutoFocus()Z
    .locals 2

    .line 578
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    return v0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "continuous"

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getAvailablePictureSizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/cameraview/AspectRatio;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/google/android/cameraview/Size;",
            ">;"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method getCameraId()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->_mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method getCameraIds()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 452
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 453
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 454
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 455
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getCameraOrientation()I
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v0
.end method

.method getExposureCompensation()F
    .locals 1

    .line 609
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mExposure:F

    return v0
.end method

.method getFacing()I
    .locals 1

    .line 401
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    return v0
.end method

.method getFlash()I
    .locals 1

    .line 604
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    return v0
.end method

.method getFocusDepth()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getPictureSize()Lcom/google/android/cameraview/Size;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    return-object v0
.end method

.method public getPlaySoundOnCapture()Z
    .locals 1

    .line 1563
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getPlaySoundOnRecord()Z
    .locals 1

    .line 1573
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnRecord:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/google/android/cameraview/Size;
    .locals 3

    .line 993
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 994
    new-instance v1, Lcom/google/android/cameraview/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/cameraview/Size;-><init>(II)V

    return-object v1
.end method

.method getScanning()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    return v0
.end method

.method getSupportedAspectRatios()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 437
    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/cameraview/AspectRatio;

    .line 438
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v3, v2}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v3

    if-nez v3, :cond_0

    .line 439
    invoke-virtual {v0, v2}, Lcom/google/android/cameraview/SizeMap;->remove(Lcom/google/android/cameraview/AspectRatio;)V

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewFpsRange()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation

    .line 1672
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWhiteBalance()I
    .locals 1

    .line 680
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mWhiteBalance:I

    return v0
.end method

.method getZoom()F
    .locals 1

    .line 658
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mZoom:F

    return v0
.end method

.method isCameraOpened()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 1715
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->stopRecording()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x320

    if-eq p2, p1, :cond_0

    const/16 p1, 0x321

    if-ne p2, p1, :cond_1

    .line 1708
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->stopRecording()V

    :cond_1
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 1578
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 1579
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onFramePreview([BIII)V

    return-void
.end method

.method orientationEnumToRotation(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x5a

    return p1

    :cond_1
    const/16 p1, 0x10e

    return p1

    :cond_2
    const/16 p1, 0xb4

    return p1
.end method

.method public pausePreview()V
    .locals 1

    .line 365
    monitor-enter p0

    const/4 v0, 0x0

    .line 366
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    .line 367
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    .line 369
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 372
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pauseRecording()V
    .locals 0

    .line 904
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->pauseMediaRecorder()V

    return-void
.end method

.method record(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;II)Z
    .locals 12

    move-object v8, p0

    move/from16 v0, p6

    const-string v9, "CAMERA_1::"

    .line 851
    iget-object v1, v8, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_3

    iget-object v1, v8, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_0

    .line 853
    iput v0, v8, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    .line 856
    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/google/android/cameraview/Camera1;->setUpMediaRecorder(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;I)V

    .line 857
    iget-object v0, v8, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 858
    iget-object v0, v8, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 867
    :try_start_1
    iget-object v0, v8, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v1, v8, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Record setParameters failed"

    .line 869
    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    :goto_0
    iget v0, v8, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/Camera1;->displayOrientationToOrientationEnum(I)I

    move-result v0

    .line 873
    iget-object v1, v8, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget v2, v8, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    move-object v3, p1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-interface {v1, p1, v2, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingStart(Ljava/lang/String;II)V

    .line 875
    iget-object v0, v8, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnRecord:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 876
    iget-object v0, v8, Lcom/google/android/cameraview/Camera1;->sound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    return v11

    :catch_1
    move-exception v0

    .line 881
    iget-object v1, v8, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "Record start failed"

    .line 882
    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return v10
.end method

.method public resumePreview()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/cameraview/Camera1$3;

    invoke-direct {v1, p0}, Lcom/google/android/cameraview/Camera1$3;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method resumeRecording()V
    .locals 0

    .line 909
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->resumeMediaRecorder()V

    return-void
.end method

.method setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "CAMERA_1::"

    const-string v0, "setAspectRatio received an unsupported value and will be ignored."

    .line 534
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 536
    :cond_1
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 537
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/cameraview/Camera1$7;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera1$7;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 528
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    return v1
.end method

.method setAutoFocus(Z)V
    .locals 2

    .line 560
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 563
    :cond_0
    monitor-enter p0

    .line 564
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setAutoFocusInternal(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 566
    :try_start_1
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "CAMERA_1::"

    const-string v1, "setParameters failed"

    .line 570
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method setCameraId(Ljava/lang/String;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->_mCameraId:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/reactnative/camera/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->_mCameraId:Ljava/lang/String;

    .line 413
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/reactnative/camera/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/cameraview/Camera1$5;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera1$5;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setDeviceOrientation(I)V
    .locals 2

    .line 945
    monitor-enter p0

    .line 946
    :try_start_0
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    if-ne v0, p1, :cond_0

    .line 947
    monitor-exit p0

    return-void

    .line 949
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    .line 950
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 952
    :try_start_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 953
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "CAMERA_1::"

    const-string v1, "setParameters failed"

    .line 955
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 958
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method setDisplayOrientation(I)V
    .locals 3

    .line 919
    monitor-enter p0

    .line 920
    :try_start_0
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    if-ne v0, p1, :cond_0

    .line 921
    monitor-exit p0

    return-void

    .line 923
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    .line 924
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 927
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 928
    iput-boolean v1, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->calcDisplayOrientation(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "CAMERA_1::"

    const-string v2, "setDisplayOrientation failed"

    .line 934
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v0, :cond_3

    .line 937
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->startCameraPreview()V

    .line 940
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method setExposureCompensation(F)V
    .locals 2

    .line 615
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mExposure:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setExposureInternal(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 620
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 621
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CAMERA_1::"

    const-string v1, "setParameters failed"

    .line 624
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method setFacing(I)V
    .locals 1

    .line 382
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    if-ne v0, p1, :cond_0

    return-void

    .line 385
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    .line 387
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/cameraview/Camera1$4;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera1$4;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setFlash(I)V
    .locals 2

    .line 587
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    if-ne p1, v0, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setFlashInternal(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 592
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 593
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CAMERA_1::"

    const-string v1, "setParameters failed"

    .line 597
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method setFocusArea(FF)V
    .locals 2

    .line 1223
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/cameraview/Camera1$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/cameraview/Camera1$10;-><init>(Lcom/google/android/cameraview/Camera1;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFocusDepth(F)V
    .locals 0

    return-void
.end method

.method setPictureSize(Lcom/google/android/cameraview/Size;)V
    .locals 1

    if-nez p1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 498
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    invoke-virtual {p1, v0}, Lcom/google/android/cameraview/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 502
    :cond_1
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    .line 505
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 506
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/cameraview/Camera1$6;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera1$6;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method setPlaySoundOnCapture(Z)V
    .locals 1

    .line 1555
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 1558
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setPlaySoundInternal(Z)V

    return-void
.end method

.method setPlaySoundOnRecord(Z)V
    .locals 0

    .line 1568
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnRecord:Ljava/lang/Boolean;

    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/cameraview/Camera1$9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/cameraview/Camera1$9;-><init>(Lcom/google/android/cameraview/Camera1;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setScanning(Z)V
    .locals 1

    .line 685
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 688
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setScanningInternal(Z)V

    return-void
.end method

.method setUpPreview()V
    .locals 3

    const/4 v0, 0x0

    .line 310
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->surfaceWasDestroyed:Z

    .line 312
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_4

    .line 313
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getOutputClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/view/SurfaceHolder;

    if-ne v1, v2, :cond_3

    .line 316
    iget-boolean v1, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 318
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 319
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v2}, Lcom/google/android/cameraview/PreviewImpl;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    if-eqz v1, :cond_4

    .line 323
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->startCameraPreview()V

    goto :goto_1

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getSurfaceTexture()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "CAMERA_1::"

    const-string v2, "setUpPreview failed"

    .line 330
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 2

    .line 664
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mWhiteBalance:I

    if-ne p1, v0, :cond_0

    return-void

    .line 667
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setWhiteBalanceInternal(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 669
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 670
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CAMERA_1::"

    const-string v1, "setParameters failed"

    .line 673
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method setZoom(F)V
    .locals 2

    .line 642
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mZoom:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 645
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setZoomInternal(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 647
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 648
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CAMERA_1::"

    const-string v1, "setParameters failed"

    .line 651
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method start()Z
    .locals 2

    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->chooseCamera()V

    .line 240
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->openCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onMountError()V

    .line 243
    monitor-exit p0

    return v1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->setUpPreview()V

    .line 252
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->startCameraPreview()V

    .line 256
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 5

    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 270
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "CAMERA_1::"

    const-string v3, "mMediaRecorder.stop() failed"

    .line 272
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 277
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "CAMERA_1::"

    const-string v3, "mMediaRecorder.release() failed"

    .line 279
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    :goto_1
    iput-object v1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 284
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingEnd()V

    .line 287
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/Camera1;->displayOrientationToOrientationEnum(I)I

    move-result v0

    .line 288
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    move v4, v0

    :goto_2
    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 293
    iput-boolean v2, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 296
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "CAMERA_1::"

    const-string v2, "stop preview cleanup failed"

    .line 298
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->releaseCamera()V

    .line 303
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method stopRecording()V
    .locals 3

    .line 891
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->stopMediaRecorder()V

    .line 893
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 896
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mustUpdateSurface:Z

    if-eqz v0, :cond_1

    .line 897
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->updateSurface()V

    :cond_1
    return-void
.end method

.method takePicture(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 698
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {p0, p1}, Lcom/google/android/cameraview/Camera1;->takePictureInternal(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 703
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preview is paused - resume it before taking a picture."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 699
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Camera is not ready. Call start() before takePicture()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method takePictureInternal(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 9

    const-string v0, "quality"

    const-string v1, "orientation"

    .line 749
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 752
    :try_start_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v3, "CAMERA_1::"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    .line 754
    invoke-virtual {p0, v1}, Lcom/google/android/cameraview/Camera1;->orientationEnumToRotation(I)I

    move-result v1

    .line 755
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 757
    :try_start_2
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "setParameters rotation failed"

    .line 759
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/google/android/cameraview/Camera1;->orientationEnumToRotation(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->fallbackToSoftwareRotation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 767
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 769
    :try_start_4
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_5
    const-string v5, "setParameters 0 rotation failed"

    .line 771
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    move v1, v4

    .line 779
    :goto_1
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 780
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    double-to-int v0, v5

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 782
    :try_start_6
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    const-string v2, "setParameters quality failed"

    .line 784
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/google/android/cameraview/Camera1$8;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/cameraview/Camera1$8;-><init>(Lcom/google/android/cameraview/Camera1;Lcom/facebook/react/bridge/ReadableMap;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 839
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 840
    throw p1

    .line 843
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Camera capture failed. Camera is already capturing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
