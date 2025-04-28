.class abstract Lcom/google/android/gms/internal/mlkit_vision_text/zzax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field zzb:I

.field zzc:I

.field zzd:I

.field final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;Lcom/google/android/gms/internal/mlkit_vision_text/zzat;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;->zza(Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzb:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;->zze()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzc:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzd:I

    return-void
.end method

.method private final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;->zza(Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzb:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 1
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzc:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzb()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzd:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zza(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzc:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;->zzf(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzc:I

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzb()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzd:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzaa;->zzd(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzb:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;->zzb:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzd:I

    .line 3
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzc:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzc:I

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;->zzd:I

    return-void
.end method

.method abstract zza(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method
