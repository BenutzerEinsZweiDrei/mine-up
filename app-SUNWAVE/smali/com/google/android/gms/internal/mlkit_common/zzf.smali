.class public final Lcom/google/android/gms/internal/mlkit_common/zzf;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_common/zzf;

.field public static final zzb:Lcom/google/android/gms/internal/mlkit_common/zzf;


# instance fields
.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Lcom/google/android/gms/internal/mlkit_common/zzaj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzaj<",
            "Lcom/google/android/gms/internal/mlkit_common/zzp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zze;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zze;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzd;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zze;->zza()Lcom/google/android/gms/internal/mlkit_common/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zze;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzf;->zza:Lcom/google/android/gms/internal/mlkit_common/zzf;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zze;

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zze;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzd;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zze;->zzb()Lcom/google/android/gms/internal/mlkit_common/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zze;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzf;

    return-void
.end method

.method synthetic constructor <init>(ZZLcom/google/android/gms/internal/mlkit_common/zzaj;Lcom/google/android/gms/internal/mlkit_common/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzc:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzd:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzf;->zze:Lcom/google/android/gms/internal/mlkit_common/zzaj;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzf;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzc:Z

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/mlkit_common/zzf;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzd:Z

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/mlkit_common/zzf;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/zzo;)I
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzf;->zze:Lcom/google/android/gms/internal/mlkit_common/zzaj;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Lcom/google/android/gms/internal/mlkit_common/zzp;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzc:Z

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzp;->zza()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    throw p0

    :cond_3
    const/4 p0, 0x3

    :goto_1
    return p0
.end method
