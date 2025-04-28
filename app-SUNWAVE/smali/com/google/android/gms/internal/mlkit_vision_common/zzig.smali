.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzig;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzif;


# direct methods
.method public static declared-synchronized zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzig;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzif;

    if-nez v1, :cond_0

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzif;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzif;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzie;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzig;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzif;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzig;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzif;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;
    .locals 1

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzig;

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "vision-common"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;->zzd()Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzig;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
