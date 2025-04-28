.class Lnet/time4j/engine/TimeAxis$DefaultTimeLine;
.super Ljava/lang/Object;
.source "TimeAxis.java"

# interfaces
.implements Lnet/time4j/engine/TimeLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/TimeAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultTimeLine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T:",
        "Lnet/time4j/engine/TimePoint<",
        "TU;TT;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/TimeLine<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final max:Lnet/time4j/engine/TimePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final min:Lnet/time4j/engine/TimePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final step:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TT;TT;)V"
        }
    .end annotation

    .line 1284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    iput-object p1, p0, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;->step:Ljava/lang/Object;

    .line 1287
    iput-object p2, p0, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;->min:Lnet/time4j/engine/TimePoint;

    .line 1288
    iput-object p3, p0, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;->max:Lnet/time4j/engine/TimePoint;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1268
    check-cast p1, Lnet/time4j/engine/TimePoint;

    check-cast p2, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;->compare(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1326
    invoke-virtual {p1, p2}, Lnet/time4j/engine/TimePoint;->compareTo(Lnet/time4j/engine/TimePoint;)I

    move-result p1

    return p1
.end method

.method public isCalendrical()Z
    .locals 1

    .line 1319
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;->max:Lnet/time4j/engine/TimePoint;

    instance-of v0, v0, Lnet/time4j/engine/CalendarDate;

    return v0
.end method

.method public bridge synthetic stepBackwards(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1268
    check-cast p1, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;->stepBackwards(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public stepBackwards(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1308
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;->min:Lnet/time4j/engine/TimePoint;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/TimePoint;->compareTo(Lnet/time4j/engine/TimePoint;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x1

    .line 1312
    iget-object v2, p0, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;->step:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/engine/TimePoint;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic stepForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1268
    check-cast p1, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;->stepForward(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public stepForward(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;->max:Lnet/time4j/engine/TimePoint;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/TimePoint;->compareTo(Lnet/time4j/engine/TimePoint;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x1

    .line 1301
    iget-object v2, p0, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;->step:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/engine/TimePoint;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method
