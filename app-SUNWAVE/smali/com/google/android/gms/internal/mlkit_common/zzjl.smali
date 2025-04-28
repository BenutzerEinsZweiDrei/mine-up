.class public final Lcom/google/android/gms/internal/mlkit_common/zzjl;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_common/zzaj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzaj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_common/zzjk;

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
            "Lcom/google/android/gms/internal/mlkit_common/zzgv;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/mlkit_common/zzgv;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_common/zzjk;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzi:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzj:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzb:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzjk;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzh:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/mlkit_common/zzjj;

    invoke-direct {p3, p4}, Lcom/google/android/gms/internal/mlkit_common/zzjj;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzf:Lcom/google/android/gms/tasks/Task;

    .line 7
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/google/android/gms/internal/mlkit_common/zzji;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/mlkit_common/zzji;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    invoke-virtual {p1, p3}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzg:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static declared-synchronized zzg()Lcom/google/android/gms/internal/mlkit_common/zzaj;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_common/zzaj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaj;
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

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzag;

    .line 2
    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/zzag;-><init>()V

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

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_common/zzag;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzag;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/zzag;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzaj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zzh(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzir;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzir;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzb:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzc:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzaj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzh(Lcom/google/android/gms/internal/mlkit_common/zzaj;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    .line 6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 9
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    const/16 p1, 0xa

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    return-object v0
.end method

.method private final zzi()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzf:Lcom/google/android/gms/tasks/Task;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzf:Lcom/google/android/gms/tasks/Task;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzjc;Lcom/google/android/gms/internal/mlkit_common/zzgv;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzjc;->zza(Lcom/google/android/gms/internal/mlkit_common/zzgv;)Lcom/google/android/gms/internal/mlkit_common/zzjc;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_common/zzjc;->zzd()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzh(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzjc;->zzc(Lcom/google/android/gms/internal/mlkit_common/zzir;)Lcom/google/android/gms/internal/mlkit_common/zzjc;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzjk;

    .line 3
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzjk;->zza(Lcom/google/android/gms/internal/mlkit_common/zzjc;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/mlkit_common/zzjc;Lcom/google/android/gms/internal/mlkit_common/zzjn;Lcom/google/mlkit/common/model/RemoteModel;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgv;->zzaT:Lcom/google/android/gms/internal/mlkit_common/zzgv;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjc;->zza(Lcom/google/android/gms/internal/mlkit_common/zzgv;)Lcom/google/android/gms/internal/mlkit_common/zzjc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zze()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzh(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjc;->zzc(Lcom/google/android/gms/internal/mlkit_common/zzir;)Lcom/google/android/gms/internal/mlkit_common/zzjc;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 5
    invoke-static {p3, v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zzjx;->zza(Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_common/zzjn;)Lcom/google/android/gms/internal/mlkit_common/zzhc;

    move-result-object p2

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzjc;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzhc;)Lcom/google/android/gms/internal/mlkit_common/zzjc;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzjk;

    .line 7
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzjk;->zza(Lcom/google/android/gms/internal/mlkit_common/zzjc;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_common/zzjc;Lcom/google/android/gms/internal/mlkit_common/zzgv;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzi()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzjg;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjg;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzjl;Lcom/google/android/gms/internal/mlkit_common/zzjc;Lcom/google/android/gms/internal/mlkit_common/zzgv;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_common/zzjc;Lcom/google/mlkit/common/model/RemoteModel;ZI)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzjm;

    move-result-object p3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    .line 3
    invoke-virtual {p2}, Lcom/google/mlkit/common/model/RemoteModel;->getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzd(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhb;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    .line 4
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zza(Lcom/google/android/gms/internal/mlkit_common/zzhb;)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgu;->zzo:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    .line 5
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzgu;)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    .line 6
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzc(I)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzjn;

    move-result-object p3

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzjc;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzjn;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_common/zzjc;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzgu;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzhb;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzjn;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzjm;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    .line 3
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzd(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    .line 4
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzgu;)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    .line 5
    invoke-virtual {v0, p6}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zza(Lcom/google/android/gms/internal/mlkit_common/zzhb;)Lcom/google/android/gms/internal/mlkit_common/zzjm;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzjm;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzjn;

    move-result-object p3

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzjc;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzjn;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_common/zzjc;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzjn;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzjh;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/internal/mlkit_common/zzjh;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzjl;Lcom/google/android/gms/internal/mlkit_common/zzjc;Lcom/google/android/gms/internal/mlkit_common/zzjn;Lcom/google/mlkit/common/model/RemoteModel;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
