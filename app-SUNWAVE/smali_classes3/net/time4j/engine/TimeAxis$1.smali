.class Lnet/time4j/engine/TimeAxis$1;
.super Ljava/lang/Object;
.source "TimeAxis.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/engine/TimeAxis;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/TimeLine;)V
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

.field final synthetic val$unitLengths:Ljava/util/Map;


# direct methods
.method constructor <init>(Lnet/time4j/engine/TimeAxis;Ljava/util/Map;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lnet/time4j/engine/TimeAxis$1;->this$0:Lnet/time4j/engine/TimeAxis;

    iput-object p2, p0, Lnet/time4j/engine/TimeAxis$1;->val$unitLengths:Ljava/util/Map;

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

    .line 106
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$1;->val$unitLengths:Ljava/util/Map;

    .line 107
    invoke-static {v0, p1}, Lnet/time4j/engine/TimeAxis;->access$100(Ljava/util/Map;Ljava/lang/Object;)D

    move-result-wide v0

    iget-object p1, p0, Lnet/time4j/engine/TimeAxis$1;->val$unitLengths:Ljava/util/Map;

    .line 108
    invoke-static {p1, p2}, Lnet/time4j/engine/TimeAxis;->access$100(Ljava/util/Map;Ljava/lang/Object;)D

    move-result-wide p1

    .line 106
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method
