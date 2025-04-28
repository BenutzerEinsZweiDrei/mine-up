.class public Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/mlkit/vision/text/TextRecognizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Lcom/google/mlkit/vision/text/Text;",
        ">;",
        "Lcom/google/mlkit/vision/text/TextRecognizer;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/mlkit/vision/text/internal/zzo;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;-><init>()V

    .line 2
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text/zziu;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_text/zzka;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzka;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzka;->zze()Lcom/google/android/gms/internal/mlkit_vision_text/zzkb;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;->zzf(Lcom/google/android/gms/internal/mlkit_vision_text/zzkb;)Lcom/google/android/gms/internal/mlkit_vision_text/zziu;

    const/4 p2, 0x1

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;->zze(Lcom/google/android/gms/internal/mlkit_vision_text/zziu;I)Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text/zzis;->zzg:Lcom/google/android/gms/internal/mlkit_vision_text/zzis;

    .line 5
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;->zzc(Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;Lcom/google/android/gms/internal/mlkit_vision_text/zzis;)V

    return-void
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
            "Lcom/google/mlkit/vision/text/Text;",
            ">;"
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
            "Lcom/google/mlkit/vision/text/Text;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->processBase(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
