.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;

.field private zzb:Ljava/lang/Integer;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;)Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;)Lcom/google/android/gms/internal/mlkit_vision_text/zzib;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzib;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;->zzb:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;->zzb:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_text/zzib;)Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzib;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;)Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_text/zzds;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzds;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzds;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;Lcom/google/android/gms/internal/mlkit_vision_text/zzdo;)V

    return-object v0
.end method
