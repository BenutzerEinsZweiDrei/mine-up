.class Lcom/google/android/cameraview/Camera2;
.super Lcom/google/android/cameraview/CameraViewImpl;
.source "Camera2.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;
    }
.end annotation


# static fields
.field private static final FOCUS_AREA_SIZE_DEFAULT:I = 0x12c

.field private static final FOCUS_METERING_AREA_WEIGHT_DEFAULT:I = 0x3e8

.field private static final INTERNAL_FACINGS:Landroid/util/SparseIntArray;

.field private static final MAX_PREVIEW_HEIGHT:I = 0x438

.field private static final MAX_PREVIEW_WIDTH:I = 0x780

.field private static final TAG:Ljava/lang/String; = "Camera2"


# instance fields
.field private _mCameraId:Ljava/lang/String;

.field private mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

.field private mAutoFocus:Z

.field mAvailableCameras:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCamera:Landroid/hardware/camera2/CameraDevice;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mCameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraId:Ljava/lang/String;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraOrientation:I

.field mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

.field mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mDeviceOrientation:I

.field private mDisplayOrientation:I

.field private mExposure:F

.field private mFacing:I

.field private mFlash:I

.field private mFocusDepth:F

.field private mImageFormat:I

.field private mInitialCropRegion:Landroid/graphics/Rect;

.field private mInitialRatio:Lcom/google/android/cameraview/AspectRatio;

.field private mIsRecording:Z

.field private mIsScanning:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPictureSize:Lcom/google/android/cameraview/Size;

.field private final mPictureSizes:Lcom/google/android/cameraview/SizeMap;

.field private mPlaySoundOnCapture:Ljava/lang/Boolean;

.field private mPlaySoundOnRecord:Ljava/lang/Boolean;

.field mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mScanImageReader:Landroid/media/ImageReader;

.field private final mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mStillImageReader:Landroid/media/ImageReader;

.field private mVideoPath:Ljava/lang/String;

.field private mWhiteBalance:I

.field private mZoom:F

.field sound:Landroid/media/MediaActionSound;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 278
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/cameraview/CameraViewImpl;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/os/Handler;)V

    .line 95
    new-instance p1, Lcom/google/android/cameraview/Camera2$1;

    invoke-direct {p1, p0}, Lcom/google/android/cameraview/Camera2$1;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 123
    new-instance p1, Lcom/google/android/cameraview/Camera2$2;

    invoke-direct {p1, p0}, Lcom/google/android/cameraview/Camera2$2;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 162
    new-instance p1, Lcom/google/android/cameraview/Camera2$3;

    invoke-direct {p1, p0}, Lcom/google/android/cameraview/Camera2$3;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    .line 185
    new-instance p1, Lcom/google/android/cameraview/Camera2$4;

    invoke-direct {p1, p0}, Lcom/google/android/cameraview/Camera2$4;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    const-string p1, ""

    .line 211
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    .line 217
    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->sound:Landroid/media/MediaActionSound;

    .line 223
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mAvailableCameras:Ljava/util/Set;

    .line 237
    new-instance p1, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {p1}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 239
    new-instance p1, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {p1}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    .line 245
    sget-object p1, Lcom/google/android/cameraview/Constants;->DEFAULT_ASPECT_RATIO:Lcom/google/android/cameraview/AspectRatio;

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    const/4 p1, 0x0

    .line 269
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    .line 271
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnRecord:Ljava/lang/Boolean;

    const-string p1, "camera"

    .line 279
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 280
    new-instance p2, Lcom/google/android/cameraview/Camera2$5;

    invoke-direct {p2, p0}, Lcom/google/android/cameraview/Camera2$5;-><init>(Lcom/google/android/cameraview/Camera2;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 293
    iget-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    goto :goto_0

    :cond_0
    const/16 p1, 0x100

    :goto_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    .line 294
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    new-instance p2, Lcom/google/android/cameraview/Camera2$6;

    invoke-direct {p2, p0}, Lcom/google/android/cameraview/Camera2$6;-><init>(Lcom/google/android/cameraview/Camera2;)V

    invoke-virtual {p1, p2}, Lcom/google/android/cameraview/PreviewImpl;->setCallback(Lcom/google/android/cameraview/PreviewImpl$Callback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/cameraview/Camera2;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mInitialCropRegion:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/cameraview/Camera2;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/google/android/cameraview/Camera2;->mDisplayOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/cameraview/Camera2;)Ljava/lang/Boolean;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    return-object p0
.end method

.method private calculateFocusArea(FF)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 7

    .line 1276
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1279
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    .line 1280
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1283
    new-instance v6, Landroid/hardware/camera2/params/MeteringRectangle;

    add-int/lit16 p1, p1, -0x96

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit16 p2, p2, -0x96

    .line 1284
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x12c

    const/16 v4, 0x12c

    const/16 v5, 0x3e7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    return-object v6
.end method

.method private chooseCameraIdByFacing()Z
    .locals 11

    .line 801
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    const-string v1, "Unexpected state: LENS_FACING null"

    const-string v2, "Camera2"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 852
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 855
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 857
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 860
    :cond_1
    sget-object v1, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_3

    .line 861
    sget-object v6, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 862
    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 867
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string v1, "Failed to get camera characteristics"

    .line 871
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    .line 803
    :cond_4
    :goto_2
    :try_start_1
    sget-object v0, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 804
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 805
    array-length v6, v5

    if-nez v6, :cond_5

    const-string v0, "No cameras available."

    .line 806
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 809
    :cond_5
    array-length v6, v5

    move v7, v4

    :goto_3
    if-ge v7, v6, :cond_8

    aget-object v8, v5, v7

    .line 810
    iget-object v9, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v9, v8}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    .line 812
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_6

    .line 814
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 817
    :cond_6
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v0, :cond_7

    .line 818
    iput-object v8, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    .line 819
    iput-object v9, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return v3

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 824
    :cond_8
    aget-object v0, v5, v4

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    .line 825
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 827
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_9

    .line 829
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 832
    :cond_9
    sget-object v1, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    move v5, v4

    :goto_5
    if-ge v5, v1, :cond_b

    .line 833
    sget-object v6, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_a

    .line 834
    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    return v3

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 840
    :cond_b
    iput v4, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    move-exception v0

    const-string v1, "Failed to get a list of camera devices"

    .line 843
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method private chooseOptimalSize()Lcom/google/android/cameraview/Size;
    .locals 7

    .line 1034
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->getWidth()I

    move-result v0

    .line 1035
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1043
    :cond_0
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v2, v3}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v2

    .line 1046
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/cameraview/Size;

    .line 1047
    invoke-virtual {v4}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v5

    if-lt v5, v0, :cond_1

    invoke-virtual {v4}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v5

    if-lt v5, v1, :cond_1

    return-object v4

    .line 1052
    :cond_2
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/Size;

    return-object v0
.end method

.method private collectCameraInfo()V
    .locals 8

    .line 883
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_6

    .line 888
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 889
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getOutputClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 890
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 891
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v6, 0x780

    if-gt v5, v6, :cond_0

    const/16 v6, 0x438

    if-gt v4, v6, :cond_0

    .line 893
    iget-object v6, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v7, Lcom/google/android/cameraview/Size;

    invoke-direct {v7, v5, v4}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 896
    :cond_1
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 897
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/cameraview/Camera2;->collectPictureSizes(Lcom/google/android/cameraview/SizeMap;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 898
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    if-nez v0, :cond_2

    .line 899
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/Size;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    .line 901
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/AspectRatio;

    .line 902
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v2}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 903
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v2, v1}, Lcom/google/android/cameraview/SizeMap;->remove(Lcom/google/android/cameraview/AspectRatio;)V

    goto :goto_1

    .line 907
    :cond_4
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 908
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/AspectRatio;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 911
    :cond_5
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraOrientation:I

    return-void

    .line 886
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get configuration map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOutputRotation()I
    .locals 3

    .line 1365
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1368
    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    if-nez v1, :cond_0

    .line 1369
    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mDeviceOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    return v0

    .line 1371
    :cond_0
    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mDeviceOrientation:I

    invoke-direct {p0, v1}, Lcom/google/android/cameraview/Camera2;->isLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1372
    :goto_0
    iget v2, p0, Lcom/google/android/cameraview/Camera2;->mDeviceOrientation:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    return v0
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

.method public static isLegacy(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "Camera2"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "camera"

    .line 775
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 776
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    .line 777
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 778
    invoke-virtual {p0, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 779
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 782
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "Camera2 can only run in legacy mode and should not be used."

    .line 783
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    return v4

    :catch_0
    move-exception p0

    const-string v2, "Failed to check camera legacy status, returning true."

    .line 790
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private isMeteringAreaAFSupported()Z
    .locals 2

    .line 1272
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private lockFocus()V
    .locals 4

    .line 1199
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 1200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1199
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1202
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v0, v2}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setState(I)V

    .line 1203
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Failed to lock focus."

    .line 1205
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private pauseMediaRecorder()V
    .locals 2

    .line 1461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    :cond_0
    return-void
.end method

.method private prepareScanImageReader()V
    .locals 4

    .line 930
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/Size;

    .line 934
    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v0

    const/16 v2, 0x23

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    .line 936
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private prepareStillImageReader()V
    .locals 4

    .line 921
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x100

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    .line 926
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private resumeMediaRecorder()V
    .locals 2

    .line 1467
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    :cond_0
    return-void
.end method

.method private setCamcorderProfile(Landroid/media/CamcorderProfile;Z)V
    .locals 3

    .line 1419
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1420
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1421
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1422
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1423
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    if-eqz p2, :cond_0

    .line 1425
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1426
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1427
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1428
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget p1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_0
    return-void
.end method

.method private setUpMediaRecorder(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;)V
    .locals 2

    .line 1388
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    .line 1390
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1395
    :cond_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1396
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    .line 1399
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v1, p5, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {p1, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1400
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p5

    .line 1402
    :goto_0
    iget p5, p5, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput p5, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1403
    invoke-direct {p0, p1, p4}, Lcom/google/android/cameraview/Camera2;->setCamcorderProfile(Landroid/media/CamcorderProfile;Z)V

    .line 1405
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->getOutputRotation()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 1408
    iget-object p4, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p4, p2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :cond_2
    if-eq p3, p1, :cond_3

    .line 1411
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 1414
    :cond_3
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1415
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    return-void
.end method

.method private startOpeningCamera()V
    .locals 4

    .line 945
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 947
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopMediaRecorder()V
    .locals 4

    const/4 v0, 0x0

    .line 1433
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    .line 1435
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1436
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1437
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1439
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1441
    :goto_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 1442
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    const/4 v1, 0x0

    .line 1443
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1445
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v2}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingEnd()V

    .line 1446
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnRecord:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1447
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->sound:Landroid/media/MediaActionSound;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaActionSound;->play(I)V

    .line 1450
    :cond_0
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1456
    :cond_1
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    .line 1457
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    return-void

    .line 1452
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v2, v1, v0, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method captureStillPicture()V
    .locals 6

    const-string v0, "quality"

    .line 1297
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 1299
    iget-boolean v3, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x100

    .line 1300
    iput v3, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    .line 1301
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 1303
    :cond_0
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1304
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v4, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1305
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1304
    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1306
    iget v3, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/4 v5, 0x3

    if-eq v3, v4, :cond_4

    if-eq v3, v2, :cond_3

    if-eq v3, v5, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 1328
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1328
    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1324
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1325
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1324
    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1318
    :cond_3
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1319
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1318
    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1320
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1320
    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1314
    :cond_4
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1315
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1314
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1308
    :cond_5
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1309
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1308
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1310
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 1311
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1310
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1332
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->getOutputRotation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1335
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v2}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->getOptions()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1336
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v2}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->getOptions()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 1337
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1340
    :cond_6
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1342
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1343
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/cameraview/Camera2$9;

    invoke-direct {v2, p0}, Lcom/google/android/cameraview/Camera2$9;-><init>(Lcom/google/android/cameraview/Camera2;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Cannot capture a still picture."

    .line 1359
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method protected collectPictureSizes(Lcom/google/android/cameraview/SizeMap;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 5

    .line 915
    iget p1, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 916
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v3, Lcom/google/android/cameraview/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {v3, v4, v1}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getAspectRatio()Lcom/google/android/cameraview/AspectRatio;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    return-object v0
.end method

.method getAutoFocus()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

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

    .line 442
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method getCameraId()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method getCameraIds()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    .line 420
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 423
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 424
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 426
    iget-object v7, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 427
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const-string v8, "id"

    .line 429
    invoke-virtual {v6, v8, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "type"

    .line 430
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 436
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get a list of camera ids"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getCameraOrientation()I
    .locals 1

    .line 752
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraOrientation:I

    return v0
.end method

.method getExposureCompensation()F
    .locals 1

    .line 554
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mExposure:F

    return v0
.end method

.method getFacing()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    return v0
.end method

.method getFlash()I
    .locals 1

    .line 549
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    return v0
.end method

.method getFocusDepth()F
    .locals 1

    .line 658
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFocusDepth:F

    return v0
.end method

.method getPictureSize()Lcom/google/android/cameraview/Size;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    return-object v0
.end method

.method public getPlaySoundOnCapture()Z
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getPlaySoundOnRecord()Z
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnRecord:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/google/android/cameraview/Size;
    .locals 3

    .line 1024
    new-instance v0, Lcom/google/android/cameraview/Size;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v2}, Lcom/google/android/cameraview/PreviewImpl;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/cameraview/Size;-><init>(II)V

    return-object v0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    return-object v0

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method getScanning()Z
    .locals 1

    .line 747
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    return v0
.end method

.method getSupportedAspectRatios()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewFpsRange()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation

    const-string v0, "CAMERA_2:: "

    const-string v1, "getSupportedPreviewFpsRange is not currently supported for Camera2"

    .line 383
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getWhiteBalance()I
    .locals 1

    .line 704
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mWhiteBalance:I

    return v0
.end method

.method getZoom()F
    .locals 1

    .line 681
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mZoom:F

    return v0
.end method

.method isCameraOpened()Z
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

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

    .line 1512
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->stopRecording()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x320

    if-eq p2, p1, :cond_0

    const/16 p1, 0x321

    if-ne p2, p1, :cond_1

    .line 1504
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->stopRecording()V

    :cond_1
    return-void
.end method

.method public pausePreview()V
    .locals 1

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 988
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method pauseRecording()V
    .locals 0

    .line 630
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->pauseMediaRecorder()V

    return-void
.end method

.method record(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;II)Z
    .locals 0

    .line 576
    iget-boolean p6, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    const/4 p7, 0x0

    if-nez p6, :cond_2

    .line 577
    invoke-direct/range {p0 .. p5}, Lcom/google/android/cameraview/Camera2;->setUpMediaRecorder(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;)V

    .line 579
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 581
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 582
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 583
    iput-object p2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->chooseOptimalSize()Lcom/google/android/cameraview/Size;

    move-result-object p1

    .line 587
    iget-object p3, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result p1

    invoke-virtual {p3, p4, p1}, Lcom/google/android/cameraview/PreviewImpl;->setBufferSize(II)V

    .line 588
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object p1

    .line 589
    iget-object p3, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object p3

    .line 591
    iget-object p4, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 p5, 0x3

    invoke-virtual {p4, p5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 592
    invoke-virtual {p4, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 593
    iget-object p4, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p4, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 594
    iget-object p4, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 p5, 0x2

    new-array p6, p5, [Landroid/view/Surface;

    aput-object p1, p6, p7

    const/4 p1, 0x1

    aput-object p3, p6, p1

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iget-object p6, p0, Lcom/google/android/cameraview/Camera2;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {p4, p3, p6, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 596
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->start()V

    .line 597
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    .line 601
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget-object p3, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    invoke-interface {p2, p3, p7, p7}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingStart(Ljava/lang/String;II)V

    .line 603
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnRecord:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 604
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->sound:Landroid/media/MediaActionSound;

    invoke-virtual {p2, p5}, Landroid/media/MediaActionSound;->play(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 608
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return p7
.end method

.method public resumePreview()V
    .locals 0

    .line 980
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->unlockFocus()V

    return-void
.end method

.method resumeRecording()V
    .locals 0

    .line 635
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->resumeMediaRecorder()V

    return-void
.end method

.method setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mInitialRatio:Lcom/google/android/cameraview/AspectRatio;

    return v0

    :cond_0
    if-eqz p1, :cond_3

    .line 482
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {p1, v1}, Lcom/google/android/cameraview/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 483
    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 488
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareStillImageReader()V

    .line 489
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareScanImageReader()V

    .line 490
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_2

    .line 491
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 p1, 0x0

    .line 492
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 493
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method setAutoFocus(Z)V
    .locals 3

    .line 505
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 508
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    .line 509
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateAutoFocus()V

    .line 511
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    iget-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    :cond_1
    :goto_0
    return-void
.end method

.method setCameraId(Ljava/lang/String;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/reactnative/camera/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/reactnative/camera/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->isCameraOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->stop()V

    .line 400
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->start()Z

    :cond_0
    return-void
.end method

.method setDeviceOrientation(I)V
    .locals 0

    .line 764
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mDeviceOrientation:I

    return-void
.end method

.method setDisplayOrientation(I)V
    .locals 1

    .line 757
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mDisplayOrientation:I

    .line 758
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mDisplayOrientation:I

    invoke-virtual {p1, v0}, Lcom/google/android/cameraview/PreviewImpl;->setDisplayOrientation(I)V

    return-void
.end method

.method setExposureCompensation(F)V
    .locals 1

    const-string p1, "CAMERA_2:: "

    const-string v0, "Adjusting exposure is not currently supported for Camera2"

    .line 559
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setFacing(I)V
    .locals 1

    .line 366
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    if-ne v0, p1, :cond_0

    return-void

    .line 369
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    .line 370
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->isCameraOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->stop()V

    .line 372
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->start()Z

    :cond_1
    return-void
.end method

.method setFlash(I)V
    .locals 4

    .line 529
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    if-ne v0, p1, :cond_0

    return-void

    .line 533
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    .line 534
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateFlash()V

    .line 536
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 541
    :catch_0
    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    :cond_1
    :goto_0
    return-void
.end method

.method setFocusArea(FF)V
    .locals 8

    const-string v0, "Failed to manual focus."

    const-string v1, "Camera2"

    .line 1216
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_0

    return-void

    .line 1219
    :cond_0
    new-instance v2, Lcom/google/android/cameraview/Camera2$8;

    invoke-direct {v2, p0}, Lcom/google/android/cameraview/Camera2$8;-><init>(Lcom/google/android/cameraview/Camera2;)V

    .line 1242
    :try_start_0
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1244
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1247
    :goto_0
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1248
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 1250
    :try_start_1
    iget-object v4, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v6, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    invoke-virtual {v4, v6, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 1252
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1255
    :goto_1
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->isMeteringAreaAFSupported()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 1256
    invoke-direct {p0, p1, p2}, Lcom/google/android/cameraview/Camera2;->calculateFocusArea(FF)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    .line 1257
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v7, v6, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object p1, v7, v5

    invoke-virtual {p2, v4, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1259
    :cond_1
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1260
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1261
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1262
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string p2, "FOCUS_TAG"

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1265
    :try_start_2
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1267
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public setFocusDepth(F)V
    .locals 4

    .line 640
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFocusDepth:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    .line 644
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mFocusDepth:F

    .line 645
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateFocusDepth()V

    .line 648
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mFocusDepth:F

    :cond_1
    :goto_0
    return-void
.end method

.method setPictureSize(Lcom/google/android/cameraview/Size;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 449
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 451
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_1
    if-nez p1, :cond_4

    .line 460
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    if-nez v0, :cond_2

    goto :goto_1

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    .line 465
    :cond_4
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    .line 467
    :goto_2
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareStillImageReader()V

    .line 468
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    return-void
.end method

.method setPlaySoundOnCapture(Z)V
    .locals 0

    .line 709
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    return-void
.end method

.method setPlaySoundOnRecord(Z)V
    .locals 0

    .line 719
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnRecord:Ljava/lang/Boolean;

    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1002
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1003
    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSurface:Landroid/view/Surface;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1005
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 1009
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1010
    new-instance v0, Lcom/google/android/cameraview/Camera2$7;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera2$7;-><init>(Lcom/google/android/cameraview/Camera2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setScanning(Z)V
    .locals 1

    .line 729
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 732
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-nez p1, :cond_1

    const/16 p1, 0x100

    .line 734
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x23

    .line 736
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    .line 738
    :goto_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_2

    .line 739
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 p1, 0x0

    .line 740
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 742
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 4

    .line 686
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mWhiteBalance:I

    if-ne v0, p1, :cond_0

    return-void

    .line 690
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mWhiteBalance:I

    .line 691
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    .line 692
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateWhiteBalance()V

    .line 694
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    :catch_0
    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mWhiteBalance:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setZoom(F)V
    .locals 4

    .line 663
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mZoom:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    .line 667
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mZoom:F

    .line 668
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    .line 669
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateZoom()V

    .line 671
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    :catch_0
    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mZoom:F

    :cond_1
    :goto_0
    return-void
.end method

.method start()Z
    .locals 1

    .line 309
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->chooseCameraIdByFacing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mInitialRatio:Lcom/google/android/cameraview/AspectRatio;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 311
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onMountError()V

    const/4 v0, 0x0

    return v0

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->collectCameraInfo()V

    .line 315
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mInitialRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/Camera2;->setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mInitialRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 317
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareStillImageReader()V

    .line 318
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareScanImageReader()V

    .line 319
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->startOpeningCamera()V

    const/4 v0, 0x1

    return v0
.end method

.method startCaptureSession()V
    .locals 5

    .line 957
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    goto :goto_0

    .line 960
    :cond_0
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->chooseOptimalSize()Lcom/google/android/cameraview/Size;

    move-result-object v0

    .line 961
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/cameraview/PreviewImpl;->setBufferSize(II)V

    .line 962
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    .line 964
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 965
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 967
    iget-boolean v1, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-eqz v1, :cond_1

    .line 968
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    aput-object v0, v3, v2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    .line 971
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v3, v0

    .line 970
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Failed to start capture session"

    .line 973
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 974
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onMountError()V

    :cond_2
    :goto_0
    return-void
.end method

.method stop()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 327
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 331
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 335
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 339
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 340
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_4

    .line 344
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 345
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 346
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 347
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 349
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    if-eqz v0, :cond_4

    .line 350
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingEnd()V

    .line 353
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    .line 354
    iput-boolean v2, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    :cond_4
    return-void
.end method

.method stopRecording()V
    .locals 1

    .line 617
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    if-eqz v0, :cond_1

    .line 618
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->stopMediaRecorder()V

    .line 620
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 622
    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    :cond_1
    return-void
.end method

.method takePicture(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setOptions(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 567
    iget-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    if-eqz p1, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->lockFocus()V

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->captureStillPicture()V

    :goto_0
    return-void
.end method

.method unlockFocus()V
    .locals 5

    .line 1477
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 1478
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1477
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1480
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1481
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateAutoFocus()V

    .line 1482
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateFlash()V

    .line 1483
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    .line 1484
    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    .line 1485
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    goto :goto_0

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 1488
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1487
    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1489
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v0, v1, v4, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1491
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v0, v2}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setState(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Failed to restart camera preview."

    .line 1494
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method updateAutoFocus()V
    .locals 5

    .line 1059
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    const/4 v1, 0x0

    .line 1074
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    .line 1063
    array-length v3, v0

    if-eqz v3, :cond_1

    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    aget v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 1070
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1069
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1065
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    .line 1066
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method updateFlash()V
    .locals 5

    .line 1082
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x3

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1108
    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1110
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1110
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1102
    :cond_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1102
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1104
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1104
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1096
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1097
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1096
    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1098
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1099
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1098
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1090
    :cond_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1091
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1090
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1092
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1093
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1092
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1084
    :cond_4
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1085
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1084
    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1086
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1087
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1086
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method updateFocusDepth()V
    .locals 3

    .line 1120
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    if-eqz v0, :cond_0

    return-void

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const-string v1, "Unexpected state: LENS_INFO_MINIMUM_FOCUS_DISTANCE null"

    .line 1125
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1127
    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mFocusDepth:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v1, v0

    .line 1128
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method updateWhiteBalance()V
    .locals 5

    .line 1167
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mWhiteBalance:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1181
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1177
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v2, 0x8

    .line 1186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1185
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1189
    :cond_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1189
    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1173
    :cond_4
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x6

    .line 1174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1173
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1169
    :cond_5
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1169
    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method updateZoom()V
    .locals 9

    .line 1135
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1136
    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mZoom:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    .line 1137
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 1139
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1140
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v5, v3

    div-float/2addr v5, v1

    float-to-int v5, v5

    int-to-float v6, v4

    div-float/2addr v6, v1

    float-to-int v6, v6

    sub-int/2addr v3, v5

    .line 1143
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v6

    .line 1144
    div-int/lit8 v4, v4, 0x2

    .line 1146
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v4

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    invoke-direct {v5, v6, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    cmpl-float v0, v1, v2

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mInitialCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
