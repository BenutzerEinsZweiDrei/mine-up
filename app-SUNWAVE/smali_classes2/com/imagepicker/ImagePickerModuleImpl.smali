.class public Lcom/imagepicker/ImagePickerModuleImpl;
.super Ljava/lang/Object;
.source "ImagePickerModuleImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# static fields
.field static final NAME:Ljava/lang/String; = "ImagePicker"

.field public static final REQUEST_LAUNCH_IMAGE_CAPTURE:I = 0x32c9

.field public static final REQUEST_LAUNCH_LIBRARY:I = 0x32cb

.field public static final REQUEST_LAUNCH_VIDEO_CAPTURE:I = 0x32ca


# instance fields
.field callback:Lcom/facebook/react/bridge/Callback;

.field cameraCaptureURI:Landroid/net/Uri;

.field private fileUri:Landroid/net/Uri;

.field options:Lcom/imagepicker/Options;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 45
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAssetsObtained$0$com-imagepicker-ImagePickerModuleImpl(Ljava/util/List;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    :try_start_0
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    iget-object v6, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p1, v5, v6}, Lcom/imagepicker/Utils;->getResponseMap(Ljava/util/List;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :goto_0
    iput-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 175
    :try_start_1
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 177
    :goto_2
    iput-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    .line 178
    throw p1
.end method

.method public launchCamera(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcom/imagepicker/Utils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/imagepicker/Utils;->errCameraUnavailable:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    const-string v1, "Activity error"

    invoke-static {v0, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 60
    :cond_1
    iget-object v4, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v4, v0}, Lcom/imagepicker/Utils;->isCameraPermissionFulfilled(Landroid/content/Context;Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    sget-object v1, Lcom/imagepicker/Utils;->cameraPermissionDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 65
    :cond_2
    iput-object p2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    .line 66
    new-instance v4, Lcom/imagepicker/Options;

    invoke-direct {v4, p1}, Lcom/imagepicker/Options;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v4, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 68
    iget-object p1, v4, Lcom/imagepicker/Options;->saveToPhotos:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-gt p1, v4, :cond_3

    invoke-static {v0}, Lcom/imagepicker/Utils;->hasPermission(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v3, [Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/imagepicker/Utils;->errPermission:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    iget-object p1, p1, Lcom/imagepicker/Options;->mediaType:Ljava/lang/String;

    sget-object v4, Lcom/imagepicker/Utils;->mediaTypeVideo:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x32ca

    .line 79
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    iget v5, v5, Lcom/imagepicker/Options;->videoQuality:I

    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    iget v5, v5, Lcom/imagepicker/Options;->durationLimit:I

    if-lez v5, :cond_4

    .line 82
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    iget v5, v5, Lcom/imagepicker/Options;->durationLimit:I

    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    :cond_4
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v6, "mp4"

    invoke-static {v5, v6}, Lcom/imagepicker/Utils;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 85
    iget-object v6, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v5, v6}, Lcom/imagepicker/Utils;->createUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/imagepicker/ImagePickerModuleImpl;->cameraCaptureURI:Landroid/net/Uri;

    goto :goto_0

    :cond_5
    const/16 p1, 0x32c9

    .line 88
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v6, "jpg"

    invoke-static {v5, v6}, Lcom/imagepicker/Utils;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 90
    iget-object v6, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v5, v6}, Lcom/imagepicker/Utils;->createUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/imagepicker/ImagePickerModuleImpl;->cameraCaptureURI:Landroid/net/Uri;

    .line 93
    :goto_0
    iget-object v6, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    iget-object v6, v6, Lcom/imagepicker/Options;->useFrontCamera:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 94
    invoke-static {v4}, Lcom/imagepicker/Utils;->setFrontCamera(Landroid/content/Intent;)V

    .line 97
    :cond_6
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/imagepicker/ImagePickerModuleImpl;->fileUri:Landroid/net/Uri;

    .line 98
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModuleImpl;->cameraCaptureURI:Landroid/net/Uri;

    const-string v6, "output"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v5, 0x3

    .line 99
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    :try_start_0
    invoke-virtual {v0, v4, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 104
    sget-object v3, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 105
    iput-object v1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    :goto_1
    return-void
.end method

.method public launchImageLibrary(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 10

    .line 110
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    const-string v2, "Activity error"

    invoke-static {v0, v2}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 116
    :cond_0
    iput-object p2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    .line 117
    new-instance v3, Lcom/imagepicker/Options;

    invoke-direct {v3, p1}, Lcom/imagepicker/Options;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v3, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    const/16 p1, 0x32cb

    .line 123
    iget v3, v3, Lcom/imagepicker/Options;->selectionLimit:I

    if-ne v3, v2, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    .line 125
    :goto_0
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    iget-object v5, v5, Lcom/imagepicker/Options;->mediaType:Ljava/lang/String;

    sget-object v6, Lcom/imagepicker/Utils;->mediaTypePhoto:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 126
    iget-object v6, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    iget-object v6, v6, Lcom/imagepicker/Options;->mediaType:Ljava/lang/String;

    sget-object v7, Lcom/imagepicker/Utils;->mediaTypeVideo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 128
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x21

    if-ge v7, v8, :cond_4

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    .line 130
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.PICK"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_3
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.GET_CONTENT"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "android.intent.category.OPENABLE"

    .line 133
    invoke-virtual {v7, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 136
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.provider.action.PICK_IMAGES"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    if-nez v4, :cond_7

    .line 140
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v8, :cond_5

    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    .line 141
    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    if-eq v3, v2, :cond_7

    if-nez v3, :cond_6

    .line 145
    invoke-static {}, Landroid/provider/MediaStore;->getPickImagesMaxLimit()I

    move-result v3

    :cond_6
    const-string v4, "android.provider.extra.PICK_IMAGES_MAX"

    .line 146
    invoke-virtual {v7, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    :goto_2
    const-string v3, "image/*"

    if-eqz v5, :cond_8

    .line 152
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    const-string v4, "video/*"

    if-eqz v6, :cond_9

    .line 154
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 155
    :cond_9
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v8, :cond_a

    const-string v5, "*/*"

    .line 156
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v7, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :cond_a
    :goto_3
    :try_start_0
    invoke-virtual {v0, v7, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 163
    sget-object v2, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    :goto_4
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4

    .line 186
    invoke-static {p2}, Lcom/imagepicker/Utils;->isValidRequestCode(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    const/16 p1, 0x32c9

    if-ne p2, p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->fileUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/imagepicker/Utils;->deleteFile(Landroid/net/Uri;)V

    :cond_1
    const/4 p1, 0x0

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v2, p3, [Ljava/lang/Object;

    invoke-static {}, Lcom/imagepicker/Utils;->getCancelMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 198
    :try_start_1
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    new-array p3, p3, [Ljava/lang/Object;

    sget-object v3, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    aput-object v1, p3, p1

    invoke-interface {v2, p3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    goto :goto_1

    :goto_0
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    .line 201
    throw p1

    :cond_2
    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 214
    :pswitch_0
    invoke-static {p4}, Lcom/imagepicker/Utils;->collectUrisFromData(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imagepicker/ImagePickerModuleImpl;->onAssetsObtained(Ljava/util/List;)V

    goto :goto_2

    .line 218
    :pswitch_1
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    iget-object p1, p1, Lcom/imagepicker/Options;->saveToPhotos:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 219
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->cameraCaptureURI:Landroid/net/Uri;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string p3, "video"

    invoke-static {p1, p2, p3}, Lcom/imagepicker/Utils;->saveToPublicDirectory(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    :cond_3
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->fileUri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imagepicker/ImagePickerModuleImpl;->onAssetsObtained(Ljava/util/List;)V

    goto :goto_2

    .line 206
    :pswitch_2
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    iget-object p1, p1, Lcom/imagepicker/Options;->saveToPhotos:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 207
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->cameraCaptureURI:Landroid/net/Uri;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string p3, "photo"

    invoke-static {p1, p2, p3}, Lcom/imagepicker/Utils;->saveToPublicDirectory(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    :cond_4
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->fileUri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imagepicker/ImagePickerModuleImpl;->onAssetsObtained(Ljava/util/List;)V

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x32c9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onAssetsObtained(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/imagepicker/ImagePickerModuleImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/imagepicker/ImagePickerModuleImpl$$ExternalSyntheticLambda0;-><init>(Lcom/imagepicker/ImagePickerModuleImpl;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
