.class Lnet/time4j/format/expert/ParsedValues$KeySet;
.super Ljava/util/AbstractSet;
.source "ParsedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/expert/ParsedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lnet/time4j/engine/ChronoElement<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/format/expert/ParsedValues;


# direct methods
.method private constructor <init>(Lnet/time4j/format/expert/ParsedValues;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lnet/time4j/format/expert/ParsedValues$KeySet;->this$0:Lnet/time4j/format/expert/ParsedValues;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/format/expert/ParsedValues;Lnet/time4j/format/expert/ParsedValues$1;)V
    .locals 0

    .line 823
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ParsedValues$KeySet;-><init>(Lnet/time4j/format/expert/ParsedValues;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 830
    new-instance v0, Lnet/time4j/format/expert/ParsedValues$KeyIterator;

    iget-object v1, p0, Lnet/time4j/format/expert/ParsedValues$KeySet;->this$0:Lnet/time4j/format/expert/ParsedValues;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/format/expert/ParsedValues$KeyIterator;-><init>(Lnet/time4j/format/expert/ParsedValues;Lnet/time4j/format/expert/ParsedValues$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 835
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues$KeySet;->this$0:Lnet/time4j/format/expert/ParsedValues;

    invoke-static {v0}, Lnet/time4j/format/expert/ParsedValues;->access$200(Lnet/time4j/format/expert/ParsedValues;)I

    move-result v0

    return v0
.end method
