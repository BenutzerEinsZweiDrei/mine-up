.class public Lcom/google/mlkit/vision/text/Text$TextBlock;
.super Lcom/google/mlkit/vision/text/Text$TextBase;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/text/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextBlock"
.end annotation


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$Line;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzlq;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlq;->zzc()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlq;->zza()Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlq;->zzd()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlq;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/mlkit/vision/text/Text$TextBase;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzlq;->zze()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/google/mlkit/vision/text/zzc;->zza:Lcom/google/mlkit/vision/text/zzc;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbs;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text/zzu;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/text/Text$TextBlock;->zza:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$Line;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/mlkit/vision/text/Text$TextBase;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/mlkit/vision/text/Text$TextBlock;->zza:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$Line;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text$TextBlock;->zza:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/Text$TextBase;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
