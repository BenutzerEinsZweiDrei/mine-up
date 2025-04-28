.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzda;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

.field private zzb:Ljava/lang/Integer;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzda;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzda;)Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzda;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zzb:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzda;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zzb:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;)Lcom/google/android/gms/internal/mlkit_vision_face/zzda;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;)Lcom/google/android/gms/internal/mlkit_vision_face/zzda;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzda;Lcom/google/android/gms/internal/mlkit_vision_face/zzcz;)V

    return-object v0
.end method
