.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;

.field private final zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

.field private final zzf:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzh:Ljava/lang/String;

.field private final zzi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzi:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzj:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzb:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzh:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_common/zzhv;

    invoke-direct {p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhv;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzf:Lcom/google/android/gms/tasks/Task;

    .line 7
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_common/zzhu;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhu;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    invoke-virtual {p1, p3}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzg:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static declared-synchronized zzc()Lcom/google/android/gms/internal/mlkit_vision_common/zzo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    .line 1
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;

    .line 2
    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;-><init>()V

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4
    invoke-virtual {v1, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 5
    invoke-static {v4}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->languageTagFromLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_common/zzl;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;->zzc()Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;->zzd(Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;->zza()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzc()Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;->zzh(Lcom/google/android/gms/internal/mlkit_vision_common/zzo;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;->zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    .line 8
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 11
    invoke-virtual {p2}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p2

    .line 12
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    const/16 p2, 0xa

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;->zze(Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;

    .line 14
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzih;Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzi:Ljava/util/Map;

    .line 2
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzi:Ljava/util/Map;

    .line 3
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzi:Ljava/util/Map;

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;->zza:I

    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;->zzb:I

    iget v2, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;->zzd:I

    iget v4, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;->zze:I

    iget-wide v5, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;->zzf:J

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;->zzg:I

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;

    invoke-direct {v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;-><init>()V

    const/4 v8, -0x1

    if-eq v0, v8, :cond_6

    const/16 v8, 0x23

    if-eq v0, v8, :cond_5

    const v8, 0x32315659

    if-eq v0, v8, :cond_4

    const/16 v8, 0x10

    if-eq v0, v8, :cond_3

    const/16 v8, 0x11

    if-eq v0, v8, :cond_2

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    goto :goto_1

    .line 8
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    goto :goto_1

    .line 5
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    goto :goto_1

    .line 6
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    goto :goto_1

    .line 9
    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzg:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    .line 11
    :goto_1
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;->zzd(Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;

    const/4 v0, 0x1

    if-eq v1, v0, :cond_a

    const/4 v0, 0x2

    if-eq v1, v0, :cond_9

    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;->zzf:Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;

    goto :goto_2

    .line 13
    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;

    goto :goto_2

    .line 14
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;

    goto :goto_2

    .line 15
    :cond_9
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;

    goto :goto_2

    .line 16
    :cond_a
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;

    .line 17
    :goto_2
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;->zzf(Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;->zze(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;->zzg(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;->zzb(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;->zzh(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;->zzj()Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;-><init>()V

    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;->zzc(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;

    move-result-object v3

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzf:Lcom/google/android/gms/tasks/Task;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzf:Lcom/google/android/gms/tasks/Task;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_3

    .line 27
    :cond_b
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v5, p1

    .line 28
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;Ljava/lang/String;[B)V

    .line 29
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
