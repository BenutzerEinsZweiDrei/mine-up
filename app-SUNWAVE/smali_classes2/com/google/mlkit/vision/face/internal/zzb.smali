.class interface abstract Lcom/google/mlkit/vision/face/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# virtual methods
.method public abstract zza(Lcom/google/mlkit/vision/common/InputImage;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation
.end method

.method public abstract zzb()V
.end method

.method public abstract zzd()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation
.end method
