.class Lcom/google/android/gms/internal/mlkit_vision_text/zzan;
.super Lcom/google/android/gms/internal/mlkit_vision_text/zzal;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic zzf:Lcom/google/android/gms/internal/mlkit_vision_text/zzao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzao;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text/zzal;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/mlkit_vision_text/zzao;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzan;->zzf:Lcom/google/android/gms/internal/mlkit_vision_text/zzao;

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzao;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/android/gms/internal/mlkit_vision_text/zzal;)V

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb:Ljava/util/Collection;

    .line 3
    check-cast v1, Ljava/util/List;

    .line 4
    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzan;->zzf:Lcom/google/android/gms/internal/mlkit_vision_text/zzao;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzao;->zzd(Lcom/google/android/gms/internal/mlkit_vision_text/zzao;)I

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zza()V

    :cond_0
    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb:Ljava/util/Collection;

    .line 3
    check-cast v1, Ljava/util/List;

    .line 4
    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb:Ljava/util/Collection;

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzan;->zzf:Lcom/google/android/gms/internal/mlkit_vision_text/zzao;

    sub-int/2addr p2, v0

    .line 6
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzao;->zzf(Lcom/google/android/gms/internal/mlkit_vision_text/zzao;I)I

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zza()V

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzam;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzam;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzan;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzam;

    .line 4
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzam;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzan;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzan;->zzf:Lcom/google/android/gms/internal/mlkit_vision_text/zzao;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzao;->zze(Lcom/google/android/gms/internal/mlkit_vision_text/zzao;)I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzc()V

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final subList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzan;->zzf:Lcom/google/android/gms/internal/mlkit_vision_text/zzao;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzb:Ljava/util/Collection;

    .line 2
    check-cast v2, Ljava/util/List;

    .line 3
    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzal;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzal;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 4
    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzao;->zzi(Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text/zzal;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
