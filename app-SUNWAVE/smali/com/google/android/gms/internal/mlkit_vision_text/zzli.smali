.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zzli;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzli;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zza()Lcom/google/android/gms/internal/mlkit_vision_text/zzli;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzli;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzli;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzli;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzli;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzli;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzli;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzli;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzli;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzli;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
