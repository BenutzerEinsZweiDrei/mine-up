.class public abstract Lcom/google/android/gms/internal/mlkit_vision_text/zzkq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text/zzkp;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzkn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkn;-><init>()V

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkn;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text/zzkp;

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkp;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_text/zzkp;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkp;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzkp;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Ljava/lang/String;
.end method

.method public abstract zzc()Z
.end method
