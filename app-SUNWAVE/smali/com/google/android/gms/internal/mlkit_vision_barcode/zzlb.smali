.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzky;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzla;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzla;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzla;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzky;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    return-object v0
.end method
