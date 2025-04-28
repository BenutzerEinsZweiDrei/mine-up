.class public final Lcom/google/mlkit/vision/face/internal/zzh;
.super Lcom/google/mlkit/common/sdkinternal/MLTask;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/common/sdkinternal/MLTask<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/face/Face;",
        ">;",
        "Lcom/google/mlkit/vision/common/InputImage;",
        ">;"
    }
.end annotation


# static fields
.field static final zza:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# instance fields
.field private final zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzla;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzlc;

.field private final zzf:Lcom/google/mlkit/vision/face/internal/zzb;

.field private zzg:Z

.field private final zzh:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 1
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzla;Lcom/google/mlkit/vision/face/FaceDetectorOptions;Lcom/google/mlkit/vision/face/internal/zzb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/MLTask;-><init>()V

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzh:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    const-string v0, "FaceDetectorOptions can not be null"

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    iput-object p1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzla;

    iput-object p3, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    .line 4
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlc;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzlc;

    return-void
.end method

.method static zzd(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/face/Face;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/face/Face;->zzc(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final declared-synchronized zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzis;JLcom/google/mlkit/vision/common/InputImage;II)V
    .locals 19

    move-object/from16 v9, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v10, v0, p2

    new-instance v0, Lcom/google/mlkit/vision/face/internal/zzg;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide v3, v10

    move-object/from16 v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p4

    .line 2
    invoke-direct/range {v1 .. v8}, Lcom/google/mlkit/vision/face/internal/zzg;-><init>(Lcom/google/mlkit/vision/face/internal/zzh;JLcom/google/android/gms/internal/mlkit_vision_face/zzis;IILcom/google/mlkit/vision/common/InputImage;)V

    iget-object v1, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzla;

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzit;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzit;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzla;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzky;Lcom/google/android/gms/internal/mlkit_vision_face/zzit;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;-><init>()V

    move-object/from16 v1, p1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzis;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;

    sget-object v2, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzd(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;

    .line 6
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;

    .line 7
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zze(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;

    iget-object v2, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    .line 8
    invoke-static {v2}, Lcom/google/mlkit/vision/face/internal/zzj;->zza(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzie;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzf()Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

    move-result-object v3

    new-instance v7, Lcom/google/mlkit/vision/face/internal/zzf;

    .line 9
    invoke-direct {v7, v9}, Lcom/google/mlkit/vision/face/internal/zzf;-><init>(Lcom/google/mlkit/vision/face/internal/zzh;)V

    iget-object v2, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzla;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_face/zzit;->zzbb:Lcom/google/android/gms/internal/mlkit_vision_face/zzit;

    move-wide v4, v10

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_face/zzla;->zzf(Ljava/lang/Object;JLcom/google/android/gms/internal/mlkit_vision_face/zzit;Lcom/google/mlkit/vision/face/internal/zzf;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-boolean v0, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z

    sub-long v15, v17, v10

    iget-object v12, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzlc;

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/16 v0, 0x5eef

    goto :goto_0

    :cond_0
    const/16 v0, 0x5ef0

    :goto_0
    move v13, v0

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzis;->zza()I

    move-result v14

    .line 13
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlc;->zzc(IIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized load()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/face/internal/zzb;->zzd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/face/internal/zzb;->zzb()V

    sget-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic run(Lcom/google/mlkit/common/sdkinternal/MLTaskInput;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/common/InputImage;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/face/internal/zzh;->zzc(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized zzc(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, v8, Lcom/google/mlkit/vision/face/internal/zzh;->zzh:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    .line 2
    invoke-virtual {v0, v9}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->check(Lcom/google/mlkit/vision/common/InputImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v8, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    .line 3
    invoke-interface {v0, v9}, Lcom/google/mlkit/vision/face/internal/zzb;->zza(Lcom/google/mlkit/vision/common/InputImage;)Landroid/util/Pair;

    move-result-object v0

    .line 4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 5
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "No detector is enabled"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :goto_1
    move-object v9, v2

    move-wide/from16 v18, v10

    goto/16 :goto_5

    :cond_2
    if-nez v0, :cond_3

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/HashSet;

    .line 8
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/face/Face;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/mlkit/vision/face/Face;

    .line 11
    invoke-virtual {v4}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v7}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 12
    invoke-virtual {v4}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v13

    .line 13
    invoke-virtual {v7}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v14

    .line 14
    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 15
    iget v15, v13, Landroid/graphics/Rect;->right:I

    iget v12, v14, Landroid/graphics/Rect;->right:I

    .line 16
    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v15, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v16, v3

    iget v3, v14, Landroid/graphics/Rect;->left:I

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v12, v3

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    iget v15, v14, Landroid/graphics/Rect;->bottom:I

    .line 17
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v15, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v17, v5

    iget v5, v14, Landroid/graphics/Rect;->top:I

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v5

    mul-int/2addr v12, v3

    move-wide/from16 v18, v10

    int-to-double v9, v12

    .line 18
    :try_start_2
    iget v3, v13, Landroid/graphics/Rect;->right:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    iget v11, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v11

    mul-int/2addr v3, v5

    int-to-double v11, v3

    .line 19
    iget v3, v14, Landroid/graphics/Rect;->right:I

    iget v5, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    iget v13, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v13

    mul-int/2addr v3, v5

    int-to-double v13, v3

    add-double/2addr v11, v13

    sub-double/2addr v11, v9

    div-double/2addr v9, v11

    const-wide v11, 0x3fe3333333333333L    # 0.6

    cmpl-double v3, v9, v11

    if-lez v3, :cond_5

    .line 20
    invoke-virtual {v4}, Lcom/google/mlkit/vision/face/Face;->zza()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/mlkit/vision/face/Face;->zzb(Landroid/util/SparseArray;)V

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-wide/from16 v18, v10

    .line 21
    :cond_5
    :goto_4
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move-wide/from16 v10, v18

    goto/16 :goto_3

    :cond_6
    move-object/from16 v16, v3

    move-wide/from16 v18, v10

    if-nez v6, :cond_7

    .line 22
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v9, p1

    move-object/from16 v3, v16

    move-wide/from16 v10, v18

    goto/16 :goto_2

    :cond_8
    move-wide/from16 v18, v10

    new-instance v3, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v3

    .line 24
    :goto_5
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzis;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    if-nez v0, :cond_9

    const/4 v6, 0x0

    goto :goto_6

    .line 25
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v6, v0

    :goto_6
    if-nez v1, :cond_a

    const/4 v7, 0x0

    goto :goto_7

    .line 26
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    :goto_7
    move-object/from16 v1, p0

    move-wide/from16 v3, v18

    move-object/from16 v5, p1

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/vision/face/internal/zzh;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzis;JLcom/google/mlkit/vision/common/InputImage;II)V

    sget-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-wide/from16 v18, v10

    .line 29
    :goto_8
    :try_start_3
    invoke-virtual {v0}, Lcom/google/mlkit/common/MlKitException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_b

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzis;->zzk:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    goto :goto_9

    .line 31
    :cond_b
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzis;->zzN:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    :goto_9
    move-object v2, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, v18

    move-object/from16 v5, p1

    .line 32
    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/vision/face/internal/zzh;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzis;JLcom/google/mlkit/vision/common/InputImage;II)V

    .line 33
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic zze(JLcom/google/android/gms/internal/mlkit_vision_face/zzis;IILcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/internal/mlkit_vision_face/zzld;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzil;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzil;-><init>()V

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzil;->zzc(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_face/zzil;

    .line 2
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzil;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzis;)Lcom/google/android/gms/internal/mlkit_vision_face/zzil;

    sget-object p1, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzil;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzil;

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzil;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzil;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzil;->zzb(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzil;->zzf()Lcom/google/android/gms/internal/mlkit_vision_face/zzim;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzim;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    iget-object p1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    .line 7
    invoke-static {p1}, Lcom/google/mlkit/vision/face/internal/zzj;->zza(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzie;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    .line 8
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    .line 9
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzh(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    sget-object p1, Lcom/google/mlkit/vision/face/internal/zzh;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 10
    invoke-virtual {p1, p6}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageFormat(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p2

    .line 11
    invoke-virtual {p1, p6}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageSize(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p1

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_face/zzig;

    invoke-direct {p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzig;-><init>()V

    const/4 p4, -0x1

    if-eq p2, p4, :cond_4

    const/16 p4, 0x23

    if-eq p2, p4, :cond_3

    const p4, 0x32315659

    if-eq p2, p4, :cond_2

    const/16 p4, 0x10

    if-eq p2, p4, :cond_1

    const/16 p4, 0x11

    if-eq p2, p4, :cond_0

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzih;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzih;

    goto :goto_0

    .line 14
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzih;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzih;

    goto :goto_0

    .line 15
    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzih;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzih;

    goto :goto_0

    .line 12
    :cond_2
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzih;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzih;

    goto :goto_0

    .line 13
    :cond_3
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzih;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzih;

    goto :goto_0

    .line 16
    :cond_4
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzih;->zzg:Lcom/google/android/gms/internal/mlkit_vision_face/zzih;

    .line 18
    :goto_0
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzig;->zza(Lcom/google/android/gms/internal/mlkit_vision_face/zzih;)Lcom/google/android/gms/internal/mlkit_vision_face/zzig;

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzig;->zzb(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzig;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzig;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face/zzii;

    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzii;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzi()Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;-><init>()V

    iget-boolean p3, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z

    .line 21
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zziv;

    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzji;)Lcom/google/android/gms/internal/mlkit_vision_face/zziv;

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzld;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zziv;)Lcom/google/android/gms/internal/mlkit_vision_face/zzld;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;ILcom/google/android/gms/internal/mlkit_vision_face/zzhw;)Lcom/google/android/gms/internal/mlkit_vision_face/zzld;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;-><init>()V

    iget-boolean v1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z

    .line 1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zziv;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzda;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;)Lcom/google/android/gms/internal/mlkit_vision_face/zzda;

    .line 4
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;)Lcom/google/android/gms/internal/mlkit_vision_face/zzda;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zze()Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;)Lcom/google/android/gms/internal/mlkit_vision_face/zziv;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzld;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zziv;)Lcom/google/android/gms/internal/mlkit_vision_face/zzld;

    move-result-object p1

    return-object p1
.end method
