.class public final Lcom/google/android/gms/internal/mlkit_common/zzjx;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/common/internal/GmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "RemoteModelUtils"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjx;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public static zza(Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_common/zzjn;)Lcom/google/android/gms/internal/mlkit_common/zzhc;
    .locals 10

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v0

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/common/model/RemoteModel;->getModelHash()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzhj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/zzhj;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzhe;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_common/zzhe;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/mlkit/common/model/RemoteModel;->getModelNameForBackend()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzhe;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_common/zzhg;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzhg;

    .line 3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzd(Lcom/google/android/gms/internal/mlkit_common/zzhg;)Lcom/google/android/gms/internal/mlkit_common/zzhe;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_common/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzhe;

    .line 5
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/ModelType;->UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/ModelType;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    .line 10
    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzhf;)Lcom/google/android/gms/internal/mlkit_common/zzhe;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzhh;

    move-result-object v0

    .line 11
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzhj;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzhh;)Lcom/google/android/gms/internal/mlkit_common/zzhj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/zzhj;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzhl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzha;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzha;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzgu;

    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzd(Lcom/google/android/gms/internal/mlkit_common/zzgu;)Lcom/google/android/gms/internal/mlkit_common/zzha;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzhb;

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzc(Lcom/google/android/gms/internal/mlkit_common/zzhb;)Lcom/google/android/gms/internal/mlkit_common/zzha;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zza()I

    move-result v2

    int-to-long v2, v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzb(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/zzha;

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzhl;)Lcom/google/android/gms/internal/mlkit_common/zzha;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzg()Z

    move-result v0

    const-string v2, "Model downloaded without its beginning time recorded."

    const-string v3, "RemoteModelUtils"

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p1, p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getModelDownloadBeginTimeMs(Lcom/google/mlkit/common/model/RemoteModel;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjx;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 17
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p1, p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getModelFirstUseTimeMs(Lcom/google/mlkit/common/model/RemoteModel;)J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-nez v0, :cond_4

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 20
    invoke-virtual {p1, p0, v8, v9}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->setModelFirstUseTimeMs(Lcom/google/mlkit/common/model/RemoteModel;J)V

    :cond_4
    sub-long/2addr v8, v6

    .line 21
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzg(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/zzha;

    .line 17
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzf()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 22
    invoke-virtual {p1, p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getModelDownloadBeginTimeMs(Lcom/google/mlkit/common/model/RemoteModel;)J

    move-result-wide p0

    cmp-long p2, p0, v4

    if-nez p2, :cond_6

    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzjx;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 23
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p0

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzha;->zze(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/zzha;

    .line 23
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzha;->zzi()Lcom/google/android/gms/internal/mlkit_common/zzhc;

    move-result-object p0

    return-object p0
.end method
