.class public Lorg/reactnative/barcodedetector/RNBarcodeDetector;
.super Ljava/lang/Object;
.source "RNBarcodeDetector.java"


# static fields
.field public static ALL_FORMATS:I = 0x0

.field public static ALTERNATE_MODE:I = 0x1

.field public static INVERTED_MODE:I = 0x2

.field public static NORMAL_MODE:I


# instance fields
.field private mBarcodeDetector:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

.field private mBarcodeType:I

.field private mBuilder:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

.field private mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeType:I

    .line 28
    new-instance v0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;-><init>()V

    iget v1, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeType:I

    new-array p1, p1, [I

    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->setBarcodeFormats(I[I)Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    move-result-object p1

    iput-object p1, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBuilder:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    return-void
.end method

.method private createBarcodeDetector()V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBuilder:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->build()Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScanning;->getClient(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    move-result-object v0

    iput-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    return-void
.end method

.method private releaseBarcodeDetector()V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScanner;->close()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    :cond_0
    return-void
.end method


# virtual methods
.method public detect(Lorg/reactnative/frame/RNFrame;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactnative/frame/RNFrame;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getDimensions()Lorg/reactnative/camera/utils/ImageDimensions;

    move-result-object v0

    iget-object v1, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {v0, v1}, Lorg/reactnative/camera/utils/ImageDimensions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->releaseBarcodeDetector()V

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    if-nez v0, :cond_1

    .line 51
    invoke-direct {p0}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->createBarcodeDetector()V

    .line 52
    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getDimensions()Lorg/reactnative/camera/utils/ImageDimensions;

    move-result-object v0

    iput-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    .line 55
    :cond_1
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getFrame()Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/barcode/BarcodeScanner;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public isOperational()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->createBarcodeDetector()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->releaseBarcodeDetector()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    return-void
.end method

.method public setBarcodeType(I)V
    .locals 2

    .line 59
    iget v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeType:I

    if-eq p1, v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->release()V

    .line 61
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBuilder:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, p1, v1}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->setBarcodeFormats(I[I)Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    .line 62
    iput p1, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeType:I

    :cond_0
    return-void
.end method
