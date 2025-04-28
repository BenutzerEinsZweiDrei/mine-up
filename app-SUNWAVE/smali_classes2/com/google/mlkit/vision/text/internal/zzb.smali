.class final Lcom/google/mlkit/vision/text/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/mlkit/vision/text/internal/zzj;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

.field private zzc:Z

.field private zzd:Z

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzb:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/internal/zzb;->zzb()V

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzc:Z

    const/16 v2, 0xd

    if-nez v1, :cond_2

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;->zze()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzc:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzb:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 4
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to init text recognizer "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    invoke-direct {v1, v0, v2, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_2
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzlk;

    .line 7
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v4

    .line 8
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result v5

    .line 9
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result v6

    .line 10
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result v3

    invoke-static {v3}, Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;->convertToMVRotation(I)I

    move-result v7

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlk;-><init>(IIIIJ)V

    .line 12
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getImageDataWrapper(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 13
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text/zzlk;)Lcom/google/android/gms/internal/mlkit_vision_text/zzlw;

    move-result-object p1

    new-instance v0, Lcom/google/mlkit/vision/text/Text;

    .line 14
    invoke-direct {v0, p1}, Lcom/google/mlkit/vision/text/Text;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzlw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzb:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 15
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to run text recognizer "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 16
    :goto_2
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    invoke-direct {v1, v0, v2, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method public final zzb()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;

    if-nez v0, :cond_4

    const/16 v0, 0xd

    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzb:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 1
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzb:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 4
    invoke-interface {v3}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getModuleId()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzb:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 6
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getCreatorClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlo;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mlkit_vision_text/zzlp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zza:Landroid/content/Context;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlp;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 14
    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzb:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 9
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to create text recognizer "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 16
    :cond_1
    new-instance v2, Ljava/lang/String;

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_1
    new-instance v3, Lcom/google/mlkit/common/MlKitException;

    invoke-direct {v3, v2, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v1

    .line 3
    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzb:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 11
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 10
    iget-boolean v0, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzd:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zza:Landroid/content/Context;

    const-string v1, "ocr"

    .line 15
    invoke-static {v0, v1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzd:Z

    .line 16
    :cond_2
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const/16 v1, 0xe

    const-string v2, "Waiting for the text optional module to be downloaded. Please wait."

    invoke-direct {v0, v2, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 12
    :cond_3
    new-instance v2, Lcom/google/mlkit/common/MlKitException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzb:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 13
    invoke-interface {v6}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "Failed to load text module %s. %s"

    .line 14
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :cond_4
    return-void
.end method

.method public final zzc()V
    .locals 4

    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;

    if-eqz v0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzb:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 2
    invoke-interface {v1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to release text recognizer "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v2, "DecoupledTextDelegate"

    .line 3
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzlm;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/text/internal/zzb;->zzc:Z

    return-void
.end method
