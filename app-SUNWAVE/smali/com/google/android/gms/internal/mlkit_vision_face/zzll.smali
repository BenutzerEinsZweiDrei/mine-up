.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzll;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzlk;


# direct methods
.method public static declared-synchronized zza(Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;)Lcom/google/android/gms/internal/mlkit_vision_face/zzla;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzll;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzll;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzlk;

    if-nez v1, :cond_0

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzlk;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzll;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzlk;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzll;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzlk;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzla;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzla;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzll;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzks;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzks;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzll;->zza(Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;)Lcom/google/android/gms/internal/mlkit_vision_face/zzla;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
