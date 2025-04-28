.class public final Lcom/google/android/gms/internal/mlkit_common/zzha;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_common/zzhl;

.field private zzb:Ljava/lang/Long;

.field private zzc:Lcom/google/android/gms/internal/mlkit_common/zzgu;

.field private zzd:Ljava/lang/Long;

.field private zze:Lcom/google/android/gms/internal/mlkit_common/zzhb;

.field private zzf:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzha;)Lcom/google/android/gms/internal/mlkit_common/zzgu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/mlkit_common/zzha;)Lcom/google/android/gms/internal/mlkit_common/zzhb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zze:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/mlkit_common/zzha;)Lcom/google/android/gms/internal/mlkit_common/zzhl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/mlkit_common/zzha;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzb:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/mlkit_common/zzha;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzd:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/mlkit_common/zzha;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzf:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/zzha;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzf:Ljava/lang/Long;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_common/zzhb;)Lcom/google/android/gms/internal/mlkit_common/zzha;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zze:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_common/zzgu;)Lcom/google/android/gms/internal/mlkit_common/zzha;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    return-object p0
.end method

.method public final zze(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/zzha;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzd:Ljava/lang/Long;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_common/zzhl;)Lcom/google/android/gms/internal/mlkit_common/zzha;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    return-object p0
.end method

.method public final zzg(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/zzha;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzb:Ljava/lang/Long;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/mlkit_common/zzhc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzhc;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzhc;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzha;Lcom/google/android/gms/internal/mlkit_common/zzgz;)V

    return-object v0
.end method
