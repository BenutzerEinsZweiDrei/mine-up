.class public final Lcom/google/android/gms/internal/mlkit_common/zzgd;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zzhf;

.field private final zzb:Ljava/lang/Boolean;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzgc;Lcom/google/android/gms/internal/mlkit_common/zzgb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzgc;->zzd(Lcom/google/android/gms/internal/mlkit_common/zzgc;)Lcom/google/android/gms/internal/mlkit_common/zzhf;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzgd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzgc;->zze(Lcom/google/android/gms/internal/mlkit_common/zzgc;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzgd;->zzb:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_common/zzhf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzgd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzgd;->zzb:Ljava/lang/Boolean;

    return-object v0
.end method
