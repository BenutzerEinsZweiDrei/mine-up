.class Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;
.super Ljava/lang/Object;
.source "WeekdayInMonthElement.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/WeekdayInMonthElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;:",
        "Lnet/time4j/engine/CalendarDate;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final dayOfWeek:Lnet/time4j/Weekday;

.field private final ordinal:J

.field private final wim:Lnet/time4j/calendar/WeekdayInMonthElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/WeekdayInMonthElement<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/time4j/calendar/WeekdayInMonthElement;ILnet/time4j/Weekday;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/WeekdayInMonthElement<",
            "TT;>;I",
            "Lnet/time4j/Weekday;",
            ")V"
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing value."

    .line 255
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    iput-object p1, p0, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;->wim:Lnet/time4j/calendar/WeekdayInMonthElement;

    int-to-long p1, p2

    .line 259
    iput-wide p1, p0, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;->ordinal:J

    .line 260
    iput-object p3, p0, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;->dayOfWeek:Lnet/time4j/Weekday;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 236
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;->apply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;->wim:Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-static {v0}, Lnet/time4j/calendar/WeekdayInMonthElement;->access$000(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Weekday;

    .line 270
    iget-object v1, p0, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;->wim:Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-static {v1}, Lnet/time4j/calendar/WeekdayInMonthElement;->access$100(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v1

    .line 273
    iget-wide v2, p0, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;->ordinal:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    const-wide/16 v3, 0x7

    const/4 v5, 0x7

    if-nez v2, :cond_1

    .line 274
    iget-object v2, p0, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;->wim:Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-static {v2}, Lnet/time4j/calendar/WeekdayInMonthElement;->access$100(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 275
    invoke-virtual {v0}, Lnet/time4j/Weekday;->getValue()I

    move-result v0

    sub-int/2addr v2, v1

    rem-int/lit8 v1, v2, 0x7

    add-int/2addr v0, v1

    if-le v0, v5, :cond_0

    add-int/lit8 v0, v0, -0x7

    .line 279
    :cond_0
    iget-object v1, p0, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;->dayOfWeek:Lnet/time4j/Weekday;

    invoke-virtual {v1}, Lnet/time4j/Weekday;->getValue()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    int-to-long v5, v2

    if-lez v1, :cond_2

    sub-long/2addr v5, v3

    goto :goto_0

    .line 285
    :cond_1
    iget-object v2, p0, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;->dayOfWeek:Lnet/time4j/Weekday;

    invoke-virtual {v2}, Lnet/time4j/Weekday;->getValue()I

    move-result v2

    invoke-virtual {v0}, Lnet/time4j/Weekday;->getValue()I

    move-result v0

    sub-int/2addr v2, v0

    .line 286
    iget-wide v6, p0, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;->ordinal:J

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v5}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    sub-long/2addr v6, v0

    mul-long/2addr v6, v3

    int-to-long v0, v2

    add-long v5, v6, v0

    .line 289
    :cond_2
    :goto_0
    move-object v0, p1

    check-cast v0, Lnet/time4j/engine/CalendarDate;

    invoke-interface {v0}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 290
    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    add-long/2addr v0, v5

    invoke-virtual {p1, v2, v0, v1}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method
