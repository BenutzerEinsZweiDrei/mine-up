.class public final Lcom/google/mlkit/vision/barcode/internal/zzi;
.super Lcom/google/mlkit/common/sdkinternal/MLTask;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/common/sdkinternal/MLTask<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/barcode/Barcode;",
        ">;",
        "Lcom/google/mlkit/vision/common/InputImage;",
        ">;"
    }
.end annotation


# static fields
.field static zza:Z

.field private static final zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# instance fields
.field private final zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

.field private final zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;

.field private final zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/MLTask;-><init>()V

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    const-string v0, "MlKitContext can not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BarcodeScannerOptions can not be null"

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;",
            "J",
            "Lcom/google/mlkit/vision/common/InputImage;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;

    .line 1
    invoke-direct {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;

    .line 2
    invoke-direct {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;-><init>()V

    if-eqz p5, :cond_0

    .line 3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/barcode/Barcode;

    .line 4
    invoke-virtual {v1}, Lcom/google/mlkit/vision/barcode/Barcode;->getFormat()I

    move-result v2

    invoke-static {v2}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;

    .line 5
    invoke-virtual {v1}, Lcom/google/mlkit/vision/barcode/Barcode;->getValueType()I

    move-result v1

    invoke-static {v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjp;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v11, v0, p2

    new-instance v13, Lcom/google/mlkit/vision/barcode/internal/zzh;

    move-object v0, v13

    move-object/from16 v1, p0

    move-wide v2, v11

    move-object/from16 v4, p1

    move-object v5, v9

    move-object v6, v10

    move-object/from16 v7, p4

    .line 7
    invoke-direct/range {v0 .. v7}, Lcom/google/mlkit/vision/barcode/internal/zzh;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzi;JLcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object v0, v8, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;

    invoke-virtual {v0, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;-><init>()V

    move-object/from16 v1, p1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    sget-boolean v2, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    .line 10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    iget-object v2, v8, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 11
    invoke-static {v2}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    .line 12
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    .line 13
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;

    move-result-object v3

    new-instance v7, Lcom/google/mlkit/vision/barcode/internal/zzg;

    .line 14
    invoke-direct {v7, v8}, Lcom/google/mlkit/vision/barcode/internal/zzg;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzi;)V

    iget-object v2, v8, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;->zzba:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;

    move-wide v4, v11

    .line 15
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;->zzf(Ljava/lang/Object;JLcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;Lcom/google/mlkit/vision/barcode/internal/zzg;)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    iget-boolean v0, v8, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    sub-long v16, v18, v11

    iget-object v13, v8, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;

    const/4 v2, 0x1

    if-eq v2, v0, :cond_1

    const/16 v0, 0x5eed

    goto :goto_1

    :cond_1
    const/16 v0, 0x5eee

    :goto_1
    move v14, v0

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;->zza()I

    move-result v15

    .line 18
    invoke-virtual/range {v13 .. v19}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;->zzc(IIJJ)V

    return-void
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
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z
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
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z
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

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized zzc(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->check(Lcom/google/mlkit/vision/common/InputImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;

    move-result-object v8

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;

    move-object v0, p0

    move-wide v2, v6

    move-object v4, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 5
    :try_start_2
    invoke-virtual {v8}, Lcom/google/mlkit/common/MlKitException;->getErrorCode()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;->zzN:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;

    :goto_0
    move-object v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, v6

    move-object v4, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    .line 9
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic zzd(JLcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;-><init>()V

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;->zzc(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;

    .line 2
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;

    sget-boolean p1, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;->zzb(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zziv;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzh(Lcom/google/android/gms/internal/mlkit_vision_barcode/zziv;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    iget-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 7
    invoke-static {p1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    .line 8
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    .line 9
    invoke-virtual {p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    .line 10
    invoke-virtual {p6}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result p1

    sget-object p2, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    invoke-virtual {p2, p6}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageSize(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p2

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzip;

    invoke-direct {p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzip;-><init>()V

    const/4 p4, -0x1

    if-eq p1, p4, :cond_4

    const/16 p4, 0x23

    if-eq p1, p4, :cond_3

    const p4, 0x32315659

    if-eq p1, p4, :cond_2

    const/16 p4, 0x10

    if-eq p1, p4, :cond_1

    const/16 p4, 0x11

    if-eq p1, p4, :cond_0

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;

    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;

    goto :goto_0

    .line 14
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;

    goto :goto_0

    .line 11
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;

    goto :goto_0

    .line 12
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;

    goto :goto_0

    .line 15
    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;

    .line 17
    :goto_0
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzip;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzip;

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzip;->zzb(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzip;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzip;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;-><init>()V

    iget-boolean p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    .line 20
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;ILcom/google/android/gms/internal/mlkit_vision_barcode/zzil;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;-><init>()V

    iget-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    .line 1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;

    .line 4
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    move-result-object p1

    return-object p1
.end method
