.class Lnet/time4j/calendar/ThaiSolarCalendar$Transformer;
.super Ljava/lang/Object;
.source "ThaiSolarCalendar.java"

# interfaces
.implements Lnet/time4j/calendar/EraYearMonthDaySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/ThaiSolarCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/calendar/EraYearMonthDaySystem<",
        "Lnet/time4j/calendar/ThaiSolarCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/ThaiSolarCalendar$1;)V
    .locals 0

    .line 899
    invoke-direct {p0}, Lnet/time4j/calendar/ThaiSolarCalendar$Transformer;-><init>()V

    return-void
.end method


# virtual methods
.method public getEras()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 988
    sget-object v0, Lnet/time4j/calendar/ThaiSolarEra;->RATTANAKOSIN:Lnet/time4j/calendar/ThaiSolarEra;

    .line 989
    sget-object v1, Lnet/time4j/calendar/ThaiSolarEra;->BUDDHIST:Lnet/time4j/calendar/ThaiSolarEra;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/time4j/engine/CalendarEra;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 990
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I
    .locals 1

    .line 937
    :try_start_0
    const-class v0, Lnet/time4j/calendar/ThaiSolarEra;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ThaiSolarEra;

    invoke-virtual {p1, p2, p3}, Lnet/time4j/calendar/ThaiSolarEra;->toIsoYear(II)I

    move-result p1

    .line 938
    invoke-static {p1, p3}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 940
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I
    .locals 3

    const/4 v0, 0x1

    if-lt p2, v0, :cond_6

    .line 951
    sget-object v0, Lnet/time4j/calendar/ThaiSolarEra;->BUDDHIST:Lnet/time4j/calendar/ThaiSolarEra;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x16e

    const/16 v2, 0x16d

    if-eqz v0, :cond_3

    add-int/lit16 p2, p2, -0x21f

    const/16 p1, 0x794

    if-ne p2, p1, :cond_0

    const/16 p1, 0x113

    return p1

    :cond_0
    if-ge p2, p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 958
    :cond_1
    invoke-static {p2}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 959
    :cond_3
    sget-object v0, Lnet/time4j/calendar/ThaiSolarEra;->RATTANAKOSIN:Lnet/time4j/calendar/ThaiSolarEra;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit16 p2, p2, 0x6f6

    .line 960
    invoke-static {p2}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    .line 962
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid calendar era: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 950
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaximumSinceUTC()J
    .locals 2

    .line 983
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

    .line 978
    invoke-static {}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$500()Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid(Lnet/time4j/engine/CalendarEra;III)Z
    .locals 3

    const/4 v0, 0x0

    .line 912
    :try_start_0
    instance-of v1, p1, Lnet/time4j/calendar/ThaiSolarEra;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    .line 913
    const-class v2, Lnet/time4j/calendar/ThaiSolarEra;

    .line 914
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ThaiSolarEra;

    invoke-virtual {p1, p2, p3}, Lnet/time4j/calendar/ThaiSolarEra;->toIsoYear(II)I

    move-result p1

    const p2, 0x3b9ac9ff

    if-gt p1, p2, :cond_0

    if-lt p3, v1, :cond_0

    const/16 p2, 0xc

    if-gt p3, p2, :cond_0

    if-lt p4, v1, :cond_0

    .line 920
    invoke-static {p1, p3}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p4, p1, :cond_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 899
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar$Transformer;->transform(Lnet/time4j/calendar/ThaiSolarCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/ThaiSolarCalendar;)J
    .locals 2

    .line 973
    invoke-static {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$400(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/PlainDate;

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

    .line 899
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ThaiSolarCalendar$Transformer;->transform(J)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/ThaiSolarCalendar;
    .locals 2

    .line 968
    new-instance v0, Lnet/time4j/calendar/ThaiSolarCalendar;

    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {p1, p2, v1}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lnet/time4j/calendar/ThaiSolarCalendar;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/calendar/ThaiSolarCalendar$1;)V

    return-object v0
.end method
