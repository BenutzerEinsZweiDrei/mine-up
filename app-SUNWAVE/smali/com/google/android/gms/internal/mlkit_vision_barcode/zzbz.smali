.class final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzas;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzas<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzas;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
