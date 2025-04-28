.class public final Lcom/google/mlkit/vision/text/internal/zzl;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap<",
        "Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;",
        "Lcom/google/mlkit/vision/text/internal/zzo;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/zzl;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/text/internal/zzo;

    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzl;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/vision/text/internal/zzo;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V

    return-object v0
.end method
