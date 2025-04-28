.class final Lcom/google/mlkit/vision/text/internal/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/mlkit/vision/text/internal/zzj;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzp;

.field private zzc:Z

.field private zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzh;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzp;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzp;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzp;

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzh;

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/internal/zzc;->zzb()V

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzh;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result v1

    invoke-static {v1}, Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;->convertToMVRotation(I)I

    move-result v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->convertToUpRightBitmap(Lcom/google/mlkit/vision/common/InputImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move v7, v1

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 8
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_text/zzd;

    .line 9
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result v2

    .line 10
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_text/zzd;-><init>(IIIJI)V

    :try_start_0
    iget-object p1, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzh;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzh;

    invoke-virtual {p1, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text/zzh;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text/zzd;)[Lcom/google/android/gms/internal/mlkit_vision_text/zzl;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    invoke-static {p1}, Lcom/google/mlkit/vision/text/internal/zzi;->zza([Lcom/google/android/gms/internal/mlkit_vision_text/zzl;)Lcom/google/mlkit/vision/text/Text;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const/16 v1, 0xd

    const-string v2, "Failed to run legacy text recognizer."

    invoke-direct {v0, v2, v1, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 2
    :cond_2
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const/16 v0, 0xe

    const-string v1, "Waiting for the text recognition module to be downloaded. Please wait."

    invoke-direct {p1, v1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public final zzb()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzh;

    if-nez v0, :cond_1

    const/16 v0, 0xd

    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zza:Landroid/content/Context;

    .line 1
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v3, "com.google.android.gms.vision.dynamite"

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzj;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mlkit_vision_text/zzk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zza:Landroid/content/Context;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzp;

    .line 6
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text/zzk;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text/zzp;)Lcom/google/android/gms/internal/mlkit_vision_text/zzh;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzh;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zzc:Z

    if-nez v1, :cond_0

    const-string v1, "LegacyTextDelegate"

    const-string v2, "Request OCR optional module download."

    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zza:Landroid/content/Context;

    const-string v2, "ocr"

    .line 8
    invoke-static {v1, v2}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zzc:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .line 9
    new-instance v2, Lcom/google/mlkit/common/MlKitException;

    const-string v3, "Failed to load deprecated vision dynamite module."

    invoke-direct {v2, v3, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 10
    new-instance v2, Lcom/google/mlkit/common/MlKitException;

    const-string v3, "Failed to create legacy text recognizer."

    invoke-direct {v2, v3, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :cond_1
    return-void
.end method

.method public final zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzh;

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzh;->zzd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LegacyTextDelegate"

    const-string v2, "Failed to release legacy text recognizer."

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzh;

    :cond_0
    return-void
.end method
