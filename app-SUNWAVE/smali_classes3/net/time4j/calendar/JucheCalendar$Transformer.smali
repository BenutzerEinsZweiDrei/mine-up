.class Lnet/time4j/calendar/JucheCalendar$Transformer;
.super Ljava/lang/Object;
.source "JucheCalendar.java"

# interfaces
.implements Lnet/time4j/calendar/EraYearMonthDaySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JucheCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/calendar/EraYearMonthDaySystem<",
        "Lnet/time4j/calendar/JucheCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/JucheCalendar$1;)V
    .locals 0

    .line 773
    invoke-direct {p0}, Lnet/time4j/calendar/JucheCalendar$Transformer;-><init>()V

    return-void
.end method


# virtual methods
.method public getEras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 854
    sget-object v0, Lnet/time4j/calendar/JucheEra;->JUCHE:Lnet/time4j/calendar/JucheEra;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I
    .locals 0

    .line 812
    :try_start_0
    invoke-static {p2}, Lnet/time4j/calendar/JucheCalendar;->access$300(I)I

    move-result p1

    const/4 p2, 0x1

    .line 813
    invoke-static {p1, p3, p2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->lengthOfMonth()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 815
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I
    .locals 1

    .line 825
    :try_start_0
    invoke-static {p2}, Lnet/time4j/calendar/JucheCalendar;->access$300(I)I

    move-result p1

    .line 826
    sget-object p2, Lnet/time4j/Month;->JANUARY:Lnet/time4j/Month;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lnet/time4j/PlainDate;->of(ILnet/time4j/Month;I)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->lengthOfYear()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 828
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getMaximumSinceUTC()J
    .locals 2

    .line 849
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 2

    const-wide/16 v0, -0x559b

    return-wide v0
.end method

.method public isValid(Lnet/time4j/engine/CalendarEra;III)Z
    .locals 2

    const/4 v0, 0x0

    .line 786
    :try_start_0
    instance-of p1, p1, Lnet/time4j/calendar/JucheEra;

    if-eqz p1, :cond_0

    .line 787
    invoke-static {p2}, Lnet/time4j/calendar/JucheCalendar;->access$300(I)I

    move-result p1

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    const p2, 0x3b9ac9ff

    if-gt p1, p2, :cond_0

    if-lt p3, v1, :cond_0

    const/16 p2, 0xc

    if-gt p3, p2, :cond_0

    if-lt p4, v1, :cond_0

    .line 795
    invoke-static {p1, p3}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p4, p1, :cond_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 773
    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JucheCalendar$Transformer;->transform(Lnet/time4j/calendar/JucheCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/JucheCalendar;)J
    .locals 2

    .line 839
    invoke-static {p1}, Lnet/time4j/calendar/JucheCalendar;->access$400(Lnet/time4j/calendar/JucheCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 773
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JucheCalendar$Transformer;->transform(J)Lnet/time4j/calendar/JucheCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/JucheCalendar;
    .locals 2

    .line 834
    new-instance v0, Lnet/time4j/calendar/JucheCalendar;

    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {p1, p2, v1}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/calendar/JucheCalendar;-><init>(Lnet/time4j/PlainDate;)V

    return-object v0
.end method
