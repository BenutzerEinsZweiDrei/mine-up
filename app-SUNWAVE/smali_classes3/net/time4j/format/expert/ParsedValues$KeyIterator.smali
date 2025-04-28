.class Lnet/time4j/format/expert/ParsedValues$KeyIterator;
.super Ljava/lang/Object;
.source "ParsedValues.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/expert/ParsedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/time4j/engine/ChronoElement<",
        "*>;>;"
    }
.end annotation


# instance fields
.field c:I

.field pos:I

.field final synthetic this$0:Lnet/time4j/format/expert/ParsedValues;


# direct methods
.method private constructor <init>(Lnet/time4j/format/expert/ParsedValues;)V
    .locals 1

    .line 788
    iput-object p1, p0, Lnet/time4j/format/expert/ParsedValues$KeyIterator;->this$0:Lnet/time4j/format/expert/ParsedValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    invoke-static {p1}, Lnet/time4j/format/expert/ParsedValues;->access$100(Lnet/time4j/format/expert/ParsedValues;)I

    move-result v0

    iput v0, p0, Lnet/time4j/format/expert/ParsedValues$KeyIterator;->pos:I

    .line 794
    invoke-static {p1}, Lnet/time4j/format/expert/ParsedValues;->access$200(Lnet/time4j/format/expert/ParsedValues;)I

    move-result p1

    iput p1, p0, Lnet/time4j/format/expert/ParsedValues$KeyIterator;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/format/expert/ParsedValues;Lnet/time4j/format/expert/ParsedValues$1;)V
    .locals 0

    .line 788
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ParsedValues$KeyIterator;-><init>(Lnet/time4j/format/expert/ParsedValues;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 800
    iget v0, p0, Lnet/time4j/format/expert/ParsedValues$KeyIterator;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 788
    invoke-virtual {p0}, Lnet/time4j/format/expert/ParsedValues$KeyIterator;->next()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    return-object v0
.end method

.method public next()Lnet/time4j/engine/ChronoElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 805
    iget v0, p0, Lnet/time4j/format/expert/ParsedValues$KeyIterator;->c:I

    if-lez v0, :cond_1

    .line 806
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues$KeyIterator;->this$0:Lnet/time4j/format/expert/ParsedValues;

    invoke-static {v0}, Lnet/time4j/format/expert/ParsedValues;->access$300(Lnet/time4j/format/expert/ParsedValues;)[Ljava/lang/Object;

    move-result-object v0

    .line 807
    :cond_0
    iget v1, p0, Lnet/time4j/format/expert/ParsedValues$KeyIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnet/time4j/format/expert/ParsedValues$KeyIterator;->pos:I

    if-ltz v1, :cond_1

    .line 808
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 809
    iget v2, p0, Lnet/time4j/format/expert/ParsedValues$KeyIterator;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lnet/time4j/format/expert/ParsedValues$KeyIterator;->c:I

    .line 810
    const-class v2, Lnet/time4j/engine/ChronoElement;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoElement;

    return-object v0

    .line 814
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 819
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
