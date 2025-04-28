.class final Lcom/google/mlkit/vision/barcode/internal/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/internal/zzj;


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Z

.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zze:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

    return-void
.end method

.method static zzd(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.google.mlkit.dynamite.barcode"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzc()Z

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Z

    const/16 v2, 0xd

    if-nez v1, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;->zze()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to init barcode scanner."

    invoke-direct {v0, v1, v2, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/Image$Plane;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    :cond_2
    move v5, v1

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzni;

    .line 9
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v4

    .line 10
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result v6

    .line 11
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result v3

    invoke-static {v3}, Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;->convertToMVRotation(I)I

    move-result v7

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzni;-><init>(IIIIJ)V

    .line 13
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getImageDataWrapper(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 14
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzni;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;

    new-instance v2, Lcom/google/mlkit/vision/barcode/Barcode;

    new-instance v3, Lcom/google/mlkit/vision/barcode/internal/zzl;

    .line 18
    invoke-direct {v3, v1}, Lcom/google/mlkit/vision/barcode/internal/zzl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;)V

    invoke-direct {v2, v3}, Lcom/google/mlkit/vision/barcode/Barcode;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzk;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0

    :catch_1
    move-exception p1

    .line 15
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to run barcode scanner."

    invoke-direct {v0, v1, v2, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
.end method

.method public final zzb()V
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DecoupledBarcodeScanner"

    const-string v2, "Failed to release barcode scanner."

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Z

    :cond_0
    return-void
.end method

.method public final zzc()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzb:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xd

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzb:Z

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v1, "com.google.mlkit.dynamite.barcode"

    const-string v3, "com.google.mlkit.vision.barcode.bundled.internal.ThickBarcodeScannerCreator"

    .line 3
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    const-string v3, "Failed to create thick barcode scanner."

    invoke-direct {v1, v3, v2, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 5
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    const-string v3, "Failed to load the bundled barcode module."

    invoke-direct {v1, v3, v2, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzb:Z

    .line 6
    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v3, "com.google.android.gms.vision.barcode"

    const-string v4, "com.google.android.gms.vision.barcode.mlkit.BarcodeScannerCreator"

    .line 7
    invoke-virtual {p0, v0, v3, v4}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;

    invoke-static {v0, v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;)V

    iget-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzb:Z

    return v0

    :catch_2
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;->zzC:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;

    invoke-static {v1, v3}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;)V

    .line 9
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    const-string v3, "Failed to create thin barcode scanner."

    invoke-direct {v1, v3, v2, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 4
    :catch_3
    iget-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzc:Z

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd:Landroid/content/Context;

    const-string v2, "barcode"

    .line 10
    invoke-static {v0, v2}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzc:Z

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;->zzB:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;

    invoke-static {v0, v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;)V

    .line 12
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const/16 v1, 0xe

    const-string v2, "Waiting for the barcode module to be downloaded. Please wait."

    invoke-direct {v0, v2, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd:Landroid/content/Context;

    .line 1
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznb;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    move-result-object p1

    iget-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmr;

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zze:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 4
    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza()I

    move-result v0

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmr;-><init>(I)V

    .line 5
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmr;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;

    move-result-object p1

    return-object p1
.end method
