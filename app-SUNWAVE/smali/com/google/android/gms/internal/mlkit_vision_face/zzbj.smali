.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzbj;
.super Lcom/google/android/gms/internal/mlkit_vision_face/zzbf;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_face/zzbf<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzbf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzbj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/mlkit_vision_face/zzbj<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzbf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzbf;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_face/zzbm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_face/zzbm<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzbj;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzbj;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzbj;->zzb:I

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzbm;->zzg([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_vision_face/zzbm;

    move-result-object v0

    return-object v0
.end method
