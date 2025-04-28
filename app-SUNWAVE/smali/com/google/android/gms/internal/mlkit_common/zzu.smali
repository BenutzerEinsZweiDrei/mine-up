.class public final Lcom/google/android/gms/internal/mlkit_common/zzu;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# direct methods
.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzt;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_common/zzr;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzt;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzt;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_common/zzr;)V

    return-object v0
.end method
