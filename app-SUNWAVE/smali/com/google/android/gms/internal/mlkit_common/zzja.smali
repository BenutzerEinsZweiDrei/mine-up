.class final Lcom/google/android/gms/internal/mlkit_common/zzja;
.super Lcom/google/android/gms/internal/mlkit_common/zzjm;
.source "com.google.mlkit:common@@17.2.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/Boolean;

.field private zzd:Ljava/lang/Boolean;

.field private zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field private zzf:Lcom/google/android/gms/internal/mlkit_common/zzhb;

.field private zzg:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzjm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzhb;)Lcom/google/android/gms/internal/mlkit_common/zzjm;
    .locals 1

    const-string v0, "Null downloadStatus"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_common/zzgu;)Lcom/google/android/gms/internal/mlkit_common/zzjm;
    .locals 1

    const-string v0, "Null errorCode"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/mlkit_common/zzjm;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzg:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzd(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/zzjm;
    .locals 1

    const-string v0, "Null modelType"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-object p0
.end method

.method public final zze(Z)Lcom/google/android/gms/internal/mlkit_common/zzjm;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzd:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzjm;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzc:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzjm;
    .locals 0

    const-string p1, "NA"

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/mlkit_common/zzjn;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    if-nez v0, :cond_0

    const-string v0, " errorCode"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzb:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, " tfliteSchemaVersion"

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzc:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " shouldLogRoughDownloadTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzd:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " shouldLogExactDownloadTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    if-nez v1, :cond_4

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " modelType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    if-nez v1, :cond_5

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " downloadStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzg:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " failureStatusCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_7
    new-instance v0, Ljava/lang/String;

    .line 8
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzjb;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzc:Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzd:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzg:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_common/zzjb;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzgu;Ljava/lang/String;ZZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzhb;ILcom/google/android/gms/internal/mlkit_common/zziz;)V

    return-object v0
.end method
