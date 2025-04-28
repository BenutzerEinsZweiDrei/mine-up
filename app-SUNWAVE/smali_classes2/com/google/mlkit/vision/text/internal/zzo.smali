.class public final Lcom/google/mlkit/vision/text/internal/zzo;
.super Lcom/google/mlkit/common/sdkinternal/MLTask;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/common/sdkinternal/MLTask<",
        "Lcom/google/mlkit/vision/text/Text;",
        "Lcom/google/mlkit/vision/common/InputImage;",
        ">;"
    }
.end annotation


# static fields
.field static zza:Z = true

.field private static final zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# instance fields
.field private final zzc:Lcom/google/mlkit/vision/text/internal/zzj;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzky;

.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/text/internal/zzo;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v1

    const v2, 0xc337960

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/google/mlkit/vision/text/internal/zzc;

    .line 6
    invoke-direct {v1, p1}, Lcom/google/mlkit/vision/text/internal/zzc;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance v1, Lcom/google/mlkit/vision/text/internal/zzb;

    .line 5
    invoke-direct {v1, p1, p2}, Lcom/google/mlkit/vision/text/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V

    .line 7
    :goto_1
    invoke-interface {p2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingEventId()I

    move-result p1

    .line 8
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/MLTask;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzo;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;

    iput-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzo;->zzc:Lcom/google/mlkit/vision/text/internal/zzj;

    .line 9
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzky;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_text/zzky;

    move-result-object p2

    iput-object p2, p0, Lcom/google/mlkit/vision/text/internal/zzo;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzky;

    iput p1, p0, Lcom/google/mlkit/vision/text/internal/zzo;->zzf:I

    return-void
.end method

.method static synthetic zzd(JLcom/google/android/gms/internal/mlkit_vision_text/zzir;Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzka;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;-><init>()V

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zzc(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_text/zzik;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zzd(Lcom/google/android/gms/internal/mlkit_vision_text/zzir;)Lcom/google/android/gms/internal/mlkit_vision_text/zzik;

    sget-boolean p0, Lcom/google/mlkit/vision/text/internal/zzo;->zza:Z

    .line 3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text/zzik;

    const/4 p0, 0x1

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text/zzik;

    .line 5
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zzb(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text/zzik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zzf()Lcom/google/android/gms/internal/mlkit_vision_text/zzil;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzka;->zzd(Lcom/google/android/gms/internal/mlkit_vision_text/zzil;)Lcom/google/android/gms/internal/mlkit_vision_text/zzka;

    sget-object p0, Lcom/google/mlkit/vision/text/internal/zzo;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 7
    invoke-virtual {p0, p3}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageFormat(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p1

    .line 8
    invoke-virtual {p0, p3}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageSize(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p0

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_text/zzif;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzif;-><init>()V

    const/4 p3, -0x1

    if-eq p1, p3, :cond_4

    const/16 p3, 0x23

    if-eq p1, p3, :cond_3

    const p3, 0x32315659

    if-eq p1, p3, :cond_2

    const/16 p3, 0x10

    if-eq p1, p3, :cond_1

    const/16 p3, 0x11

    if-eq p1, p3, :cond_0

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzig;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzig;

    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzig;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzig;

    goto :goto_0

    .line 12
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzig;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzig;

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzig;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzig;

    goto :goto_0

    .line 10
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzig;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzig;

    goto :goto_0

    .line 13
    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzig;->zzg:Lcom/google/android/gms/internal/mlkit_vision_text/zzig;

    .line 15
    :goto_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzif;->zza(Lcom/google/android/gms/internal/mlkit_vision_text/zzig;)Lcom/google/android/gms/internal/mlkit_vision_text/zzif;

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzif;->zzb(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_text/zzif;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzif;->zzd()Lcom/google/android/gms/internal/mlkit_vision_text/zzih;

    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzka;->zzc(Lcom/google/android/gms/internal/mlkit_vision_text/zzih;)Lcom/google/android/gms/internal/mlkit_vision_text/zzka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzka;->zze()Lcom/google/android/gms/internal/mlkit_vision_text/zzkb;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;-><init>()V

    const/4 p2, 0x0

    .line 18
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text/zziu;

    .line 19
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;->zzf(Lcom/google/android/gms/internal/mlkit_vision_text/zzkb;)Lcom/google/android/gms/internal/mlkit_vision_text/zziu;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_text/zziu;)Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;

    move-result-object p0

    return-object p0
.end method

.method private final zze(Lcom/google/android/gms/internal/mlkit_vision_text/zzir;JLcom/google/mlkit/vision/common/InputImage;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, p2

    new-instance v4, Lcom/google/mlkit/vision/text/internal/zzn;

    move-object/from16 v5, p4

    .line 2
    invoke-direct {v4, v2, v3, v1, v5}, Lcom/google/mlkit/vision/text/internal/zzn;-><init>(JLcom/google/android/gms/internal/mlkit_vision_text/zzir;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object v5, v0, Lcom/google/mlkit/vision/text/internal/zzo;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;

    .line 3
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_text/zzis;->zzf:Lcom/google/android/gms/internal/mlkit_vision_text/zzis;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;->zze(Lcom/google/mlkit/vision/text/internal/zzn;Lcom/google/android/gms/internal/mlkit_vision_text/zzis;)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;

    invoke-direct {v4}, Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;-><init>()V

    .line 4
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;->zza(Lcom/google/android/gms/internal/mlkit_vision_text/zzir;)Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;

    sget-boolean v5, Lcom/google/mlkit/vision/text/internal/zzo;->zza:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;->zzb(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;->zzc()Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;

    move-result-object v5

    sget-object v9, Lcom/google/mlkit/vision/text/internal/zzm;->zza:Lcom/google/mlkit/vision/text/internal/zzm;

    iget-object v4, v0, Lcom/google/mlkit/vision/text/internal/zzo;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_text/zzis;->zzbe:Lcom/google/android/gms/internal/mlkit_vision_text/zzis;

    move-wide v6, v2

    .line 5
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;->zzf(Ljava/lang/Object;JLcom/google/android/gms/internal/mlkit_vision_text/zzis;Lcom/google/mlkit/vision/text/internal/zzm;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    iget-object v10, v0, Lcom/google/mlkit/vision/text/internal/zzo;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzky;

    iget v11, v0, Lcom/google/mlkit/vision/text/internal/zzo;->zzf:I

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzir;->zza()I

    move-result v12

    sub-long v13, v15, v2

    .line 8
    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/internal/mlkit_vision_text/zzky;->zzc(IIJJ)V

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
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzo;->zzc:Lcom/google/mlkit/vision/text/internal/zzj;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/internal/zzj;->zzb()V
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

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/google/mlkit/vision/text/internal/zzo;->zza:Z

    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzo;->zzc:Lcom/google/mlkit/vision/text/internal/zzj;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/internal/zzj;->zzc()V
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

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/text/internal/zzo;->zzc(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized zzc(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzo;->zzc:Lcom/google/mlkit/vision/text/internal/zzj;

    .line 2
    invoke-interface {v2, p1}, Lcom/google/mlkit/vision/text/internal/zzj;->zza(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text/zzir;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/google/mlkit/vision/text/internal/zzo;->zze(Lcom/google/android/gms/internal/mlkit_vision_text/zzir;JLcom/google/mlkit/vision/common/InputImage;)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/google/mlkit/vision/text/internal/zzo;->zza:Z
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v2

    .line 4
    :try_start_2
    invoke-virtual {v2}, Lcom/google/mlkit/common/MlKitException;->getErrorCode()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_0

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text/zzir;->zzk:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text/zzir;->zzN:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    .line 7
    :goto_0
    invoke-direct {p0, v3, v0, v1, p1}, Lcom/google/mlkit/vision/text/internal/zzo;->zze(Lcom/google/android/gms/internal/mlkit_vision_text/zzir;JLcom/google/mlkit/vision/common/InputImage;)V

    .line 8
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
