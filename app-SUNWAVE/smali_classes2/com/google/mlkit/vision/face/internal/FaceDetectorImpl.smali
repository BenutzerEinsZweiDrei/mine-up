.class public Lcom/google/mlkit/vision/face/internal/FaceDetectorImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"

# interfaces
.implements Lcom/google/mlkit/vision/face/FaceDetector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/face/Face;",
        ">;>;",
        "Lcom/google/mlkit/vision/face/FaceDetector;"
    }
.end annotation


# static fields
.field static final zzb:Lcom/google/mlkit/vision/face/FaceDetectorOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 1
    invoke-direct {v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->build()Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/face/internal/FaceDetectorImpl;->zzb:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mlkit/vision/face/internal/zzh;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;Lcom/google/mlkit/vision/face/FaceDetectorOptions;Lcom/google/mlkit/vision/face/internal/zzc;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzf()Ljava/util/concurrent/Executor;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;->getExecutorToUse(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 2
    invoke-static {}, Lcom/google/mlkit/vision/face/internal/zzj;->zzb()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/mlkit_vision_face/zzll;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzla;

    move-result-object p4

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;-><init>()V

    .line 4
    invoke-static {p3}, Lcom/google/mlkit/vision/face/internal/zzj;->zza(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzie;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzi()Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzji;)Lcom/google/android/gms/internal/mlkit_vision_face/zziv;

    const/4 p2, 0x1

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzld;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zziv;I)Lcom/google/android/gms/internal/mlkit_vision_face/zzld;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzit;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzit;

    .line 7
    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzla;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzld;Lcom/google/android/gms/internal/mlkit_vision_face/zzit;)V

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
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
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
            "Lcom/google/mlkit/vision/face/Face;",
            ">;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->processBase(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
