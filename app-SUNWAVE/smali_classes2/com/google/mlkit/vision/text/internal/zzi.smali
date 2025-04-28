.class final Lcom/google/mlkit/vision/text/internal/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzv;

.field private static final zzb:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\n"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzv;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text/zzv;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/text/internal/zzi;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzv;

    sget-object v0, Lcom/google/mlkit/vision/text/internal/zzh;->zza:Lcom/google/mlkit/vision/text/internal/zzh;

    sput-object v0, Lcom/google/mlkit/vision/text/internal/zzi;->zzb:Ljava/util/Comparator;

    return-void
.end method

.method static zza([Lcom/google/android/gms/internal/mlkit_vision_text/zzl;)Lcom/google/mlkit/vision/text/Text;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/SparseArray;

    .line 1
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 3
    iget v6, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzj:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_0

    new-instance v6, Landroid/util/SparseArray;

    .line 4
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 5
    iget v7, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzj:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 6
    :cond_0
    iget v7, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzk:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;->zzg()Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;

    move-result-object v0

    move v2, v3

    .line 8
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 9
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;->zzg()Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;

    move-result-object v5

    move v6, v3

    .line 10
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 11
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;->zzc()Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;

    move-result-object v4

    sget-object v5, Lcom/google/mlkit/vision/text/internal/zzd;->zza:Lcom/google/mlkit/vision/text/internal/zzd;

    .line 13
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbs;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text/zzu;)Ljava/util/List;

    move-result-object v11

    .line 14
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;

    iget-object v5, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    .line 15
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzci;

    move-result-object v4

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    move v8, v7

    move v9, v8

    move v7, v6

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;

    .line 16
    iget-object v10, v10, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    .line 17
    iget v12, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zza:I

    .line 18
    iget v13, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzb:I

    .line 19
    iget v15, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zze:F

    move-object/from16 v16, v4

    float-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 20
    iget v15, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zze:F

    float-to-double v14, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    move-object/from16 v17, v1

    move/from16 v18, v2

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    move-object/from16 v19, v0

    .line 21
    iget v0, v10, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zza:I

    move-object/from16 v20, v11

    iget v11, v10, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzb:I

    invoke-direct {v1, v0, v11}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    neg-int v11, v12

    neg-int v12, v13

    .line 22
    invoke-virtual {v1, v11, v12}, Landroid/graphics/Point;->offset(II)V

    aget-object v1, v2, v0

    .line 23
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v11, v1

    mul-double/2addr v11, v14

    aget-object v1, v2, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v0, v1

    mul-double/2addr v0, v3

    add-double/2addr v11, v0

    double-to-int v0, v11

    const/4 v1, 0x0

    aget-object v11, v2, v1

    .line 24
    iget v11, v11, Landroid/graphics/Point;->x:I

    neg-int v11, v11

    int-to-double v11, v11

    mul-double/2addr v11, v3

    aget-object v3, v2, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    mul-double/2addr v3, v14

    add-double/2addr v11, v3

    double-to-int v3, v11

    aget-object v4, v2, v1

    iput v0, v4, Landroid/graphics/Point;->x:I

    aget-object v4, v2, v1

    iput v3, v4, Landroid/graphics/Point;->y:I

    new-instance v1, Landroid/graphics/Point;

    .line 25
    iget v4, v10, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzc:I

    add-int/2addr v4, v0

    invoke-direct {v1, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x1

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Point;

    .line 26
    iget v4, v10, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzc:I

    add-int/2addr v4, v0

    iget v11, v10, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzd:I

    add-int/2addr v11, v3

    invoke-direct {v1, v4, v11}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x2

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Point;

    .line 27
    iget v4, v10, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzd:I

    add-int/2addr v3, v4

    invoke-direct {v1, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 28
    aget-object v1, v2, v0

    .line 29
    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 30
    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 31
    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 32
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v4, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v0, v19

    move-object/from16 v11, v20

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_4
    move-object/from16 v19, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v20, v11

    .line 33
    iget v0, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zza:I

    .line 34
    iget v1, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zzb:I

    .line 35
    iget v2, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zze:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 36
    iget v4, v5, Lcom/google/android/gms/internal/mlkit_vision_text/zzf;->zze:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const/4 v10, 0x4

    new-array v11, v10, [Landroid/graphics/Point;

    new-instance v10, Landroid/graphics/Point;

    .line 37
    invoke-direct {v10, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    const/4 v12, 0x0

    aput-object v10, v11, v12

    new-instance v10, Landroid/graphics/Point;

    .line 38
    invoke-direct {v10, v6, v9}, Landroid/graphics/Point;-><init>(II)V

    const/4 v9, 0x1

    aput-object v10, v11, v9

    new-instance v9, Landroid/graphics/Point;

    .line 39
    invoke-direct {v9, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    const/4 v6, 0x2

    aput-object v9, v11, v6

    new-instance v6, Landroid/graphics/Point;

    .line 40
    invoke-direct {v6, v8, v7}, Landroid/graphics/Point;-><init>(II)V

    const/4 v7, 0x3

    aput-object v6, v11, v7

    move v6, v12

    const/4 v7, 0x4

    :goto_5
    if-ge v6, v7, :cond_5

    .line 41
    aget-object v8, v11, v6

    iget v8, v8, Landroid/graphics/Point;->x:I

    aget-object v9, v11, v6

    iget v9, v9, Landroid/graphics/Point;->y:I

    .line 42
    aget-object v10, v11, v6

    iget v10, v10, Landroid/graphics/Point;->x:I

    aget-object v13, v11, v6

    iget v13, v13, Landroid/graphics/Point;->y:I

    .line 43
    aget-object v14, v11, v6

    int-to-double v7, v8

    mul-double/2addr v7, v4

    move v15, v13

    int-to-double v12, v9

    mul-double/2addr v12, v2

    sub-double/2addr v7, v12

    double-to-int v7, v7

    iput v7, v14, Landroid/graphics/Point;->x:I

    .line 44
    aget-object v7, v11, v6

    int-to-double v8, v10

    mul-double/2addr v8, v2

    move v10, v15

    int-to-double v12, v10

    mul-double/2addr v12, v4

    add-double/2addr v8, v12

    double-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 45
    aget-object v7, v11, v6

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Point;->offset(II)V

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    const/4 v12, 0x0

    goto :goto_5

    .line 46
    :cond_5
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v0, Lcom/google/mlkit/vision/text/Text$TextBlock;

    sget-object v1, Lcom/google/mlkit/vision/text/internal/zzi;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzv;

    sget-object v2, Lcom/google/mlkit/vision/text/internal/zzf;->zza:Lcom/google/mlkit/vision/text/internal/zzf;

    move-object/from16 v3, v20

    .line 47
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbs;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text/zzu;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzv;->zzb(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-static {v9}, Lcom/google/mlkit/vision/text/internal/zza;->zza(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v8

    .line 49
    invoke-static {v3}, Lcom/google/mlkit/vision/text/internal/zzi;->zzb(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v0

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/google/mlkit/vision/text/Text$TextBlock;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v1, v19

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;

    add-int/lit8 v2, v18, 0x1

    move-object v0, v1

    move-object/from16 v1, v17

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;->zzc()Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;

    move-result-object v0

    new-instance v1, Lcom/google/mlkit/vision/text/Text;

    sget-object v2, Lcom/google/mlkit/vision/text/internal/zzi;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzv;

    sget-object v3, Lcom/google/mlkit/vision/text/internal/zzg;->zza:Lcom/google/mlkit/vision/text/internal/zzg;

    .line 51
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbs;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text/zzu;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text/zzv;->zzb(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/mlkit/vision/text/Text;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private static zzb(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$Line;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/text/Text$Line;

    .line 3
    invoke-virtual {v1}, Lcom/google/mlkit/vision/text/Text$Line;->getRecognizedLanguage()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "und"

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    sget-object v0, Lcom/google/mlkit/vision/text/internal/zzi;->zzb:Ljava/util/Comparator;

    .line 9
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzab;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method
