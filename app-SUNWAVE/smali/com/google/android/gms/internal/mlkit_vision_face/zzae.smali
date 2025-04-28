.class Lcom/google/android/gms/internal/mlkit_vision_face/zzae;
.super Lcom/google/android/gms/internal/mlkit_vision_face/zzap;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face/zzbo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_face/zzap<",
        "TK;TV;>;",
        "Lcom/google/android/gms/internal/mlkit_vision_face/zzbo<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method bridge synthetic zza()Ljava/util/Collection;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final zzb(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzap;->zzi(Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face/zzam;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzap;->zzh(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
