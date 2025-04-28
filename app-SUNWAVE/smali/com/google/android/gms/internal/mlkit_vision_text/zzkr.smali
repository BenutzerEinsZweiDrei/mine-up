.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zzkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text/zzkv;


# instance fields
.field final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/mlkit_vision_text/zzkv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_text/zzkq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzkr;->zza:Ljava/util/List;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkq;->zzc()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzle;

    .line 3
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzle;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_text/zzkq;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzkr;->zza:Ljava/util/List;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzkv;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkv;->zza(Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;)V

    goto :goto_0

    :cond_0
    return-void
.end method
