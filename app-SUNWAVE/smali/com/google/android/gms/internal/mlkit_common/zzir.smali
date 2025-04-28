.class public final Lcom/google/android/gms/internal/mlkit_common/zzir;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/mlkit_common/zzaj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzaj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/Boolean;

.field private zzh:Ljava/lang/Boolean;

.field private zzi:Ljava/lang/Boolean;

.field private zzj:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzir;)Lcom/google/android/gms/internal/mlkit_common/zzaj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zze:Lcom/google/android/gms/internal/mlkit_common/zzaj;

    return-object p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/mlkit_common/zzir;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzh:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/mlkit_common/zzir;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzi:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/mlkit_common/zzir;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzg:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/mlkit_common/zzir;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzj:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/mlkit_common/zzir;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zza:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/mlkit_common/zzir;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/mlkit_common/zzir;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/mlkit_common/zzir;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzu(Lcom/google/android/gms/internal/mlkit_common/zzir;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzf:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_common/zzir;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzj:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzir;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzg:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzir;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzi:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzir;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzh:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzh(Lcom/google/android/gms/internal/mlkit_common/zzaj;)Lcom/google/android/gms/internal/mlkit_common/zzir;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_common/zzaj<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/mlkit_common/zzir;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zze:Lcom/google/android/gms/internal/mlkit_common/zzaj;

    return-object p0
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzl()Lcom/google/android/gms/internal/mlkit_common/zzis;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzis;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzis;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzir;Lcom/google/android/gms/internal/mlkit_common/zziq;)V

    return-object v0
.end method
