.class final Lcom/google/android/gms/internal/mlkit_common/zzjb;
.super Lcom/google/android/gms/internal/mlkit_common/zzjn;
.source "com.google.mlkit:common@@17.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_common/zzhb;

.field private final zzg:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzgu;Ljava/lang/String;ZZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzhb;ILcom/google/android/gms/internal/mlkit_common/zziz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzjn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzd:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    iput p7, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzg:I

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
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_common/zzjn;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzjn;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzgu;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_common/zzgu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzc:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzg()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzd:Z

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzf()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/mlkit/common/sdkinternal/ModelType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzhb;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_common/zzhb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzg:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zza()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzgu;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzc:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzd:Z

    if-eq v5, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 3
    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/ModelType;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/zzhb;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzg:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzc:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzd:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzg:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/lit16 v7, v7, 0xbb

    add-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/2addr v7, v10

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "RemoteModelLoggingOptions{errorCode="

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tfliteSchemaVersion="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldLogRoughDownloadTime="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldLogExactDownloadTime="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", modelType="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadStatus="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", failureStatusCode="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzg:I

    return v0
.end method

.method public final zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_common/zzgu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_common/zzhb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzd:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zzc:Z

    return v0
.end method
