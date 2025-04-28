.class public Lcom/google/mlkit/vision/text/TextRecognition;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient()Lcom/google/mlkit/vision/text/TextRecognizer;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/mlkit/vision/text/TextRecognizerOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/vision/text/TextRecognizerOptions$Builder;-><init>()V

    .line 1
    invoke-virtual {v0}, Lcom/google/mlkit/vision/text/TextRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/text/TextRecognizerOptions;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v1

    const-class v2, Lcom/google/mlkit/vision/text/internal/zzk;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/text/internal/zzk;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/mlkit/vision/text/internal/zzk;->zza(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static getClient(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;
    .locals 2

    .line 5
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/vision/text/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/text/internal/zzk;

    invoke-virtual {v0, p0}, Lcom/google/mlkit/vision/text/internal/zzk;->zza(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object p0

    return-object p0
.end method
