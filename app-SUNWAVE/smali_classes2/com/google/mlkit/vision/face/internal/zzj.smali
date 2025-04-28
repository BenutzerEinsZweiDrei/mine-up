.class public final Lcom/google/mlkit/vision/face/internal/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# static fields
.field static final zza:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/face/internal/zzj;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/android/gms/internal/mlkit_vision_face/zzie;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;-><init>()V

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzd()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzic;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzic;

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzic;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzic;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzic;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzic;

    .line 1
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzic;)Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;

    .line 5
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzb()I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    goto :goto_1

    .line 6
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    goto :goto_1

    .line 7
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    .line 5
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zza(Lcom/google/android/gms/internal/mlkit_vision_face/zzia;)Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;

    .line 9
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zze()I

    move-result v1

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzid;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzid;

    goto :goto_2

    .line 10
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzid;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzid;

    goto :goto_2

    .line 11
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzid;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzid;

    .line 9
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzid;)Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;

    .line 13
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzc()I

    move-result v1

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_6

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzib;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzib;

    goto :goto_3

    .line 14
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzib;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzib;

    goto :goto_3

    .line 15
    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzib;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzib;

    .line 13
    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzib;)Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;

    .line 17
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zzc(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;

    .line 18
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zza()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zze(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zzk()Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    move-result-object p0

    return-object p0
.end method

.method public static zzb()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/mlkit/vision/face/internal/zzj;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/google/mlkit/vision/face/internal/zza;->zzc(Landroid/content/Context;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    const-string v1, "play-services-mlkit-face-detection"

    goto :goto_0

    :cond_1
    const-string v1, "face-detection"

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzla;ZLcom/google/android/gms/internal/mlkit_vision_face/zzis;)V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/face/internal/zzi;

    .line 1
    invoke-direct {v0, p1, p2}, Lcom/google/mlkit/vision/face/internal/zzi;-><init>(ZLcom/google/android/gms/internal/mlkit_vision_face/zzis;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzit;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzit;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzla;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzky;Lcom/google/android/gms/internal/mlkit_vision_face/zzit;)V

    return-void
.end method
