.class final Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;
.super Ljava/lang/Object;
.source "WritableMapBuffer.kt"

# interfaces
.implements Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapBufferEntry"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWritableMapBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WritableMapBuffer.kt\ncom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry\n+ 2 WritableMapBuffer.kt\ncom/facebook/react/common/mapbuffer/WritableMapBuffer\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n111#2:172\n112#2,4:174\n111#2:178\n112#2,4:180\n111#2:184\n112#2,4:186\n111#2:190\n112#2,4:192\n111#2:196\n112#2,4:198\n1#3:173\n1#3:179\n1#3:185\n1#3:191\n1#3:197\n*S KotlinDebug\n*F\n+ 1 WritableMapBuffer.kt\ncom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry\n*L\n140#1:172\n140#1:174,4\n142#1:178\n142#1:180,4\n144#1:184\n144#1:186,4\n146#1:190\n146#1:192,4\n148#1:196\n148#1:198,4\n140#1:173\n142#1:179\n144#1:185\n146#1:191\n148#1:197\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;",
        "Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;",
        "index",
        "",
        "(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;I)V",
        "booleanValue",
        "",
        "getBooleanValue",
        "()Z",
        "doubleValue",
        "",
        "getDoubleValue",
        "()D",
        "intValue",
        "getIntValue",
        "()I",
        "key",
        "getKey",
        "mapBufferValue",
        "Lcom/facebook/react/common/mapbuffer/MapBuffer;",
        "getMapBufferValue",
        "()Lcom/facebook/react/common/mapbuffer/MapBuffer;",
        "stringValue",
        "",
        "getStringValue",
        "()Ljava/lang/String;",
        "type",
        "Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;",
        "getType",
        "()Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;",
        "ReactAndroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final index:I

.field private final key:I

.field final synthetic this$0:Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

.field private final type:Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;


# direct methods
.method public constructor <init>(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->index:I

    .line 137
    invoke-static {p1}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->access$getValues$p(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->key:I

    .line 138
    invoke-static {p1}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->access$getValues$p(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "values.valueAt(index)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->getKey()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->access$dataType(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;Ljava/lang/Object;I)Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->type:Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;

    return-void
.end method


# virtual methods
.method public getBooleanValue()Z
    .locals 4

    .line 140
    invoke-virtual {p0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->getKey()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    invoke-static {v1}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->access$getValues$p(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 174
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 177
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 175
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", found "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " instead."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Key not found: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDoubleValue()D
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->getKey()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    invoke-static {v1}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->access$getValues$p(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 186
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 189
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 187
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", found "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " instead."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Key not found: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIntValue()I
    .locals 4

    .line 142
    invoke-virtual {p0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->getKey()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    invoke-static {v1}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->access$getValues$p(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 180
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 183
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 181
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", found "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " instead."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Key not found: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKey()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->key:I

    return v0
.end method

.method public getMapBufferValue()Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .locals 4

    .line 148
    invoke-virtual {p0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->getKey()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    invoke-static {v1}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->access$getValues$p(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 198
    instance-of v2, v1, Lcom/facebook/react/common/mapbuffer/MapBuffer;

    if-eqz v2, :cond_1

    .line 201
    check-cast v1, Lcom/facebook/react/common/mapbuffer/MapBuffer;

    return-object v1

    .line 199
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/facebook/react/common/mapbuffer/MapBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", found "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " instead."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Key not found: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 4

    .line 146
    invoke-virtual {p0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->getKey()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    invoke-static {v1}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->access$getValues$p(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 192
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 195
    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 193
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", found "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " instead."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Key not found: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getType()Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;->type:Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;

    return-object v0
.end method
