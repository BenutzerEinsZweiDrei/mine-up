.class public Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;
.super Landroid/os/AsyncTask;
.source "TextRecognizerAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/text/Text$TextBlock;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDelegate:Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

.field private mHeight:I

.field private mImageData:[B

.field private mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

.field private mPaddingLeft:I

.field private mPaddingTop:I

.field private mRotation:I

.field private mScaleX:D

.field private mScaleY:D

.field private mTextRecognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

.field private mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;Lcom/facebook/react/uimanager/ThemedReactContext;[BIIIFIIIII)V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

    .line 58
    iput-object p2, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 59
    iput-object p3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageData:[B

    .line 60
    iput p4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mWidth:I

    .line 61
    iput p5, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mHeight:I

    .line 62
    iput p6, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mRotation:I

    .line 63
    new-instance p1, Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-direct {p1, p4, p5, p6, p8}, Lorg/reactnative/camera/utils/ImageDimensions;-><init>(IIII)V

    iput-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    int-to-double p2, p9

    .line 64
    invoke-virtual {p1}, Lorg/reactnative/camera/utils/ImageDimensions;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p7

    float-to-double p4, p1

    div-double/2addr p2, p4

    iput-wide p2, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleX:D

    int-to-double p1, p10

    .line 65
    iget-object p3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {p3}, Lorg/reactnative/camera/utils/ImageDimensions;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p7

    float-to-double p3, p3

    div-double/2addr p1, p3

    iput-wide p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleY:D

    .line 66
    iput p11, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingLeft:I

    .line 67
    iput p12, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingTop:I

    return-void
.end method

.method private rotateTextX(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 7

    const-string v0, "bounds"

    .line 188
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "origin"

    .line 190
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 191
    iget-object v4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    .line 192
    invoke-virtual {v4}, Lorg/reactnative/camera/utils/ImageDimensions;->getWidth()I

    move-result v4

    iget-wide v5, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleX:D

    .line 191
    invoke-static {v3, v4, v5, v6}, Lorg/reactnative/facedetector/FaceDetectorUtils;->positionMirroredHorizontally(Lcom/facebook/react/bridge/ReadableMap;ID)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string v4, "size"

    .line 194
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    const-string v5, "width"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    neg-double v4, v4

    .line 195
    invoke-static {v3, v4, v5}, Lorg/reactnative/facedetector/FaceDetectorUtils;->positionTranslatedHorizontally(Lcom/facebook/react/bridge/ReadableMap;D)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 197
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 198
    invoke-interface {v4, v1}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 199
    invoke-interface {v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 201
    invoke-interface {p1, v0, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v0, "components"

    .line 203
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    .line 204
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 205
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 206
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 207
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 208
    invoke-direct {p0, v4}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->rotateTextX(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    .line 209
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_0
    invoke-interface {p1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object p1
.end method

.method private serializeBounds(Landroid/graphics/Rect;)Lcom/facebook/react/bridge/WritableMap;
    .locals 8

    .line 156
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 157
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 160
    iget v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mWidth:I

    div-int/lit8 v4, v3, 0x2

    if-ge v0, v4, :cond_0

    .line 161
    iget v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingLeft:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto :goto_0

    .line 162
    :cond_0
    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_1

    .line 163
    iget v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingLeft:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 166
    :cond_1
    :goto_0
    iget v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mHeight:I

    div-int/lit8 v4, v3, 0x2

    if-ge p1, v4, :cond_2

    .line 167
    iget v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingTop:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    goto :goto_1

    .line 168
    :cond_2
    div-int/lit8 v3, v3, 0x2

    if-le p1, v3, :cond_3

    .line 169
    iget v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingTop:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 172
    :cond_3
    :goto_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    int-to-double v4, v0

    .line 173
    iget-wide v6, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleX:D

    mul-double/2addr v4, v6

    const-string v0, "x"

    invoke-interface {v3, v0, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-double v0, v1

    .line 174
    iget-wide v4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleY:D

    mul-double/2addr v0, v4

    const-string v4, "y"

    invoke-interface {v3, v4, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 176
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    int-to-double v1, v2

    .line 177
    iget-wide v4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleX:D

    mul-double/2addr v1, v4

    const-string v4, "width"

    invoke-interface {v0, v4, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-double v1, p1

    .line 178
    iget-wide v4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleY:D

    mul-double/2addr v1, v4

    const-string p1, "height"

    invoke-interface {v0, p1, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 180
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "origin"

    .line 181
    invoke-interface {p1, v1, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "size"

    .line 182
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object p1
.end method

.method private serializeText(Lcom/google/mlkit/vision/text/Text$Element;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 140
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    const-string v2, "components"

    .line 143
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 145
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Element;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Element;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->serializeBounds(Landroid/graphics/Rect;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "bounds"

    .line 148
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string p1, "type"

    const-string v1, "element"

    .line 150
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private serializeText(Lcom/google/mlkit/vision/text/Text$Line;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 121
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 124
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Line;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/vision/text/Text$Element;

    .line 125
    invoke-direct {p0, v3}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->serializeText(Lcom/google/mlkit/vision/text/Text$Element;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_0
    const-string v2, "components"

    .line 127
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 129
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Line;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$Line;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->serializeBounds(Landroid/graphics/Rect;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "bounds"

    .line 132
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string p1, "type"

    const-string v1, "line"

    .line 134
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private serializeText(Lcom/google/mlkit/vision/text/Text$TextBlock;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 102
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getLines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/vision/text/Text$Line;

    .line 106
    invoke-direct {p0, v3}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->serializeText(Lcom/google/mlkit/vision/text/Text$Line;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_0
    const-string v2, "components"

    .line 108
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 110
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->serializeBounds(Landroid/graphics/Rect;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "bounds"

    .line 113
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string p1, "type"

    const-string v1, "block"

    .line 115
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

    if-nez p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    sget-object p1, Lcom/google/mlkit/vision/text/TextRecognizerOptions;->DEFAULT_OPTIONS:Lcom/google/mlkit/vision/text/TextRecognizerOptions;

    invoke-static {p1}, Lcom/google/mlkit/vision/text/TextRecognition;->getClient(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object p1

    iput-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mTextRecognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

    .line 76
    iget-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageData:[B

    iget v0, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mWidth:I

    iget v1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mHeight:I

    iget v2, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mRotation:I

    invoke-static {p1, v0, v1, v2}, Lorg/reactnative/frame/RNFrameFactory;->buildFrame([BIII)Lorg/reactnative/frame/RNFrame;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mTextRecognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getFrame()Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/text/TextRecognizer;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/text/Text;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text;->getTextBlocks()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mTextRecognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/TextRecognizer;->close()V

    :cond_0
    if-eqz p1, :cond_3

    .line 87
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 89
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/vision/text/Text$TextBlock;

    .line 90
    invoke-direct {p0, v2}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->serializeText(Lcom/google/mlkit/vision/text/Text$TextBlock;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {v3}, Lorg/reactnative/camera/utils/ImageDimensions;->getFacing()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 92
    invoke-direct {p0, v2}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->rotateTextX(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 94
    :cond_1
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

    invoke-interface {p1, v0}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;->onTextRecognized(Lcom/facebook/react/bridge/WritableArray;)V

    .line 98
    :cond_3
    iget-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

    invoke-interface {p1}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;->onTextRecognizerTaskCompleted()V

    return-void
.end method
