.class public final Lcom/google/android/gms/internal/mlkit_common/zzgc;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_common/zzhf;

.field private zzb:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/mlkit_common/zzgc;)Lcom/google/android/gms/internal/mlkit_common/zzhf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzgc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/mlkit_common/zzgc;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzgc;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzgc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzgc;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_common/zzhf;)Lcom/google/android/gms/internal/mlkit_common/zzgc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzgc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_common/zzgd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzgd;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzgd;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzgc;Lcom/google/android/gms/internal/mlkit_common/zzgb;)V

    return-object v0
.end method
