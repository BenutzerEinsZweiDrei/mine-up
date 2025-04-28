.class public Lnet/time4j/calendar/CommonElements;
.super Ljava/lang/Object;
.source "CommonElements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/CommonElements$DayOperator;,
        Lnet/time4j/calendar/CommonElements$DRule;,
        Lnet/time4j/calendar/CommonElements$DayOfWeekElement;,
        Lnet/time4j/calendar/CommonElements$BWRule;,
        Lnet/time4j/calendar/CommonElements$CWRule;,
        Lnet/time4j/calendar/CommonElements$CalendarWeekElement;,
        Lnet/time4j/calendar/CommonElements$Weekengine;
    }
.end annotation


# static fields
.field public static final RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "r"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    sget-object v0, Lnet/time4j/calendar/RelatedGregorianYearElement;->SINGLETON:Lnet/time4j/calendar/RelatedGregorianYearElement;

    sput-object v0, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(J)Lnet/time4j/Weekday;
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lnet/time4j/calendar/CommonElements;->getDayOfWeek(J)Lnet/time4j/Weekday;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoEntity;)I
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lnet/time4j/calendar/CommonElements;->getMax(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoEntity;)I

    move-result p0

    return p0
.end method

.method public static boundedWeekOfMonth(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;:",
            "Lnet/time4j/engine/CalendarDate;",
            ">(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;",
            "Lnet/time4j/Weekmodel;",
            ")",
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    const-string v0, "DAY_OF_MONTH"

    .line 303
    invoke-static {p0, v0}, Lnet/time4j/calendar/CommonElements;->findDayElement(Lnet/time4j/engine/Chronology;Ljava/lang/String;)Lnet/time4j/engine/ChronoElement;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 309
    new-instance v0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    .line 310
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-string v2, "BOUNDED_WEEK_OF_MONTH"

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoElement;Z)V

    return-object v0

    .line 306
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot derive a rule for given chronology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static boundedWeekOfYear(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;:",
            "Lnet/time4j/engine/CalendarDate;",
            ">(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;",
            "Lnet/time4j/Weekmodel;",
            ")",
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    const-string v0, "DAY_OF_YEAR"

    .line 259
    invoke-static {p0, v0}, Lnet/time4j/calendar/CommonElements;->findDayElement(Lnet/time4j/engine/Chronology;Ljava/lang/String;)Lnet/time4j/engine/ChronoElement;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 265
    new-instance v0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    .line 266
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x34

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-string v2, "BOUNDED_WEEK_OF_YEAR"

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoElement;Z)V

    return-object v0

    .line 262
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot derive a rule for given chronology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkSevenDayWeek(Lnet/time4j/engine/Chronology;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;)V"
        }
    .end annotation

    .line 331
    const-class v0, Lnet/time4j/engine/CalendarDate;

    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getRegisteredElements()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/ChronoElement;

    .line 333
    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DAY_OF_WEEK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    array-length v1, v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    return-void

    .line 342
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No 7-day-week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findDayElement(Lnet/time4j/engine/Chronology;Ljava/lang/String;)Lnet/time4j/engine/ChronoElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TD;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TD;>;",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 352
    invoke-static {p0}, Lnet/time4j/calendar/CommonElements;->checkSevenDayWeek(Lnet/time4j/engine/Chronology;)V

    .line 354
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getRegisteredElements()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoElement;

    .line 355
    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Ljava/lang/Integer;

    if-ne p0, p1, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDayOfWeek(J)Lnet/time4j/Weekday;
    .locals 2

    const-wide/16 v0, 0x5

    add-long/2addr p0, v0

    const/4 v0, 0x7

    .line 325
    invoke-static {p0, p1, v0}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object p0

    return-object p0
.end method

.method private static getMax(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoEntity;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TD;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;TD;)I"
        }
    .end annotation

    .line 319
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Lnet/time4j/engine/ChronoEntity;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static localDayOfWeek(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;:",
            "Lnet/time4j/engine/CalendarDate;",
            ">(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;",
            "Lnet/time4j/Weekmodel;",
            ")",
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/Weekday;",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "c"
        format = "e"
    .end annotation

    .line 135
    invoke-static {p0}, Lnet/time4j/calendar/CommonElements;->checkSevenDayWeek(Lnet/time4j/engine/Chronology;)V

    .line 136
    new-instance v0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    return-object v0
.end method

.method public static weekOfMonth(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;:",
            "Lnet/time4j/engine/CalendarDate;",
            ">(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;",
            "Lnet/time4j/Weekmodel;",
            ")",
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "W"
    .end annotation

    const-string v0, "DAY_OF_MONTH"

    .line 216
    invoke-static {p0, v0}, Lnet/time4j/calendar/CommonElements;->findDayElement(Lnet/time4j/engine/Chronology;Ljava/lang/String;)Lnet/time4j/engine/ChronoElement;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 222
    new-instance v0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/16 v6, 0x57

    const/4 v9, 0x0

    const-string v2, "WEEK_OF_MONTH"

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoElement;Z)V

    return-object v0

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot derive a rule for given chronology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static weekOfYear(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;:",
            "Lnet/time4j/engine/CalendarDate;",
            ">(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;",
            "Lnet/time4j/Weekmodel;",
            ")",
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "w"
    .end annotation

    const-string v0, "DAY_OF_YEAR"

    .line 173
    invoke-static {p0, v0}, Lnet/time4j/calendar/CommonElements;->findDayElement(Lnet/time4j/engine/Chronology;Ljava/lang/String;)Lnet/time4j/engine/ChronoElement;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 179
    new-instance v0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x34

    const/16 v6, 0x77

    const/4 v9, 0x0

    const-string v2, "WEEK_OF_YEAR"

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoElement;Z)V

    return-object v0

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot derive a rule for given chronology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
