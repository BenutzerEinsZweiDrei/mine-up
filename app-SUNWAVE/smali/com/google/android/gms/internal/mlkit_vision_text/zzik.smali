.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zzik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# instance fields
.field private zza:Ljava/lang/Long;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

.field private zzc:Ljava/lang/Boolean;

.field private zzd:Ljava/lang/Boolean;

.field private zze:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_text/zzik;)Lcom/google/android/gms/internal/mlkit_vision_text/zzir;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_text/zzik;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zzc:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_text/zzik;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zzd:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_text/zzik;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zze:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_text/zzik;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zza:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text/zzik;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zzd:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzb(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text/zzik;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zze:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_text/zzik;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zza:Ljava/lang/Long;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_text/zzir;)Lcom/google/android/gms/internal/mlkit_vision_text/zzik;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    return-object p0
.end method

.method public final zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text/zzik;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzik;->zzc:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_text/zzil;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzil;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzil;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzik;Lcom/google/android/gms/internal/mlkit_vision_text/zzij;)V

    return-object v0
.end method
