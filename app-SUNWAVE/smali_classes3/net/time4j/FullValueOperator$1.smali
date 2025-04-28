.class Lnet/time4j/FullValueOperator$1;
.super Ljava/lang/Object;
.source "FullValueOperator.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/FullValueOperator;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "Lnet/time4j/PlainTimestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/FullValueOperator;


# direct methods
.method constructor <init>(Lnet/time4j/FullValueOperator;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lnet/time4j/FullValueOperator$1;->this$0:Lnet/time4j/FullValueOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/FullValueOperator$1;->apply(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;
    .locals 3

    .line 60
    iget-object v0, p0, Lnet/time4j/FullValueOperator$1;->this$0:Lnet/time4j/FullValueOperator;

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/FullValueOperator;->access$000(Lnet/time4j/FullValueOperator;Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lnet/time4j/PlainTime;->getHour()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    .line 64
    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object p1

    const-wide/16 v0, 0x1

    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 65
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Lnet/time4j/PlainTimestamp;->of(Lnet/time4j/PlainDate;Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    .line 67
    :cond_0
    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->with(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method
