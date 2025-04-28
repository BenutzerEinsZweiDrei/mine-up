.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zzbs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# direct methods
.method public static zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text/zzu;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TF;>;",
            "Lcom/google/android/gms/internal/mlkit_vision_text/zzu<",
            "-TF;+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzbp;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbp;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text/zzu;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzbr;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbr;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text/zzu;)V

    :goto_0
    return-object v0
.end method
