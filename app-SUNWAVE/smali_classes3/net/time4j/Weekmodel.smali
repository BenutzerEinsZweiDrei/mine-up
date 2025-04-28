.class public final Lnet/time4j/Weekmodel;
.super Ljava/lang/Object;
.source "Weekmodel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/Weekmodel$BWRule;,
        Lnet/time4j/Weekmodel$CWRule;,
        Lnet/time4j/Weekmodel$CalendarWeekElement;,
        Lnet/time4j/Weekmodel$DRule;,
        Lnet/time4j/Weekmodel$DayOfWeekElement;
    }
.end annotation


# static fields
.field private static final BOUNDED_WEEK_OF_MONTH:I = 0x3

.field private static final BOUNDED_WEEK_OF_YEAR:I = 0x2

.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Lnet/time4j/Weekmodel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CALENDAR_WEEK_OF_MONTH:I = 0x1

.field private static final CALENDAR_WEEK_OF_YEAR:I = 0x0

.field public static final ISO:Lnet/time4j/Weekmodel;

.field private static final LOCALIZED_WEEKDATA:Lnet/time4j/format/WeekdataProvider;

.field private static final serialVersionUID:J = 0x6c2b9cb54e3d6a9bL


# instance fields
.field private final transient boundWomElement:Lnet/time4j/AdjustableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field private final transient boundWoyElement:Lnet/time4j/AdjustableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field private final transient dayOfWeekElement:Lnet/time4j/NavigableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/NavigableElement<",
            "Lnet/time4j/Weekday;",
            ">;"
        }
    .end annotation
.end field

.field private final transient elements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final transient endOfWeekend:Lnet/time4j/Weekday;

.field private final transient firstDayOfWeek:Lnet/time4j/Weekday;

.field private final transient minimalDaysInFirstWeek:I

.field private final transient startOfWeekend:Lnet/time4j/Weekday;

.field private final transient weekendCondition:Lnet/time4j/engine/ChronoCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoCondition<",
            "Lnet/time4j/base/GregorianDate;",
            ">;"
        }
    .end annotation
.end field

.field private final transient womElement:Lnet/time4j/AdjustableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field private final transient woyElement:Lnet/time4j/AdjustableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/Weekmodel;->CACHE:Ljava/util/Map;

    .line 125
    new-instance v0, Lnet/time4j/Weekmodel;

    sget-object v1, Lnet/time4j/Weekday;->MONDAY:Lnet/time4j/Weekday;

    sget-object v2, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    sget-object v3, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2, v3}, Lnet/time4j/Weekmodel;-><init>(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)V

    sput-object v0, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    .line 133
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v0

    const-class v1, Lnet/time4j/format/WeekdataProvider;

    invoke-virtual {v0, v1}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/WeekdataProvider;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    sput-object v0, Lnet/time4j/Weekmodel;->LOCALIZED_WEEKDATA:Lnet/time4j/format/WeekdataProvider;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)V
    .locals 4

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing first day of week."

    .line 178
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v1, 0x7

    if-gt p2, v1, :cond_0

    const-string v1, "Missing start of weekend."

    .line 187
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Missing end of weekend."

    .line 189
    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    iput-object p1, p0, Lnet/time4j/Weekmodel;->firstDayOfWeek:Lnet/time4j/Weekday;

    .line 193
    iput p2, p0, Lnet/time4j/Weekmodel;->minimalDaysInFirstWeek:I

    .line 194
    iput-object p3, p0, Lnet/time4j/Weekmodel;->startOfWeekend:Lnet/time4j/Weekday;

    .line 195
    iput-object p4, p0, Lnet/time4j/Weekmodel;->endOfWeekend:Lnet/time4j/Weekday;

    .line 197
    new-instance p1, Lnet/time4j/Weekmodel$CalendarWeekElement;

    const/4 p2, 0x0

    const-string v1, "WEEK_OF_YEAR"

    invoke-direct {p1, p0, v1, p2}, Lnet/time4j/Weekmodel$CalendarWeekElement;-><init>(Lnet/time4j/Weekmodel;Ljava/lang/String;I)V

    iput-object p1, p0, Lnet/time4j/Weekmodel;->woyElement:Lnet/time4j/AdjustableElement;

    .line 200
    new-instance p2, Lnet/time4j/Weekmodel$CalendarWeekElement;

    const-string v1, "WEEK_OF_MONTH"

    invoke-direct {p2, p0, v1, v0}, Lnet/time4j/Weekmodel$CalendarWeekElement;-><init>(Lnet/time4j/Weekmodel;Ljava/lang/String;I)V

    iput-object p2, p0, Lnet/time4j/Weekmodel;->womElement:Lnet/time4j/AdjustableElement;

    .line 203
    new-instance v0, Lnet/time4j/Weekmodel$CalendarWeekElement;

    const/4 v1, 0x2

    const-string v2, "BOUNDED_WEEK_OF_YEAR"

    invoke-direct {v0, p0, v2, v1}, Lnet/time4j/Weekmodel$CalendarWeekElement;-><init>(Lnet/time4j/Weekmodel;Ljava/lang/String;I)V

    iput-object v0, p0, Lnet/time4j/Weekmodel;->boundWoyElement:Lnet/time4j/AdjustableElement;

    .line 206
    new-instance v1, Lnet/time4j/Weekmodel$CalendarWeekElement;

    const/4 v2, 0x3

    const-string v3, "BOUNDED_WEEK_OF_MONTH"

    invoke-direct {v1, p0, v3, v2}, Lnet/time4j/Weekmodel$CalendarWeekElement;-><init>(Lnet/time4j/Weekmodel;Ljava/lang/String;I)V

    iput-object v1, p0, Lnet/time4j/Weekmodel;->boundWomElement:Lnet/time4j/AdjustableElement;

    .line 209
    new-instance v2, Lnet/time4j/Weekmodel$DayOfWeekElement;

    invoke-direct {v2, p0}, Lnet/time4j/Weekmodel$DayOfWeekElement;-><init>(Lnet/time4j/Weekmodel;)V

    iput-object v2, p0, Lnet/time4j/Weekmodel;->dayOfWeekElement:Lnet/time4j/NavigableElement;

    .line 211
    new-instance v3, Lnet/time4j/Weekmodel$1;

    invoke-direct {v3, p0, p3, p4}, Lnet/time4j/Weekmodel$1;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/Weekday;Lnet/time4j/Weekday;)V

    iput-object v3, p0, Lnet/time4j/Weekmodel;->weekendCondition:Lnet/time4j/engine/ChronoCondition;

    .line 224
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 226
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/Weekmodel;->elements:Ljava/util/Set;

    return-void

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Minimal days in first week out of range: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static getDayOfWeek(J)Lnet/time4j/Weekday;
    .locals 2

    const-wide/16 v0, 0x5

    add-long/2addr p0, v0

    const/4 v0, 0x7

    .line 886
    invoke-static {p0, p1, v0}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;
    .locals 6

    .line 375
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    sget-object p0, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    return-object p0

    .line 379
    :cond_0
    sget-object v0, Lnet/time4j/Weekmodel;->CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/Weekmodel;

    if-eqz v1, :cond_1

    return-object v1

    .line 385
    :cond_1
    sget-object v1, Lnet/time4j/Weekmodel;->LOCALIZED_WEEKDATA:Lnet/time4j/format/WeekdataProvider;

    if-nez v1, :cond_3

    .line 388
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 389
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    const/4 p0, 0x7

    goto :goto_0

    :cond_2
    sub-int/2addr p0, v1

    .line 392
    :goto_0
    invoke-static {p0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object p0

    .line 393
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    .line 391
    invoke-static {p0, v0}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;I)Lnet/time4j/Weekmodel;

    move-result-object p0

    return-object p0

    .line 396
    :cond_3
    new-instance v2, Lnet/time4j/Weekmodel;

    .line 398
    invoke-interface {v1, p0}, Lnet/time4j/format/WeekdataProvider;->getFirstDayOfWeek(Ljava/util/Locale;)I

    move-result v3

    invoke-static {v3}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v3

    .line 399
    invoke-interface {v1, p0}, Lnet/time4j/format/WeekdataProvider;->getMinimalDaysInFirstWeek(Ljava/util/Locale;)I

    move-result v4

    .line 400
    invoke-interface {v1, p0}, Lnet/time4j/format/WeekdataProvider;->getStartOfWeekend(Ljava/util/Locale;)I

    move-result v5

    invoke-static {v5}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v5

    .line 401
    invoke-interface {v1, p0}, Lnet/time4j/format/WeekdataProvider;->getEndOfWeekend(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v1}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Lnet/time4j/Weekmodel;-><init>(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)V

    .line 404
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v3, 0x96

    if-le v1, v3, :cond_4

    .line 405
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 408
    :cond_4
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static of(Lnet/time4j/Weekday;I)Lnet/time4j/Weekmodel;
    .locals 2

    .line 264
    sget-object v0, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    sget-object v1, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    invoke-static {p0, p1, v0, v1}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)Lnet/time4j/Weekmodel;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)Lnet/time4j/Weekmodel;
    .locals 1

    .line 304
    sget-object v0, Lnet/time4j/Weekday;->MONDAY:Lnet/time4j/Weekday;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object v0, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    if-ne p2, v0, :cond_0

    sget-object v0, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    if-ne p3, v0, :cond_0

    .line 310
    sget-object p0, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    return-object p0

    .line 313
    :cond_0
    new-instance v0, Lnet/time4j/Weekmodel;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/time4j/Weekmodel;-><init>(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)V

    return-object v0
.end method

.method public static ofSystem()Lnet/time4j/Weekmodel;
    .locals 1

    .line 345
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/Weekmodel;->of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 936
    new-instance v0, Lnet/time4j/SPX;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lnet/time4j/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public boundedWeekOfMonth()Lnet/time4j/AdjustableElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lnet/time4j/Weekmodel;->boundWomElement:Lnet/time4j/AdjustableElement;

    return-object v0
.end method

.method public boundedWeekOfYear()Lnet/time4j/AdjustableElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lnet/time4j/Weekmodel;->boundWoyElement:Lnet/time4j/AdjustableElement;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 813
    :cond_0
    instance-of v1, p1, Lnet/time4j/Weekmodel;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 814
    check-cast p1, Lnet/time4j/Weekmodel;

    .line 815
    iget-object v1, p0, Lnet/time4j/Weekmodel;->firstDayOfWeek:Lnet/time4j/Weekday;

    iget-object v3, p1, Lnet/time4j/Weekmodel;->firstDayOfWeek:Lnet/time4j/Weekday;

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/Weekmodel;->minimalDaysInFirstWeek:I

    iget v3, p1, Lnet/time4j/Weekmodel;->minimalDaysInFirstWeek:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/Weekmodel;->startOfWeekend:Lnet/time4j/Weekday;

    iget-object v3, p1, Lnet/time4j/Weekmodel;->startOfWeekend:Lnet/time4j/Weekday;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/Weekmodel;->endOfWeekend:Lnet/time4j/Weekday;

    iget-object p1, p1, Lnet/time4j/Weekmodel;->endOfWeekend:Lnet/time4j/Weekday;

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lnet/time4j/Weekmodel;->elements:Ljava/util/Set;

    return-object v0
.end method

.method public getEndOfWeekend()Lnet/time4j/Weekday;
    .locals 1

    .line 511
    iget-object v0, p0, Lnet/time4j/Weekmodel;->endOfWeekend:Lnet/time4j/Weekday;

    return-object v0
.end method

.method public getFirstDayOfWeek()Lnet/time4j/Weekday;
    .locals 1

    .line 439
    iget-object v0, p0, Lnet/time4j/Weekmodel;->firstDayOfWeek:Lnet/time4j/Weekday;

    return-object v0
.end method

.method public getFirstWorkday()Lnet/time4j/Weekday;
    .locals 1

    .line 539
    invoke-virtual {p0}, Lnet/time4j/Weekmodel;->getEndOfWeekend()Lnet/time4j/Weekday;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/Weekday;->next()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    .line 467
    iget v0, p0, Lnet/time4j/Weekmodel;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public getStartOfWeekend()Lnet/time4j/Weekday;
    .locals 1

    .line 489
    iget-object v0, p0, Lnet/time4j/Weekmodel;->startOfWeekend:Lnet/time4j/Weekday;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 836
    iget-object v0, p0, Lnet/time4j/Weekmodel;->firstDayOfWeek:Lnet/time4j/Weekday;

    .line 837
    invoke-virtual {v0}, Lnet/time4j/Weekday;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lnet/time4j/Weekmodel;->minimalDaysInFirstWeek:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public localDayOfWeek()Lnet/time4j/NavigableElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/NavigableElement<",
            "Lnet/time4j/Weekday;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "c"
        format = "e"
    .end annotation

    .line 667
    iget-object v0, p0, Lnet/time4j/Weekmodel;->dayOfWeekElement:Lnet/time4j/NavigableElement;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 853
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[firstDayOfWeek="

    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    iget-object v1, p0, Lnet/time4j/Weekmodel;->firstDayOfWeek:Lnet/time4j/Weekday;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",minimalDaysInFirstWeek="

    .line 856
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    iget v1, p0, Lnet/time4j/Weekmodel;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",startOfWeekend="

    .line 858
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    iget-object v1, p0, Lnet/time4j/Weekmodel;->startOfWeekend:Lnet/time4j/Weekday;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",endOfWeekend="

    .line 860
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    iget-object v1, p0, Lnet/time4j/Weekmodel;->endOfWeekend:Lnet/time4j/Weekday;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weekOfMonth()Lnet/time4j/AdjustableElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "W"
    .end annotation

    .line 628
    iget-object v0, p0, Lnet/time4j/Weekmodel;->womElement:Lnet/time4j/AdjustableElement;

    return-object v0
.end method

.method public weekOfYear()Lnet/time4j/AdjustableElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "w"
    .end annotation

    .line 594
    iget-object v0, p0, Lnet/time4j/Weekmodel;->woyElement:Lnet/time4j/AdjustableElement;

    return-object v0
.end method

.method public weekend()Lnet/time4j/engine/ChronoCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoCondition<",
            "Lnet/time4j/base/GregorianDate;",
            ">;"
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lnet/time4j/Weekmodel;->weekendCondition:Lnet/time4j/engine/ChronoCondition;

    return-object v0
.end method
