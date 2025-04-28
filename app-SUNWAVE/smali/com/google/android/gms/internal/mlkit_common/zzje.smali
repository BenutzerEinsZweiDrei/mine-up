.class public abstract Lcom/google/android/gms/internal/mlkit_common/zzje;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzjd;
    .locals 1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/zzix;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzix;-><init>()V

    const-string v0, "common"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzix;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzjd;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza(Z)Lcom/google/android/gms/internal/mlkit_common/zzjd;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zzb(I)Lcom/google/android/gms/internal/mlkit_common/zzjd;

    return-object p0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Ljava/lang/String;
.end method

.method public abstract zzc()Z
.end method
