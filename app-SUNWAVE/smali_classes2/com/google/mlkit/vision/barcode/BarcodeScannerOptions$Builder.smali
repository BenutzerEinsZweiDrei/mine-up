.class public Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zza:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;
    .locals 4

    new-instance v0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iget v1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zza:I

    iget-object v2, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zzb:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v3}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;-><init>(ILjava/util/concurrent/Executor;Lcom/google/mlkit/vision/barcode/zza;)V

    return-object v0
.end method

.method public varargs setBarcodeFormats(I[I)Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;
    .locals 3

    iput p1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zza:I

    if-eqz p2, :cond_0

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1
    aget v1, p2, v0

    iget v2, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zza:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zza:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zzb:Ljava/util/concurrent/Executor;

    return-object p0
.end method
