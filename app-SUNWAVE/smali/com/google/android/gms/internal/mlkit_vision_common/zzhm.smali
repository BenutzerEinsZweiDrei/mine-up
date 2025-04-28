.class public Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:D

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zza:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzg:J

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzh:J

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzb:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_common/zzhk;)V
    .locals 0

    const-string/jumbo p1, "unusedTag"

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final zza()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzc:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzd:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zze:J

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzg:J

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzh:J

    return-void
.end method

.method public static zze()J
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    div-long/2addr v3, v1

    return-wide v3

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    mul-long/2addr v3, v1

    return-wide v3
.end method

.method public static zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzik;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;->zzb()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhl;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzhl;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "detectorTaskWithResource#run"

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;

    .line 4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zze:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzd(J)V

    return-void

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call start()?"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zze()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zze:J

    return-object p0
.end method

.method public zzc(J)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zze()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzf:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v2, v0, v2

    const-wide/32 v4, 0xf4240

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zza()V

    :cond_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzf:J

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzc:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzc:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzd:D

    long-to-double v4, p1

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzd:D

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzg:J

    .line 3
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzg:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzh:J

    .line 4
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzh:J

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzc:I

    rem-int/lit8 v0, v0, 0x32

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzb:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzc:I

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzg:J

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzh:J

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzd:D

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzc:I

    int-to-double v5, p2

    div-double/2addr v3, v5

    double-to-int p2, v3

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "[%s] cur=%dus, counts=%d, min=%dus, max=%dus, avg=%dus"

    .line 10
    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzik;

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzc:I

    rem-int/lit16 p1, p1, 0x1f4

    if-nez p1, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zza()V

    :cond_2
    return-void
.end method

.method public zzd(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zze()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzc(J)V

    return-void
.end method
