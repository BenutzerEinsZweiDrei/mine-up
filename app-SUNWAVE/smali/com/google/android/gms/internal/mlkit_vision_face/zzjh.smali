.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzim;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzii;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

.field private zzd:Ljava/lang/Integer;

.field private zze:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;)Lcom/google/android/gms/internal/mlkit_vision_face/zzie;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;)Lcom/google/android/gms/internal/mlkit_vision_face/zzii;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzii;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;)Lcom/google/android/gms/internal/mlkit_vision_face/zzim;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzim;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zze:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzie;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzii;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzii;

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzim;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzim;

    return-object p0
.end method

.method public final zzh(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zze:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/mlkit_vision_face/zzji;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzji;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;)V

    return-object v0
.end method
