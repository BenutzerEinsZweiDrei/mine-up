.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcz;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcz;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcz;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzda;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcz;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;-><init>(ILcom/google/android/gms/internal/mlkit_vision_barcode/zzcz;)V

    return-object v0
.end method
