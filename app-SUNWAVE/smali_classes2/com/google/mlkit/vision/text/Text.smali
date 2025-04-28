.class public Lcom/google/mlkit/vision/text/Text;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/text/Text$TextBase;,
        Lcom/google/mlkit/vision/text/Text$Element;,
        Lcom/google/mlkit/vision/text/Text$Line;,
        Lcom/google/mlkit/vision/text/Text$TextBlock;
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzlw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/text/Text;->zza:Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlw;->zza()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mlkit/vision/text/Text;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlw;->zzb()Ljava/util/List;

    move-result-object p1

    sget-object v1, Lcom/google/mlkit/vision/text/zza;->zza:Lcom/google/mlkit/vision/text/zza;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbs;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text/zzu;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/text/Text;->zza:Ljava/util/List;

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p1, p0, Lcom/google/mlkit/vision/text/Text;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text;->zza:Ljava/util/List;

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
