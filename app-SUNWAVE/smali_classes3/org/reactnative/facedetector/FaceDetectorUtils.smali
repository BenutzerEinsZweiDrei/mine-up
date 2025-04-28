.class public Lorg/reactnative/facedetector/FaceDetectorUtils;
.super Ljava/lang/Object;
.source "FaceDetectorUtils.java"


# static fields
.field private static final landmarkNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "bottomMouthPosition"

    const-string v1, "leftCheekPosition"

    const-string v2, "leftEarPosition"

    const-string v3, "leftEarTipPosition"

    const-string v4, "leftEyePosition"

    const-string v5, "leftMouthPosition"

    const-string v6, "noseBasePosition"

    const-string v7, "rightCheekPosition"

    const-string v8, "rightEarPosition"

    const-string v9, "rightEarTipPosition"

    const-string v10, "rightEyePosition"

    const-string v11, "rightMouthPosition"

    .line 15
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/reactnative/facedetector/FaceDetectorUtils;->landmarkNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeAnglesDirection(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    const-string v0, "rollAngle"

    .line 104
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/WritableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    neg-double v1, v1

    const-wide v3, 0x4076800000000000L    # 360.0

    add-double/2addr v1, v3

    rem-double/2addr v1, v3

    invoke-interface {p0, v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v0, "yawAngle"

    .line 105
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/WritableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    neg-double v1, v1

    add-double/2addr v1, v3

    rem-double/2addr v1, v3

    invoke-interface {p0, v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public static mapFromPoint(Landroid/graphics/PointF;DDIIII)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 110
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 111
    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 112
    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 113
    iget v3, p0, Landroid/graphics/PointF;->x:F

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    cmpg-float v3, v3, p5

    if-gez v3, :cond_0

    .line 114
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p5

    div-int/lit8 p7, p7, 0x2

    int-to-float p7, p7

    add-float/2addr p5, p7

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    goto :goto_0

    .line 115
    :cond_0
    iget v3, p0, Landroid/graphics/PointF;->x:F

    cmpl-float p5, v3, p5

    if-lez p5, :cond_1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p5

    div-int/lit8 p7, p7, 0x2

    int-to-float p7, p7

    sub-float/2addr p5, p7

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 119
    :cond_1
    :goto_0
    iget p5, p0, Landroid/graphics/PointF;->y:F

    div-int/lit8 p6, p6, 0x2

    int-to-float p6, p6

    cmpg-float p5, p5, p6

    if-gez p5, :cond_2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p5

    div-int/lit8 p8, p8, 0x2

    int-to-float p6, p8

    add-float/2addr p5, p6

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    goto :goto_1

    .line 121
    :cond_2
    iget p5, p0, Landroid/graphics/PointF;->y:F

    cmpl-float p5, p5, p6

    if-lez p5, :cond_3

    .line 122
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p5

    div-int/lit8 p8, p8, 0x2

    int-to-float p6, p8

    sub-float/2addr p5, p6

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    :cond_3
    :goto_1
    iget p5, p0, Landroid/graphics/PointF;->x:F

    float-to-double p5, p5

    mul-double/2addr p5, p1

    const-string p1, "x"

    invoke-interface {v0, p1, p5, p6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 125
    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-double p0, p0

    mul-double/2addr p0, p3

    const-string p2, "y"

    invoke-interface {v0, p2, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static positionMirroredHorizontally(Lcom/facebook/react/bridge/ReadableMap;ID)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 137
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 138
    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "x"

    .line 139
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3, p1, p2, p3}, Lorg/reactnative/facedetector/FaceDetectorUtils;->valueMirroredHorizontally(DID)D

    move-result-wide p0

    invoke-interface {v0, v1, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static positionTranslatedHorizontally(Lcom/facebook/react/bridge/ReadableMap;D)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 130
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 131
    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "x"

    .line 132
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static rotateFaceX(Lcom/facebook/react/bridge/WritableMap;ID)Lcom/facebook/react/bridge/WritableMap;
    .locals 7

    const-string v0, "bounds"

    .line 78
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/WritableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "origin"

    .line 80
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 81
    invoke-static {v3, p1, p2, p3}, Lorg/reactnative/facedetector/FaceDetectorUtils;->positionMirroredHorizontally(Lcom/facebook/react/bridge/ReadableMap;ID)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string v4, "size"

    .line 83
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    const-string v5, "width"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    neg-double v4, v4

    .line 84
    invoke-static {v3, v4, v5}, Lorg/reactnative/facedetector/FaceDetectorUtils;->positionTranslatedHorizontally(Lcom/facebook/react/bridge/ReadableMap;D)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 86
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 87
    invoke-interface {v4, v1}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 88
    invoke-interface {v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 90
    sget-object v1, Lorg/reactnative/facedetector/FaceDetectorUtils;->landmarkNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 91
    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/WritableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/WritableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 93
    invoke-static {v6, p1, p2, p3}, Lorg/reactnative/facedetector/FaceDetectorUtils;->positionMirroredHorizontally(Lcom/facebook/react/bridge/ReadableMap;ID)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    .line 94
    invoke-interface {p0, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_2
    invoke-interface {p0, v0, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object p0
.end method

.method public static serializeFace(Lcom/google/mlkit/vision/face/Face;)Lcom/facebook/react/bridge/WritableMap;
    .locals 9

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 22
    invoke-static/range {v0 .. v8}, Lorg/reactnative/facedetector/FaceDetectorUtils;->serializeFace(Lcom/google/mlkit/vision/face/Face;DDIIII)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method public static serializeFace(Lcom/google/mlkit/vision/face/Face;DDIIII)Lcom/facebook/react/bridge/WritableMap;
    .locals 12

    .line 26
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v9

    .line 28
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getTrackingId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "faceID"

    invoke-interface {v9, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 29
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleZ()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "rollAngle"

    invoke-interface {v9, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 30
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleY()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "yawAngle"

    invoke-interface {v9, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 32
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getSmilingProbability()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getSmilingProbability()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    const-string v0, "smilingProbability"

    invoke-interface {v9, v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getLeftEyeOpenProbability()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getLeftEyeOpenProbability()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    const-string v0, "leftEyeOpenProbability"

    invoke-interface {v9, v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getRightEyeOpenProbability()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getRightEyeOpenProbability()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "rightEyeOpenProbability"

    invoke-interface {v9, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getAllLandmarks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/face/FaceLandmark;

    .line 43
    sget-object v1, Lorg/reactnative/facedetector/FaceDetectorUtils;->landmarkNames:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getLandmarkType()I

    move-result v2

    aget-object v11, v1, v2

    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lorg/reactnative/facedetector/FaceDetectorUtils;->mapFromPoint(Landroid/graphics/PointF;DDIIII)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {v9, v11, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 46
    :cond_3
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v1

    .line 48
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 49
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 50
    div-int/lit8 v4, p5, 0x2

    if-ge v2, v4, :cond_4

    .line 51
    div-int/lit8 v4, p7, 0x2

    add-int/2addr v2, v4

    goto :goto_1

    :cond_4
    if-le v2, v4, :cond_5

    .line 53
    div-int/lit8 v4, p7, 0x2

    sub-int/2addr v2, v4

    .line 56
    :cond_5
    :goto_1
    div-int/lit8 v4, p6, 0x2

    if-ge v3, v4, :cond_6

    .line 57
    div-int/lit8 v4, p8, 0x2

    add-int/2addr v3, v4

    goto :goto_2

    :cond_6
    if-le v3, v4, :cond_7

    .line 59
    div-int/lit8 v4, p8, 0x2

    sub-int/2addr v3, v4

    :cond_7
    :goto_2
    int-to-double v4, v2

    mul-double/2addr v4, p1

    const-string v2, "x"

    .line 61
    invoke-interface {v0, v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-double v2, v3

    mul-double/2addr v2, p3

    const-string v4, "y"

    .line 62
    invoke-interface {v0, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 64
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 65
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, p1

    const-string v5, "width"

    invoke-interface {v2, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v3, v1

    mul-double/2addr v3, p3

    const-string v1, "height"

    invoke-interface {v2, v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 68
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v3, "origin"

    .line 69
    invoke-interface {v1, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v0, "size"

    .line 70
    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v0, "bounds"

    .line 72
    invoke-interface {v9, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v9
.end method

.method public static valueMirroredHorizontally(DID)D
    .locals 2

    div-double/2addr p0, p3

    int-to-double v0, p2

    sub-double/2addr v0, p0

    mul-double/2addr v0, p3

    return-wide v0
.end method
