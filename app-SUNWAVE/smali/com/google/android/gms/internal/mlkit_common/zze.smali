.class public final Lcom/google/android/gms/internal/mlkit_common/zze;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zzag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzag<",
            "Lcom/google/android/gms/internal/mlkit_common/zzp;",
            ">;"
        }
    .end annotation
.end field

.field private zzb:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzaj;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zze;->zza:Lcom/google/android/gms/internal/mlkit_common/zzag;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzaj;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzag;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zze;->zza:Lcom/google/android/gms/internal/mlkit_common/zzag;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_common/zze;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zze;->zzb:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "A SourcePolicy can only set internal() or external() once."

    .line 1
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzz;->zzd(ZLjava/lang/Object;)V

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zze;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_common/zze;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zze;->zzb:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "A SourcePolicy can only set internal() or external() once."

    .line 1
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzz;->zzd(ZLjava/lang/Object;)V

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zze;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_common/zzf;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zze;->zzb:Ljava/lang/Boolean;

    const-string v1, "Must call internal() or external() when building a SourcePolicy."

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzf;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zze;->zza:Lcom/google/android/gms/internal/mlkit_common/zzag;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_common/zzag;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzaj;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_common/zzf;-><init>(ZZLcom/google/android/gms/internal/mlkit_common/zzaj;Lcom/google/android/gms/internal/mlkit_common/zzd;)V

    return-object v1
.end method
