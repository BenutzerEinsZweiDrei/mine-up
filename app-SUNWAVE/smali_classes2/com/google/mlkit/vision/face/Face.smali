.class public Lcom/google/mlkit/vision/face/Face;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# instance fields
.field private final zza:Landroid/graphics/Rect;

.field private zzb:I

.field private final zzc:F

.field private final zzd:F

.field private final zze:F

.field private final zzf:F

.field private final zzg:F

.field private final zzh:F

.field private final zzi:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/mlkit/vision/face/FaceLandmark;",
            ">;"
        }
    .end annotation
.end field

.field private final zzj:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/mlkit/vision/face/FaceContour;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzf;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    .line 1
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/face/Face;->zzi:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/face/Face;->zzj:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Rect;

    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzc:F

    iget v2, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zze:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzd:F

    iget v5, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzf:F

    div-float/2addr v5, v3

    sub-float v3, v1, v2

    float-to-int v3, v3

    sub-float v6, v4, v5

    float-to-int v6, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-float/2addr v4, v5

    float-to-int v2, v4

    invoke-direct {v0, v3, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/mlkit/vision/face/Face;->zza:Landroid/graphics/Rect;

    .line 4
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzb:I

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zzb:I

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzj:[Lcom/google/android/gms/internal/mlkit_vision_face/zzn;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 6
    iget v5, v4, Lcom/google/android/gms/internal/mlkit_vision_face/zzn;->zzd:I

    invoke-static {v5}, Lcom/google/mlkit/vision/face/Face;->zze(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/mlkit/vision/face/Face;->zzi:Landroid/util/SparseArray;

    .line 7
    iget v6, v4, Lcom/google/android/gms/internal/mlkit_vision_face/zzn;->zzd:I

    new-instance v7, Lcom/google/mlkit/vision/face/FaceLandmark;

    new-instance v8, Landroid/graphics/PointF;

    iget v9, v4, Lcom/google/android/gms/internal/mlkit_vision_face/zzn;->zzb:F

    iget v4, v4, Lcom/google/android/gms/internal/mlkit_vision_face/zzn;->zzc:F

    invoke-direct {v8, v9, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v7, v6, v8}, Lcom/google/mlkit/vision/face/FaceLandmark;-><init>(ILandroid/graphics/PointF;)V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzn:[Lcom/google/android/gms/internal/mlkit_vision_face/zzd;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 9
    iget v4, v3, Lcom/google/android/gms/internal/mlkit_vision_face/zzd;->zzb:I

    invoke-static {v4}, Lcom/google/mlkit/vision/face/Face;->zzd(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/mlkit/vision/face/Face;->zzj:Landroid/util/SparseArray;

    new-instance v6, Lcom/google/mlkit/vision/face/FaceContour;

    .line 10
    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_vision_face/zzd;->zza:[Landroid/graphics/PointF;

    .line 13
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    array-length v7, v3

    int-to-long v8, v7

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    div-int/lit8 v7, v7, 0xa

    int-to-long v10, v7

    add-long/2addr v8, v10

    const-wide/32 v10, 0x7fffffff

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    const v7, 0x7fffffff

    goto :goto_2

    :cond_2
    long-to-int v7, v8

    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-static {v8, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 10
    invoke-direct {v6, v4, v8}, Lcom/google/mlkit/vision/face/FaceContour;-><init>(ILjava/util/List;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_4
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzi:F

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zzf:F

    .line 15
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzg:F

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zzg:F

    .line 16
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzh:F

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zzh:F

    .line 17
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzm:F

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zze:F

    .line 18
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzk:F

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zzd:F

    .line 19
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzf;->zzl:F

    iput p1, p0, Lcom/google/mlkit/vision/face/Face;->zzc:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/face/Face;->zzi:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    .line 21
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/face/Face;->zzj:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;->zzh()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/face/Face;->zza:Landroid/graphics/Rect;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;->zzg()I

    move-result v0

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zzb:I

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;->zzj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzma;

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzma;->zza()I

    move-result v2

    invoke-static {v2}, Lcom/google/mlkit/vision/face/Face;->zze(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/mlkit/vision/face/Face;->zzi:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzma;->zza()I

    move-result v3

    new-instance v4, Lcom/google/mlkit/vision/face/FaceLandmark;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzma;->zza()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzma;->zzb()Landroid/graphics/PointF;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/google/mlkit/vision/face/FaceLandmark;-><init>(ILandroid/graphics/PointF;)V

    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;->zzi()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzlq;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlq;->zza()I

    move-result v2

    invoke-static {v2}, Lcom/google/mlkit/vision/face/Face;->zzd(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/mlkit/vision/face/Face;->zzj:Landroid/util/SparseArray;

    new-instance v4, Lcom/google/mlkit/vision/face/FaceContour;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlq;->zzb()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lcom/google/mlkit/vision/face/FaceContour;-><init>(ILjava/util/List;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;->zzf()F

    move-result v0

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zzf:F

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;->zzb()F

    move-result v0

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zzg:F

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;->zzd()F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zzh:F

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;->zze()F

    move-result v0

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zze:F

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;->zza()F

    move-result v0

    iput v0, p0, Lcom/google/mlkit/vision/face/Face;->zzd:F

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;->zzc()F

    move-result p1

    iput p1, p0, Lcom/google/mlkit/vision/face/Face;->zzc:F

    return-void
.end method

.method private static zzd(I)Z
    .locals 1

    const/16 v0, 0xf

    if-gt p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zze(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getAllContours()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/FaceContour;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/mlkit/vision/face/Face;->zzj:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/google/mlkit/vision/face/Face;->zzj:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/vision/face/FaceContour;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllLandmarks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/FaceLandmark;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/mlkit/vision/face/Face;->zzi:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/google/mlkit/vision/face/Face;->zzi:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/vision/face/FaceLandmark;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/face/Face;->zza:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContour(I)Lcom/google/mlkit/vision/face/FaceContour;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/face/Face;->zzj:Landroid/util/SparseArray;

    .line 1
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/face/FaceContour;

    return-object p1
.end method

.method public getHeadEulerAngleX()F
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/face/Face;->zzf:F

    return v0
.end method

.method public getHeadEulerAngleY()F
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/face/Face;->zzg:F

    return v0
.end method

.method public getHeadEulerAngleZ()F
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/face/Face;->zzh:F

    return v0
.end method

.method public getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/face/Face;->zzi:Landroid/util/SparseArray;

    .line 1
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/face/FaceLandmark;

    return-object p1
.end method

.method public getLeftEyeOpenProbability()Ljava/lang/Float;
    .locals 2

    iget v0, p0, Lcom/google/mlkit/vision/face/Face;->zze:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/mlkit/vision/face/Face;->zzd:F

    .line 1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightEyeOpenProbability()Ljava/lang/Float;
    .locals 2

    iget v0, p0, Lcom/google/mlkit/vision/face/Face;->zzc:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmilingProbability()Ljava/lang/Float;
    .locals 2

    iget v0, p0, Lcom/google/mlkit/vision/face/Face;->zze:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/Integer;
    .locals 2

    iget v0, p0, Lcom/google/mlkit/vision/face/Face;->zzb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "Face"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/vision/face/Face;->zza:Landroid/graphics/Rect;

    const-string v2, "boundingBox"

    .line 1
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    iget v1, p0, Lcom/google/mlkit/vision/face/Face;->zzb:I

    const-string v2, "trackingId"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    iget v1, p0, Lcom/google/mlkit/vision/face/Face;->zzc:F

    const-string v2, "rightEyeOpenProbability"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    iget v1, p0, Lcom/google/mlkit/vision/face/Face;->zzd:F

    const-string v2, "leftEyeOpenProbability"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    iget v1, p0, Lcom/google/mlkit/vision/face/Face;->zze:F

    const-string v2, "smileProbability"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    iget v1, p0, Lcom/google/mlkit/vision/face/Face;->zzf:F

    const-string v2, "eulerX"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    iget v1, p0, Lcom/google/mlkit/vision/face/Face;->zzg:F

    const-string v2, "eulerY"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    iget v1, p0, Lcom/google/mlkit/vision/face/Face;->zzh:F

    const-string v2, "eulerZ"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    const-string v1, "Landmarks"

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xb

    if-gt v2, v3, :cond_1

    invoke-static {v2}, Lcom/google/mlkit/vision/face/Face;->zze(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    .line 9
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "landmark_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "landmarks"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    const-string v1, "Contours"

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    move-result-object v1

    const/4 v2, 0x1

    :goto_1
    const/16 v3, 0xf

    if-gt v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x13

    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Contour_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/google/mlkit/vision/face/Face;->getContour(I)Lcom/google/mlkit/vision/face/FaceContour;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contours"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/mlkit/vision/face/FaceContour;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/face/Face;->zzj:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final zzb(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/mlkit/vision/face/FaceContour;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/face/Face;->zzj:Landroid/util/SparseArray;

    .line 1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/mlkit/vision/face/Face;->zzj:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/vision/face/FaceContour;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzc(I)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/mlkit/vision/face/Face;->zzb:I

    return-void
.end method
