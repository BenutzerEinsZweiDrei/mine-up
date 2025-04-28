.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;


# direct methods
.method public static declared-synchronized zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlh;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;

    if-nez v1, :cond_0

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlx;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlh;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlg;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlg;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlh;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlh;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

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
