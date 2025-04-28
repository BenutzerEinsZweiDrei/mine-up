.class public final Lcom/google/mlkit/vision/text/internal/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# instance fields
.field private final zza:Lcom/google/mlkit/vision/text/internal/zzl;

.field private final zzb:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;


# direct methods
.method constructor <init>(Lcom/google/mlkit/vision/text/internal/zzl;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/zzk;->zza:Lcom/google/mlkit/vision/text/internal/zzl;

    iput-object p2, p0, Lcom/google/mlkit/vision/text/internal/zzk;->zzb:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;

    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzk;->zza:Lcom/google/mlkit/vision/text/internal/zzl;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/mlkit/vision/text/internal/zzl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/text/internal/zzo;

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzk;->zzb:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    .line 3
    invoke-interface {p1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;->getExecutorToUse(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;

    move-result-object v3

    .line 5
    invoke-interface {p1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;-><init>(Lcom/google/mlkit/vision/text/internal/zzo;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;Z)V

    return-object v0
.end method
