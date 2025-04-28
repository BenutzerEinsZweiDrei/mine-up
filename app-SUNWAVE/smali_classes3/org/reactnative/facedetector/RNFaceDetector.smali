.class public Lorg/reactnative/facedetector/RNFaceDetector;
.super Ljava/lang/Object;
.source "RNFaceDetector.java"


# static fields
.field public static ACCURATE_MODE:I = 0x2

.field public static ALL_CLASSIFICATIONS:I = 0x2

.field public static ALL_LANDMARKS:I = 0x2

.field public static FAST_MODE:I = 0x1

.field public static NO_CLASSIFICATIONS:I = 0x1

.field public static NO_LANDMARKS:I = 0x1


# instance fields
.field private mBuilder:Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

.field private mClassificationType:I

.field private mFaceDetector:Lcom/google/mlkit/vision/face/FaceDetector;

.field private mLandmarkType:I

.field private mMinFaceSize:F

.field private mMode:I

.field private mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/mlkit/vision/face/FaceDetector;

    .line 24
    iput-object p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 26
    sget p1, Lorg/reactnative/facedetector/RNFaceDetector;->NO_CLASSIFICATIONS:I

    iput p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mClassificationType:I

    .line 27
    sget p1, Lorg/reactnative/facedetector/RNFaceDetector;->NO_LANDMARKS:I

    iput p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mLandmarkType:I

    const p1, 0x3e19999a    # 0.15f

    .line 28
    iput p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMinFaceSize:F

    .line 29
    sget p1, Lorg/reactnative/facedetector/RNFaceDetector;->FAST_MODE:I

    iput p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMode:I

    .line 32
    new-instance p1, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    invoke-direct {p1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;-><init>()V

    iput-object p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 33
    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMinFaceSize:F

    invoke-virtual {p1, v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setMinFaceSize(F)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 34
    iget-object p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMode:I

    invoke-virtual {p1, v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setPerformanceMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 35
    iget-object p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mLandmarkType:I

    invoke-virtual {p1, v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setLandmarkMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 36
    iget-object p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mClassificationType:I

    invoke-virtual {p1, v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setClassificationMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    return-void
.end method

.method private createFaceDetector()V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->build()Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/vision/face/FaceDetection;->getClient(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/mlkit/vision/face/FaceDetector;

    move-result-object v0

    iput-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/mlkit/vision/face/FaceDetector;

    return-void
.end method

.method private releaseFaceDetector()V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/mlkit/vision/face/FaceDetector;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/google/mlkit/vision/face/FaceDetector;->close()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/mlkit/vision/face/FaceDetector;

    :cond_0
    return-void
.end method


# virtual methods
.method public detect(Lorg/reactnative/frame/RNFrame;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactnative/frame/RNFrame;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getDimensions()Lorg/reactnative/camera/utils/ImageDimensions;

    move-result-object v0

    iget-object v1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {v0, v1}, Lorg/reactnative/camera/utils/ImageDimensions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->releaseFaceDetector()V

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/mlkit/vision/face/FaceDetector;

    if-nez v0, :cond_1

    .line 58
    invoke-direct {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->createFaceDetector()V

    .line 59
    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getDimensions()Lorg/reactnative/camera/utils/ImageDimensions;

    move-result-object v0

    iput-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    .line 62
    :cond_1
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/mlkit/vision/face/FaceDetector;

    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getFrame()Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/face/FaceDetector;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public isOperational()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/mlkit/vision/face/FaceDetector;

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->createFaceDetector()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->releaseFaceDetector()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    return-void
.end method

.method public setClassificationType(I)V
    .locals 1

    .line 73
    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mClassificationType:I

    if-eq p1, v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->release()V

    .line 75
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setClassificationMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 76
    iput p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mClassificationType:I

    :cond_0
    return-void
.end method

.method public setLandmarkType(I)V
    .locals 1

    .line 81
    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mLandmarkType:I

    if-eq p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->release()V

    .line 83
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setLandmarkMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 84
    iput p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mLandmarkType:I

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 89
    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMode:I

    if-eq p1, v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->release()V

    .line 91
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setPerformanceMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 92
    iput p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMode:I

    :cond_0
    return-void
.end method

.method public setTracking(Z)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->release()V

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->enableTracking()Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    :cond_0
    return-void
.end method
