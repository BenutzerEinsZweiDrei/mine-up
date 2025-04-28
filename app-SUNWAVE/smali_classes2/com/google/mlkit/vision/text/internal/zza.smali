.class final Lcom/google/mlkit/vision/text/internal/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# direct methods
.method static zza(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    move v2, v1

    move v3, v2

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 2
    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3
    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    iget v5, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5
    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method static zzb(Lcom/google/android/gms/internal/mlkit_vision_text/zzf;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_text/zzf;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zze:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 2
    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zze:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    new-instance v5, Landroid/graphics/Point;

    .line 3
    iget v6, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zza:I

    iget v7, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzb:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    const/4 v6, 0x0

    aput-object v5, v0, v6

    new-instance v5, Landroid/graphics/Point;

    .line 4
    iget v7, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zza:I

    iget v8, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzc:I

    int-to-double v8, v8

    int-to-double v10, v7

    mul-double v12, v8, v3

    add-double/2addr v10, v12

    double-to-int v7, v10

    iget v10, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzb:I

    int-to-double v10, v10

    mul-double/2addr v8, v1

    add-double/2addr v10, v8

    double-to-int v8, v10

    invoke-direct {v5, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    const/4 v7, 0x1

    aput-object v5, v0, v7

    new-instance v8, Landroid/graphics/Point;

    .line 5
    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v9, v5

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzd:I

    int-to-double v11, v5

    mul-double/2addr v11, v1

    sub-double/2addr v9, v11

    double-to-int v1, v9

    aget-object v2, v0, v7

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v9, v2

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzd:I

    int-to-double v11, p0

    mul-double/2addr v11, v3

    add-double/2addr v9, v11

    double-to-int p0, v9

    invoke-direct {v8, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    const/4 p0, 0x2

    aput-object v8, v0, p0

    new-instance v1, Landroid/graphics/Point;

    aget-object v2, v0, v6

    .line 6
    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, v0, p0

    iget v3, v3, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    aget-object v3, v0, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    aget-object p0, v0, p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    aget-object v4, v0, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, v4

    add-int/2addr v3, p0

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 p0, 0x3

    aput-object v1, v0, p0

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
