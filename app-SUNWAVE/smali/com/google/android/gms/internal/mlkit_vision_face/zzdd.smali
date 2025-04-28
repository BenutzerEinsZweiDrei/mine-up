.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

.field private final zzb:Ljava/lang/Integer;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzda;Lcom/google/android/gms/internal/mlkit_vision_face/zzcz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzda;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzda;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;->zzb:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzda;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzda;)Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;->zzb:Ljava/lang/Integer;

    return-object v0
.end method
