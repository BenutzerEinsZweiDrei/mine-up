.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbu;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbu<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbu;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbu;

    return-object p0
.end method

.method public final zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbu;

    return-object p0
.end method

.method public final zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbu;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;->zzb:I

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzg([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    move-result-object v0

    return-object v0
.end method
