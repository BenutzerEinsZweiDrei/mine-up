.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;
.super Lcom/google/android/gms/internal/mlkit_vision_text/zzbe;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_text/zzbe<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbe;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbe;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/mlkit_vision_text/zzbi<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbe;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text/zzbe;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_text/zzbl<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzbi;->zzb:I

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;->zzh([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;

    move-result-object v0

    return-object v0
.end method
