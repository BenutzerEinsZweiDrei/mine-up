.class public interface abstract Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorCreator;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DetectorCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "OptionsT::",
        "Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorOptions<",
        "TResultT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorOptions;)Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOptionsT;)",
            "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
            "TResultT;>;"
        }
    .end annotation
.end method
