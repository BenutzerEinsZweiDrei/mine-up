.class public final Lcom/google/android/gms/internal/mlkit_common/zzhl;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zzhh;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_common/zzhk;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_common/zzhk;

.field private final zzd:Ljava/lang/Boolean;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzhj;Lcom/google/android/gms/internal/mlkit_common/zzhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzhj;->zza(Lcom/google/android/gms/internal/mlkit_common/zzhj;)Lcom/google/android/gms/internal/mlkit_common/zzhh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhh;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzhk;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzhk;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zzd:Ljava/lang/Boolean;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_common/zzhl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzhl;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhh;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhh;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzhk;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzhk;

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zzd:Ljava/lang/Boolean;

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhh;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_common/zzhh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhh;

    return-object v0
.end method
