.class Lnet/time4j/WeekdayInMonthElement$SpecialOperator;
.super Lnet/time4j/ElementOperator;
.source "WeekdayInMonthElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/WeekdayInMonthElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/ElementOperator<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# instance fields
.field private final dayOfWeek:Lnet/time4j/Weekday;

.field private final ordinal:J

.field private final specialTS:Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILnet/time4j/Weekday;)V
    .locals 2

    .line 190
    sget-object v0, Lnet/time4j/WeekdayInMonthElement;->INSTANCE:Lnet/time4j/WeekdayInMonthElement;

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lnet/time4j/ElementOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    const-string v0, "Missing value."

    .line 193
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-long v0, p1

    .line 196
    iput-wide v0, p0, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;->ordinal:J

    .line 197
    iput-object p2, p0, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;->dayOfWeek:Lnet/time4j/Weekday;

    .line 199
    new-instance p1, Lnet/time4j/WeekdayInMonthElement$SpecialOperator$1;

    invoke-direct {p1, p0}, Lnet/time4j/WeekdayInMonthElement$SpecialOperator$1;-><init>(Lnet/time4j/WeekdayInMonthElement$SpecialOperator;)V

    iput-object p1, p0, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;->specialTS:Lnet/time4j/engine/ChronoOperator;

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/WeekdayInMonthElement$SpecialOperator;Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;->doApply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p0

    return-object p0
.end method

.method private doApply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 227
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    .line 229
    sget-object v1, Lnet/time4j/PlainDate;->DAY_OF_WEEK:Lnet/time4j/NavigableElement;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/Weekday;

    .line 230
    iget-object v2, p0, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;->dayOfWeek:Lnet/time4j/Weekday;

    invoke-virtual {v2}, Lnet/time4j/Weekday;->getValue()I

    move-result v2

    invoke-virtual {v1}, Lnet/time4j/Weekday;->getValue()I

    move-result v1

    sub-int/2addr v2, v1

    .line 231
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v1

    add-int/2addr v1, v2

    .line 233
    iget-wide v3, p0, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;->ordinal:J

    const-wide/16 v5, 0x5

    cmp-long v7, v3, v5

    const/4 v8, 0x7

    const-wide/16 v9, 0x7

    if-nez v7, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 234
    invoke-static {v1, v8}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v3, v1

    sub-long/2addr v5, v3

    mul-long/2addr v5, v9

    int-to-long v1, v2

    add-long/2addr v5, v1

    .line 235
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v2

    invoke-static {v1, v2}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v1

    .line 236
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v5

    int-to-long v7, v1

    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    sub-long/2addr v5, v9

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 240
    invoke-static {v1, v8}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v5, v1

    sub-long/2addr v3, v5

    mul-long/2addr v3, v9

    int-to-long v1, v2

    add-long v5, v3, v1

    .line 242
    :cond_1
    :goto_0
    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, v5, v6, v1}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    .line 243
    sget-object v1, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v1, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 245
    :cond_2
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rule not found for ordinal day of week in month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 175
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;->apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;->doApply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1
.end method

.method onTimestamp()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;->specialTS:Lnet/time4j/engine/ChronoOperator;

    return-object v0
.end method
