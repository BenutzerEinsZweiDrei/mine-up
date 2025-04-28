.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

.field private final zzb:Ljava/lang/Boolean;

.field private final zzc:Ljava/lang/Boolean;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzih;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;Lcom/google/android/gms/internal/mlkit_vision_text/zzdo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;->zzd(Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;)Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zzb:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;->zze(Lcom/google/android/gms/internal/mlkit_vision_text/zzdq;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zzc:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzih;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zzb:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zzc:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zzc:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzih;

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zzc:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_text/zzir;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;->zzc:Ljava/lang/Boolean;

    return-object v0
.end method
