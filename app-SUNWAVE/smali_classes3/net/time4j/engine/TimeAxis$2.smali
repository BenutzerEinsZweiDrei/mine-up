.class Lnet/time4j/engine/TimeAxis$2;
.super Ljava/lang/Object;
.source "TimeAxis.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/engine/TimeAxis;->unitComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/engine/TimeAxis;


# direct methods
.method constructor <init>(Lnet/time4j/engine/TimeAxis;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lnet/time4j/engine/TimeAxis$2;->this$0:Lnet/time4j/engine/TimeAxis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TU;)I"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$2;->this$0:Lnet/time4j/engine/TimeAxis;

    invoke-virtual {v0, p2}, Lnet/time4j/engine/TimeAxis;->getLength(Ljava/lang/Object;)D

    move-result-wide v0

    iget-object p2, p0, Lnet/time4j/engine/TimeAxis$2;->this$0:Lnet/time4j/engine/TimeAxis;

    invoke-virtual {p2, p1}, Lnet/time4j/engine/TimeAxis;->getLength(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method
