.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

.field private final zzb:Ljava/lang/Boolean;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzii;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

.field private final zze:Ljava/lang/Integer;

.field private final zzf:Ljava/lang/Integer;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;Lcom/google/android/gms/internal/mlkit_vision_face/zzcz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;)Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzi(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzb:Ljava/lang/Boolean;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzii;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;)Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzj(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zze:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;->zzk(Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzf:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzb:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzb:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzii;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zze:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zze:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzf:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzf:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzb:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zze:Ljava/lang/Integer;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzf:Ljava/lang/Integer;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face/zzie;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face/zzis;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzb:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zze:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zze()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;->zzf:Ljava/lang/Integer;

    return-object v0
.end method
