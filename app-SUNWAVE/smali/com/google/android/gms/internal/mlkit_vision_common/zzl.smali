.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzl;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzi;
.source "com.google.mlkit:vision-common@@16.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_common/zzi<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_common/zzl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzl<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_common/zzi;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_common/zzo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzo<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;->zzb:I

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzo;->zzg([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    move-result-object v0

    return-object v0
.end method
