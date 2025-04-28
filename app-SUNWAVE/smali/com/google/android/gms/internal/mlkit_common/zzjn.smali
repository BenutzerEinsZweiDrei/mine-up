.class public abstract Lcom/google/android/gms/internal/mlkit_common/zzjn;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/mlkit_common/zzjm;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzja;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzja;-><init>()V

    const-string v1, "NA"

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zze(Z)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/ModelType;->UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzd(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzgu;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzgu;)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zza(Lcom/google/android/gms/internal/mlkit_common/zzhb;)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzc(I)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/mlkit_common/zzgu;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/mlkit_common/zzhb;
.end method

.method public abstract zze()Ljava/lang/String;
.end method

.method public abstract zzf()Z
.end method

.method public abstract zzg()Z
.end method
