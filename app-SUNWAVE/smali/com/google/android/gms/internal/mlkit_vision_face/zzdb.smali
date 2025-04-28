.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

.field private zzb:Ljava/lang/Boolean;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

.field private zzd:Ljava/lang/Integer;

.field private zze:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;)Lcom/google/android/gms/internal/mlkit_vision_face/zzie;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;)Lcom/google/android/gms/internal/mlkit_vision_face/zzis;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zze:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzie;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzis;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    return-object p0
.end method

.method public final zzd(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zze(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zze:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;Lcom/google/android/gms/internal/mlkit_vision_face/zzcz;)V

    return-object v0
.end method
