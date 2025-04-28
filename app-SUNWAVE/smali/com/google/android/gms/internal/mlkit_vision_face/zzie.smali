.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzic;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzid;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzib;

.field private final zze:Ljava/lang/Boolean;

.field private final zzf:Ljava/lang/Float;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;Lcom/google/android/gms/internal/mlkit_vision_face/zzhy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zzi(Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;)Lcom/google/android/gms/internal/mlkit_vision_face/zzic;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzic;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;)Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zzj(Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;)Lcom/google/android/gms/internal/mlkit_vision_face/zzid;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzid;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;)Lcom/google/android/gms/internal/mlkit_vision_face/zzib;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzib;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zzl(Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zze:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;->zzm(Lcom/google/android/gms/internal/mlkit_vision_face/zzhz;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzf:Ljava/lang/Float;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzic;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzic;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzid;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzid;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzib;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzib;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zze:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zze:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzf:Ljava/lang/Float;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzf:Ljava/lang/Float;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzic;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzid;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzib;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zze:Ljava/lang/Boolean;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzf:Ljava/lang/Float;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face/zzia;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face/zzib;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzib;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_face/zzic;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzic;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_face/zzid;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzid;

    return-object v0
.end method

.method public final zze()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zze:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;->zzf:Ljava/lang/Float;

    return-object v0
.end method
