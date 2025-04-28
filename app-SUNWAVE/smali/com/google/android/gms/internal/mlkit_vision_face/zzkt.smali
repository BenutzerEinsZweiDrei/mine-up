.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzks;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkq;-><init>()V

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkq;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzks;

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzks;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_face/zzks;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzks;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_face/zzks;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Ljava/lang/String;
.end method

.method public abstract zzc()Z
.end method
