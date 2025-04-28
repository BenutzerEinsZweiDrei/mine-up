.class public Lcom/google/mlkit/vision/text/Text$Element;
.super Lcom/google/mlkit/vision/text/Text$TextBase;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/text/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Element"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzls;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzls;->zzc()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzls;->zza()Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzls;->zzd()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzls;->zzb()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/mlkit/vision/text/Text$TextBase;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;)V
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
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/mlkit/vision/text/Text$TextBase;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/Text$TextBase;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
