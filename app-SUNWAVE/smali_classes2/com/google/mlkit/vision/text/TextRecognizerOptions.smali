.class public Lcom/google/mlkit/vision/text/TextRecognizerOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/text/TextRecognizerOptions$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_OPTIONS:Lcom/google/mlkit/vision/text/TextRecognizerOptions;


# instance fields
.field final zza:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/text/TextRecognizerOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/vision/text/TextRecognizerOptions$Builder;-><init>()V

    .line 1
    invoke-virtual {v0}, Lcom/google/mlkit/vision/text/TextRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/text/TextRecognizerOptions;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->DEFAULT_OPTIONS:Lcom/google/mlkit/vision/text/TextRecognizerOptions;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/mlkit/vision/text/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/mlkit/vision/text/TextRecognizerOptions;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/mlkit/vision/text/TextRecognizerOptions;

    iget-object v0, p0, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->zzb:Ljava/util/concurrent/Executor;

    .line 3
    iget-object p1, p1, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getCreatorClass()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->getIsThickClient()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "com.google.android.gms.vision.text.mlkit.TextRecognizerCreator"

    return-object v0

    :cond_0
    const-string v0, "com.google.mlkit.vision.text.bundled.latin.BundledLatinTextRecognizerCreator"

    return-object v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->zzb:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getIsThickClient()Z
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.mlkit.dynamite.text.latin"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v0
.end method

.method public final getLoggingEventId()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->getIsThickClient()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5efd

    return v0

    :cond_0
    const/16 v0, 0x5ef2

    return v0
.end method

.method public final getLoggingLibraryName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->getIsThickClient()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "play-services-mlkit-text-recognition"

    return-object v0

    :cond_0
    const-string v0, "text-recognition-latin"

    return-object v0
.end method

.method public final getModuleId()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->getIsThickClient()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "com.google.android.gms.vision.ocr"

    return-object v0

    :cond_0
    const-string v0, "com.google.mlkit.dynamite.text.latin"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->zzb:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
