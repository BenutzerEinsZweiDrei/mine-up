.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;
    .locals 1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzho;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzho;-><init>()V

    const-string/jumbo v0, "vision-common"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzho;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    return-object p0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Ljava/lang/String;
.end method

.method public abstract zzc()Z
.end method
