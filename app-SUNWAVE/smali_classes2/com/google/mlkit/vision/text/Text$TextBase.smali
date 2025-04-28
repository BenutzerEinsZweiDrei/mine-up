.class Lcom/google/mlkit/vision/text/Text$TextBase;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/text/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextBase"
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Landroid/graphics/Rect;

.field private final zzc:[Landroid/graphics/Point;

.field private final zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/Text$TextBase;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/mlkit/vision/text/Text$TextBase;->zzb:Landroid/graphics/Rect;

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/graphics/Point;

    .line 1
    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Point;

    iput-object p1, p0, Lcom/google/mlkit/vision/text/Text$TextBase;->zzc:[Landroid/graphics/Point;

    iput-object p4, p0, Lcom/google/mlkit/vision/text/Text$TextBase;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text$TextBase;->zzb:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCornerPoints()[Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text$TextBase;->zzc:[Landroid/graphics/Point;

    return-object v0
.end method

.method public getRecognizedLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text$TextBase;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method protected final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text$TextBase;->zza:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
