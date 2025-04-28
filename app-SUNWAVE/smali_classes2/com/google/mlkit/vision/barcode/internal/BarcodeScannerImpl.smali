.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/BarcodeScanner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/barcode/Barcode;",
        ">;>;",
        "Lcom/google/mlkit/vision/barcode/BarcodeScanner;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    .line 1
    invoke-direct {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->build()Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->zzb:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    return-void
.end method

.method constructor <init>(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;-><init>()V

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    const/4 p1, 0x1

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;

    .line 5
    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;)V

    return-void
.end method

.method static synthetic zzd()Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;
    .locals 1

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->zzb:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    return-object v0
.end method


# virtual methods
.method public final process(Lcom/google/android/odml/image/MlImage;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/odml/image/MlImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->processBase(Lcom/google/android/odml/image/MlImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode;",
            ">;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->processBase(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
