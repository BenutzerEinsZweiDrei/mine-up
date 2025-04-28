.class public final Lnet/time4j/Duration;
.super Lnet/time4j/engine/AbstractDuration;
.source "Duration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/Duration$ApproximateNormalizer;,
        Lnet/time4j/Duration$LengthComparator;,
        Lnet/time4j/Duration$Metric;,
        Lnet/time4j/Duration$Formatter;,
        Lnet/time4j/Duration$ZonalMetric;,
        Lnet/time4j/Duration$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lnet/time4j/IsoUnit;",
        ">",
        "Lnet/time4j/engine/AbstractDuration<",
        "TU;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CALENDAR_TYPE:I = 0x0

.field private static final CF_BAS_CAL:Lnet/time4j/Duration$Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final CF_BAS_ORD:Lnet/time4j/Duration$Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final CF_EXT_CAL:Lnet/time4j/Duration$Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final CF_EXT_ORD:Lnet/time4j/Duration$Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLOCK_METRIC:Lnet/time4j/engine/TimeMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeMetric<",
            "Lnet/time4j/ClockUnit;",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final CLOCK_TYPE:I = 0x1

.field private static final ISO_DECIMAL_SEPARATOR:C

.field private static final ITEM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "+",
            "Lnet/time4j/engine/ChronoUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MIO:J = 0xf4240L

.field private static final MRD:J = 0x3b9aca00L

.field private static final PRINT_STYLE_ISO:I = 0x1

.field private static final PRINT_STYLE_NORMAL:I = 0x0

.field private static final PRINT_STYLE_XML:I = 0x2

.field public static STD_CALENDAR_PERIOD:Lnet/time4j/engine/Normalizer; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Normalizer<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static STD_CLOCK_PERIOD:Lnet/time4j/engine/Normalizer; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Normalizer<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static STD_PERIOD:Lnet/time4j/engine/Normalizer; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Normalizer<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPER_TYPE:I = -0x1

.field private static final TF_BAS:Lnet/time4j/Duration$Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final TF_EXT:Lnet/time4j/Duration$Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEEK_BASED_METRIC:Lnet/time4j/engine/TimeMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeMetric<",
            "Lnet/time4j/IsoDateUnit;",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/IsoDateUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final WEEK_BASED_TYPE:I = 0x2

.field private static final YMD_METRIC:Lnet/time4j/engine/TimeMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeMetric<",
            "Lnet/time4j/CalendarUnit;",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/CalendarUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ZERO:Lnet/time4j/Duration;

.field private static final serialVersionUID:J = -0x57b9749b9756044bL


# instance fields
.field private final transient items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private final transient negative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "net.time4j.format.iso.decimal.dot"

    .line 138
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    :goto_0
    sput-char v0, Lnet/time4j/Duration;->ISO_DECIMAL_SEPARATOR:C

    .line 147
    new-instance v0, Lnet/time4j/Duration;

    invoke-direct {v0}, Lnet/time4j/Duration;-><init>()V

    sput-object v0, Lnet/time4j/Duration;->ZERO:Lnet/time4j/Duration;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-static {v0, v1}, Lnet/time4j/Duration;->createAlternativeDateFormat(ZZ)Lnet/time4j/Duration$Formatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/Duration;->CF_EXT_CAL:Lnet/time4j/Duration$Formatter;

    .line 152
    invoke-static {v0, v0}, Lnet/time4j/Duration;->createAlternativeDateFormat(ZZ)Lnet/time4j/Duration$Formatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/Duration;->CF_EXT_ORD:Lnet/time4j/Duration$Formatter;

    .line 154
    invoke-static {v1, v1}, Lnet/time4j/Duration;->createAlternativeDateFormat(ZZ)Lnet/time4j/Duration$Formatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/Duration;->CF_BAS_CAL:Lnet/time4j/Duration$Formatter;

    .line 156
    invoke-static {v1, v0}, Lnet/time4j/Duration;->createAlternativeDateFormat(ZZ)Lnet/time4j/Duration$Formatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/Duration;->CF_BAS_ORD:Lnet/time4j/Duration$Formatter;

    .line 158
    invoke-static {v0}, Lnet/time4j/Duration;->createAlternativeTimeFormat(Z)Lnet/time4j/Duration$Formatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/Duration;->TF_EXT:Lnet/time4j/Duration$Formatter;

    .line 160
    invoke-static {v1}, Lnet/time4j/Duration;->createAlternativeTimeFormat(Z)Lnet/time4j/Duration$Formatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/Duration;->TF_BAS:Lnet/time4j/Duration$Formatter;

    .line 162
    invoke-static {}, Lnet/time4j/StdNormalizer;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sput-object v2, Lnet/time4j/Duration;->ITEM_COMPARATOR:Ljava/util/Comparator;

    .line 199
    invoke-static {}, Lnet/time4j/StdNormalizer;->ofMixedUnits()Lnet/time4j/StdNormalizer;

    move-result-object v2

    sput-object v2, Lnet/time4j/Duration;->STD_PERIOD:Lnet/time4j/engine/Normalizer;

    .line 222
    invoke-static {}, Lnet/time4j/StdNormalizer;->ofCalendarUnits()Lnet/time4j/StdNormalizer;

    move-result-object v2

    sput-object v2, Lnet/time4j/Duration;->STD_CALENDAR_PERIOD:Lnet/time4j/engine/Normalizer;

    .line 249
    invoke-static {}, Lnet/time4j/StdNormalizer;->ofClockUnits()Lnet/time4j/StdNormalizer;

    move-result-object v2

    sput-object v2, Lnet/time4j/Duration;->STD_CLOCK_PERIOD:Lnet/time4j/engine/Normalizer;

    const/4 v2, 0x3

    new-array v3, v2, [Lnet/time4j/CalendarUnit;

    .line 256
    sget-object v4, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    aput-object v4, v3, v1

    sget-object v4, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    aput-object v4, v3, v0

    sget-object v4, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 257
    invoke-static {v3}, Lnet/time4j/Duration;->in([Lnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeMetric;

    move-result-object v3

    sput-object v3, Lnet/time4j/Duration;->YMD_METRIC:Lnet/time4j/engine/TimeMetric;

    const/4 v3, 0x4

    new-array v3, v3, [Lnet/time4j/ClockUnit;

    .line 258
    sget-object v4, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    aput-object v4, v3, v1

    sget-object v4, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    aput-object v4, v3, v0

    sget-object v4, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    aput-object v4, v3, v5

    sget-object v4, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    aput-object v4, v3, v2

    .line 259
    invoke-static {v3}, Lnet/time4j/Duration;->in([Lnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeMetric;

    move-result-object v3

    sput-object v3, Lnet/time4j/Duration;->CLOCK_METRIC:Lnet/time4j/engine/TimeMetric;

    new-array v2, v2, [Lnet/time4j/IsoDateUnit;

    .line 261
    invoke-static {}, Lnet/time4j/CalendarUnit;->weekBasedYears()Lnet/time4j/IsoDateUnit;

    move-result-object v3

    aput-object v3, v2, v1

    sget-object v1, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    aput-object v1, v2, v0

    sget-object v0, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    aput-object v0, v2, v5

    invoke-static {v2}, Lnet/time4j/Duration;->in([Lnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeMetric;

    move-result-object v0

    sput-object v0, Lnet/time4j/Duration;->WEEK_BASED_METRIC:Lnet/time4j/engine/TimeMetric;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 315
    invoke-direct {p0}, Lnet/time4j/engine/AbstractDuration;-><init>()V

    .line 317
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lnet/time4j/Duration;->negative:Z

    return-void
.end method

.method constructor <init>(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;Z)V"
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Lnet/time4j/engine/AbstractDuration;-><init>()V

    .line 288
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    goto :goto_0

    .line 293
    :cond_0
    sget-object v1, Lnet/time4j/Duration;->ITEM_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 297
    :goto_1
    iput-boolean p1, p0, Lnet/time4j/Duration;->negative:Z

    return-void
.end method

.method private constructor <init>(Lnet/time4j/Duration;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Duration<",
            "TU;>;Z)V"
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Lnet/time4j/engine/AbstractDuration;-><init>()V

    .line 308
    iget-object v0, p1, Lnet/time4j/Duration;->items:Ljava/util/List;

    iput-object v0, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    .line 309
    iget-boolean p1, p1, Lnet/time4j/Duration;->negative:Z

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lnet/time4j/Duration;->negative:Z

    return-void
.end method

.method static synthetic access$400(Lnet/time4j/Duration;)J
    .locals 2

    .line 131
    invoke-static {p0}, Lnet/time4j/Duration;->lengthInSeconds(Lnet/time4j/Duration;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Ljava/util/Map;Z)Lnet/time4j/Duration;
    .locals 0

    .line 131
    invoke-static {p0, p1}, Lnet/time4j/Duration;->create(Ljava/util/Map;Z)Lnet/time4j/Duration;

    move-result-object p0

    return-object p0
.end method

.method private static addParsedItem(Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;JLjava/lang/String;ILjava/util/List;)Lnet/time4j/engine/ChronoUnit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/engine/ChronoUnit;",
            ">(",
            "Lnet/time4j/engine/ChronoUnit;",
            "Lnet/time4j/engine/ChronoUnit;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;)",
            "Lnet/time4j/engine/ChronoUnit;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3550
    invoke-interface {p0}, Lnet/time4j/engine/ChronoUnit;->getLength()D

    move-result-wide v0

    invoke-interface {p1}, Lnet/time4j/engine/ChronoUnit;->getLength()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 3557
    :cond_0
    invoke-interface {p0}, Lnet/time4j/engine/ChronoUnit;->getLength()D

    move-result-wide p2

    invoke-interface {p1}, Lnet/time4j/engine/ChronoUnit;->getLength()D

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_1

    .line 3558
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Duplicate unit items: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 3561
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Wrong order of unit items: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    :goto_0
    const-wide/16 p4, 0x0

    cmp-long p1, p2, p4

    if-eqz p1, :cond_3

    .line 3553
    invoke-static {p0}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoUnit;

    .line 3554
    invoke-static {p2, p3, p1}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p1

    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public static approximateHours(I)Lnet/time4j/engine/Normalizer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/Normalizer<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 1891
    new-instance v0, Lnet/time4j/Duration$ApproximateNormalizer;

    sget-object v1, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-direct {v0, p0, v1}, Lnet/time4j/Duration$ApproximateNormalizer;-><init>(ILnet/time4j/ClockUnit;)V

    return-object v0
.end method

.method public static approximateMaxUnitOnly()Lnet/time4j/engine/Normalizer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Normalizer<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 1998
    new-instance v0, Lnet/time4j/Duration$ApproximateNormalizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/Duration$ApproximateNormalizer;-><init>(Z)V

    return-object v0
.end method

.method public static approximateMaxUnitOrWeeks()Lnet/time4j/engine/Normalizer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Normalizer<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 2022
    new-instance v0, Lnet/time4j/Duration$ApproximateNormalizer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/time4j/Duration$ApproximateNormalizer;-><init>(Z)V

    return-object v0
.end method

.method public static approximateMinutes(I)Lnet/time4j/engine/Normalizer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/Normalizer<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 1918
    new-instance v0, Lnet/time4j/Duration$ApproximateNormalizer;

    sget-object v1, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    invoke-direct {v0, p0, v1}, Lnet/time4j/Duration$ApproximateNormalizer;-><init>(ILnet/time4j/ClockUnit;)V

    return-object v0
.end method

.method public static approximateSeconds(I)Lnet/time4j/engine/Normalizer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/Normalizer<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 1945
    new-instance v0, Lnet/time4j/Duration$ApproximateNormalizer;

    sget-object v1, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-direct {v0, p0, v1}, Lnet/time4j/Duration$ApproximateNormalizer;-><init>(ILnet/time4j/ClockUnit;)V

    return-object v0
.end method

.method private static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static comparator(Lnet/time4j/engine/TimePoint;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            "T:",
            "Lnet/time4j/engine/TimePoint<",
            "TU;TT;>;>(TT;)",
            "Ljava/util/Comparator<",
            "Lnet/time4j/Duration<",
            "+TU;>;>;"
        }
    .end annotation

    .line 964
    new-instance v0, Lnet/time4j/Duration$LengthComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/Duration$LengthComparator;-><init>(Lnet/time4j/engine/TimePoint;Lnet/time4j/Duration$1;)V

    return-object v0
.end method

.method public static comparatorOnClock()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;>;"
        }
    .end annotation

    .line 986
    new-instance v0, Lnet/time4j/Duration$1;

    invoke-direct {v0}, Lnet/time4j/Duration$1;-><init>()V

    return-object v0
.end method

.method public static compose(Lnet/time4j/Duration;Lnet/time4j/Duration;)Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/CalendarUnit;",
            ">;",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;)",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 1605
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object v0

    .line 1606
    invoke-virtual {v0, p0}, Lnet/time4j/Duration;->plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/time4j/Duration;->plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object p0

    return-object p0
.end method

.method private static convert(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">(",
            "Lnet/time4j/engine/TimeSpan<",
            "TU;>;)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 3115
    instance-of v0, p0, Lnet/time4j/Duration;

    if-eqz v0, :cond_0

    .line 3116
    invoke-static {p0}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/Duration;

    return-object p0

    .line 3118
    :cond_0
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object v0

    .line 3119
    invoke-virtual {v0, p0}, Lnet/time4j/Duration;->plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object p0

    return-object p0
.end method

.method private count()I
    .locals 1

    .line 2703
    invoke-virtual {p0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private static create(Ljava/util/Map;Z)Lnet/time4j/Duration;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">(",
            "Ljava/util/Map<",
            "TU;",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 2797
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2798
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object p0

    return-object p0

    .line 2801
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2804
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2805
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-eqz v8, :cond_1

    .line 2808
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/IsoUnit;

    .line 2810
    sget-object v8, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    if-ne v5, v8, :cond_2

    const-wide/32 v8, 0xf4240

    .line 2814
    invoke-static {v6, v7, v8, v9}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v5

    .line 2812
    invoke-static {v3, v4, v5, v6}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 2815
    :cond_2
    sget-object v8, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    if-ne v5, v8, :cond_3

    const-wide/16 v8, 0x3e8

    .line 2819
    invoke-static {v6, v7, v8, v9}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v5

    .line 2817
    invoke-static {v3, v4, v5, v6}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 2820
    :cond_3
    sget-object v8, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    if-ne v5, v8, :cond_4

    .line 2821
    invoke-static {v3, v4, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 2823
    :cond_4
    invoke-static {v6, v7, v5}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    cmp-long p0, v3, v1

    if-eqz p0, :cond_6

    .line 2829
    sget-object p0, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-static {p0}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/IsoUnit;

    .line 2830
    invoke-static {v3, v4, p0}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2831
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 2832
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object p0

    return-object p0

    .line 2835
    :cond_7
    :goto_1
    new-instance p0, Lnet/time4j/Duration;

    invoke-direct {p0, v0, p1}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object p0
.end method

.method private static createAlternativeDateFormat(ZZ)Lnet/time4j/Duration$Formatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "YYYY-DDD"

    goto :goto_0

    :cond_0
    const-string p0, "YYYY-MM-DD"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "YYYYDDD"

    goto :goto_0

    :cond_2
    const-string p0, "YYYYMMDD"

    .line 3434
    :goto_0
    const-class p1, Lnet/time4j/CalendarUnit;

    invoke-static {p1, p0}, Lnet/time4j/Duration$Formatter;->ofPattern(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/Duration$Formatter;

    move-result-object p0

    return-object p0
.end method

.method private static createAlternativeTimeFormat(Z)Lnet/time4j/Duration$Formatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string p0, "hh[:mm[:ss[,fffffffff]]]"

    goto :goto_0

    :cond_0
    const-string p0, "hh[mm[ss[,fffffffff]]]"

    .line 3459
    :goto_0
    const-class v0, Lnet/time4j/ClockUnit;

    invoke-static {v0, p0}, Lnet/time4j/Duration$Formatter;->ofPattern(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/Duration$Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static formatter(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/Duration$Formatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/Duration$Formatter<",
            "TU;>;"
        }
    .end annotation

    .line 2530
    invoke-static {p0, p1}, Lnet/time4j/Duration$Formatter;->ofPattern(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/Duration$Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static formatter(Ljava/lang/String;)Lnet/time4j/Duration$Formatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 2501
    invoke-static {p0}, Lnet/time4j/Duration$Formatter;->ofPattern(Ljava/lang/String;)Lnet/time4j/Duration$Formatter;

    move-result-object p0

    return-object p0
.end method

.method private static getAlternativeDateFormat(ZZ)Lnet/time4j/Duration$Formatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 3444
    sget-object p0, Lnet/time4j/Duration;->CF_EXT_ORD:Lnet/time4j/Duration$Formatter;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/time4j/Duration;->CF_EXT_CAL:Lnet/time4j/Duration$Formatter;

    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    .line 3446
    sget-object p0, Lnet/time4j/Duration;->CF_BAS_ORD:Lnet/time4j/Duration$Formatter;

    goto :goto_1

    :cond_2
    sget-object p0, Lnet/time4j/Duration;->CF_BAS_CAL:Lnet/time4j/Duration$Formatter;

    :goto_1
    return-object p0
.end method

.method private static getAlternativeTimeFormat(Z)Lnet/time4j/Duration$Formatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 3465
    sget-object p0, Lnet/time4j/Duration;->TF_EXT:Lnet/time4j/Duration$Formatter;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/time4j/Duration;->TF_BAS:Lnet/time4j/Duration$Formatter;

    :goto_0
    return-object p0
.end method

.method private getIndex(Lnet/time4j/engine/ChronoUnit;)I
    .locals 1

    .line 2842
    invoke-virtual {p0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/time4j/Duration;->getIndex(Lnet/time4j/engine/ChronoUnit;Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method private static getIndex(Lnet/time4j/engine/ChronoUnit;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/engine/ChronoUnit;",
            ">(",
            "Lnet/time4j/engine/ChronoUnit;",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;)I"
        }
    .end annotation

    .line 2853
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 2857
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/TimeSpan$Item;

    invoke-virtual {v3}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/ChronoUnit;

    .line 2858
    invoke-static {v3, p0}, Lnet/time4j/StdNormalizer;->compare(Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static hasMixedSigns(JJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    cmp-long p1, p2, v0

    if-gtz p1, :cond_1

    :cond_0
    if-lez p0, :cond_2

    cmp-long p0, p2, v0

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static in(Ljava/util/Collection;)Lnet/time4j/engine/TimeMetric;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">(",
            "Ljava/util/Collection<",
            "+TU;>;)",
            "Lnet/time4j/engine/TimeMetric<",
            "TU;",
            "Lnet/time4j/Duration<",
            "TU;>;>;"
        }
    .end annotation

    .line 642
    new-instance v0, Lnet/time4j/Duration$Metric;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/Duration$Metric;-><init>(Ljava/util/Collection;Lnet/time4j/Duration$1;)V

    return-object v0
.end method

.method public static varargs in(Lnet/time4j/tz/Timezone;[Lnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeMetric;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/Timezone;",
            "[",
            "Lnet/time4j/IsoUnit;",
            ")",
            "Lnet/time4j/engine/TimeMetric<",
            "Lnet/time4j/IsoUnit;",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/IsoUnit;",
            ">;>;"
        }
    .end annotation

    .line 797
    new-instance v0, Lnet/time4j/Duration$ZonalMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/time4j/Duration$ZonalMetric;-><init>(Lnet/time4j/tz/Timezone;[Lnet/time4j/IsoUnit;Lnet/time4j/Duration$1;)V

    return-object v0
.end method

.method public static varargs in([Lnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeMetric;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">([TU;)",
            "Lnet/time4j/engine/TimeMetric<",
            "TU;",
            "Lnet/time4j/Duration<",
            "TU;>;>;"
        }
    .end annotation

    .line 614
    new-instance v0, Lnet/time4j/Duration$Metric;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/Duration$Metric;-><init>([Lnet/time4j/IsoUnit;Lnet/time4j/Duration$1;)V

    return-object v0
.end method

.method public static inClockUnits()Lnet/time4j/engine/TimeMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeMetric<",
            "Lnet/time4j/ClockUnit;",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;>;"
        }
    .end annotation

    .line 708
    sget-object v0, Lnet/time4j/Duration;->CLOCK_METRIC:Lnet/time4j/engine/TimeMetric;

    return-object v0
.end method

.method public static inWeekBasedUnits()Lnet/time4j/engine/TimeMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeMetric<",
            "Lnet/time4j/IsoDateUnit;",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/IsoDateUnit;",
            ">;>;"
        }
    .end annotation

    .line 740
    sget-object v0, Lnet/time4j/Duration;->WEEK_BASED_METRIC:Lnet/time4j/engine/TimeMetric;

    return-object v0
.end method

.method public static inYearsMonthsDays()Lnet/time4j/engine/TimeMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeMetric<",
            "Lnet/time4j/CalendarUnit;",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/CalendarUnit;",
            ">;>;"
        }
    .end annotation

    .line 675
    sget-object v0, Lnet/time4j/Duration;->YMD_METRIC:Lnet/time4j/engine/TimeMetric;

    return-object v0
.end method

.method private static isEmpty(Lnet/time4j/engine/TimeSpan;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/TimeSpan<",
            "TU;>;)Z"
        }
    .end annotation

    .line 2710
    invoke-interface {p0}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object p0

    .line 2712
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2713
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/TimeSpan$Item;

    invoke-virtual {v3}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isFractionUnit(Lnet/time4j/IsoUnit;)Z
    .locals 1

    .line 3126
    invoke-interface {p1}, Lnet/time4j/IsoUnit;->getSymbol()C

    move-result p1

    const/16 v0, 0x31

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static lengthInSeconds(Lnet/time4j/Duration;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;)J"
        }
    .end annotation

    .line 2724
    sget-object v0, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-virtual {p0, v0}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/engine/ChronoUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 2725
    sget-object v2, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    invoke-virtual {p0, v2}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/engine/ChronoUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    invoke-static {v2, v3, v4, v5}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 2726
    sget-object v2, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-virtual {p0, v2}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/engine/ChronoUnit;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 2727
    sget-object v2, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-virtual {p0, v2}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/engine/ChronoUnit;)J

    move-result-wide v2

    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 2729
    invoke-virtual {p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2730
    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private static merge(Lnet/time4j/Duration;Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">(",
            "Lnet/time4j/Duration<",
            "TU;>;",
            "Lnet/time4j/engine/TimeSpan<",
            "+TU;>;)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 2898
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2899
    invoke-static/range {p1 .. p1}, Lnet/time4j/Duration;->isEmpty(Lnet/time4j/engine/TimeSpan;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    move-object/from16 v0, p1

    .line 2901
    instance-of v1, v0, Lnet/time4j/Duration;

    if-eqz v1, :cond_2

    .line 2902
    invoke-static/range {p1 .. p1}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Duration;

    return-object v0

    :cond_1
    move-object/from16 v0, p1

    .line 2906
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2908
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Duration;->count()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_4

    .line 2909
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/engine/TimeSpan$Item;

    .line 2911
    invoke-virtual {v7}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v8

    .line 2914
    invoke-virtual {v7}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v9

    .line 2915
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    int-to-long v5, v5

    .line 2913
    invoke-static {v9, v10, v5, v6}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v5

    .line 2912
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2910
    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2921
    :cond_4
    invoke-interface/range {p1 .. p1}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result v2

    .line 2923
    invoke-interface/range {p1 .. p1}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v7, v3

    :goto_2
    if-ge v7, v4, :cond_9

    .line 2924
    invoke-interface/range {p1 .. p1}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/time4j/engine/TimeSpan$Item;

    .line 2925
    invoke-virtual {v8}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/time4j/IsoUnit;

    .line 2926
    invoke-virtual {v8}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v10

    .line 2929
    invoke-static {v10, v11, v9}, Lnet/time4j/Duration;->replaceFraction(JLnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2932
    invoke-virtual {v8}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v10

    .line 2933
    invoke-virtual {v8}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lnet/time4j/IsoUnit;

    .line 2937
    :cond_5
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2942
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    if-eqz v2, :cond_6

    move v8, v5

    goto :goto_3

    :cond_6
    move v8, v6

    :goto_3
    int-to-long v14, v8

    .line 2943
    invoke-static {v10, v11, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v10

    .line 2941
    invoke-static {v12, v13, v10, v11}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v10

    .line 2940
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2938
    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    move v8, v5

    goto :goto_4

    :cond_8
    move v8, v6

    :goto_4
    int-to-long v12, v8

    .line 2950
    invoke-static {v10, v11, v12, v13}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2948
    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2957
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v0

    const-wide/16 v4, 0x0

    if-ne v0, v2, :cond_a

    goto :goto_8

    .line 2961
    :cond_a
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v3

    move v7, v6

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 2962
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-gez v8, :cond_c

    move v8, v6

    goto :goto_7

    :cond_c
    move v8, v3

    :goto_7
    if-eqz v7, :cond_d

    move v7, v3

    move v2, v8

    goto :goto_6

    :cond_d
    if-eq v2, v8, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_e
    :goto_8
    if-eqz v2, :cond_10

    .line 2973
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2974
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2976
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    cmp-long v8, v6, v4

    if-gez v8, :cond_f

    .line 2979
    invoke-static {v6, v7}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v6

    .line 2977
    :cond_f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2975
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2985
    :cond_10
    invoke-static {v1, v2}, Lnet/time4j/Duration;->create(Ljava/util/Map;Z)Lnet/time4j/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static of(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">(JTU;)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 392
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object p0

    return-object p0

    :cond_0
    if-gez v0, :cond_1

    .line 399
    invoke-static {p0, p1}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide p0

    .line 402
    :cond_1
    instance-of v1, p2, Lnet/time4j/ClockUnit;

    if-eqz v1, :cond_4

    .line 403
    invoke-interface {p2}, Lnet/time4j/IsoUnit;->getSymbol()C

    move-result v1

    const/16 v2, 0x33

    if-eq v1, v2, :cond_3

    const/16 v2, 0x36

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 409
    :cond_2
    sget-object p2, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-static {p2}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/IsoUnit;

    const-wide/16 v1, 0x3e8

    .line 410
    invoke-static {p0, p1, v1, v2}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p0

    goto :goto_0

    .line 405
    :cond_3
    sget-object p2, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-static {p2}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/IsoUnit;

    const-wide/32 v1, 0xf4240

    .line 406
    invoke-static {p0, p1, v1, v2}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p0

    .line 417
    :cond_4
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    invoke-static {p0, p1, p2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance p0, Lnet/time4j/Duration;

    if-gez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v1, v2}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object p0
.end method

.method public static ofCalendarUnits(III)Lnet/time4j/Duration;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation

    int-to-long v0, p0

    int-to-long v2, p1

    int-to-long v4, p2

    const/4 v6, 0x0

    .line 496
    invoke-static/range {v0 .. v6}, Lnet/time4j/Duration;->ofCalendarUnits(JJJZ)Lnet/time4j/Duration;

    move-result-object p0

    return-object p0
.end method

.method private static ofCalendarUnits(JJJZ)Lnet/time4j/Duration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZ)",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation

    .line 2744
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_0

    .line 2747
    sget-object v3, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    invoke-static {p0, p1, v3}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    cmp-long p0, p2, v1

    if-eqz p0, :cond_1

    .line 2751
    sget-object p0, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    invoke-static {p2, p3, p0}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    cmp-long p0, p4, v1

    if-eqz p0, :cond_2

    .line 2755
    sget-object p0, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-static {p4, p5, p0}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2758
    :cond_2
    new-instance p0, Lnet/time4j/Duration;

    invoke-direct {p0, v0, p6}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object p0
.end method

.method public static ofClockUnits(III)Lnet/time4j/Duration;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    int-to-long v0, p0

    int-to-long v2, p1

    int-to-long v4, p2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 536
    invoke-static/range {v0 .. v8}, Lnet/time4j/Duration;->ofClockUnits(JJJJZ)Lnet/time4j/Duration;

    move-result-object p0

    return-object p0
.end method

.method private static ofClockUnits(JJJJZ)Lnet/time4j/Duration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJZ)",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    .line 2770
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_0

    .line 2773
    sget-object v3, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-static {p0, p1, v3}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    cmp-long p0, p2, v1

    if-eqz p0, :cond_1

    .line 2777
    sget-object p0, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    invoke-static {p2, p3, p0}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    cmp-long p0, p4, v1

    if-eqz p0, :cond_2

    .line 2781
    sget-object p0, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-static {p4, p5, p0}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    cmp-long p0, p6, v1

    if-eqz p0, :cond_3

    .line 2785
    sget-object p0, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-static {p6, p7, p0}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2788
    :cond_3
    new-instance p0, Lnet/time4j/Duration;

    invoke-direct {p0, v0, p8}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object p0
.end method

.method public static ofNegative()Lnet/time4j/Duration$Builder;
    .locals 2

    .line 457
    new-instance v0, Lnet/time4j/Duration$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/time4j/Duration$Builder;-><init>(Z)V

    return-object v0
.end method

.method public static ofPositive()Lnet/time4j/Duration$Builder;
    .locals 2

    .line 438
    new-instance v0, Lnet/time4j/Duration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/Duration$Builder;-><init>(Z)V

    return-object v0
.end method

.method public static ofZero()Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">()",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 355
    sget-object v0, Lnet/time4j/Duration;->ZERO:Lnet/time4j/Duration;

    return-object v0
.end method

.method private static parse(Ljava/lang/String;IIILjava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/engine/ChronoUnit;",
            ">(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v8, p2

    move/from16 v9, p3

    add-int/lit8 v1, v8, -0x1

    .line 3227
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v10, 0x2

    const/16 v11, 0x39

    const/16 v12, 0x30

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-lt v1, v12, :cond_1

    if-gt v1, v11, :cond_1

    if-eq v9, v10, :cond_1

    move-object/from16 v15, p4

    if-nez v9, :cond_0

    move v13, v14

    .line 3230
    :cond_0
    invoke-static {v7, v0, v8, v13, v15}, Lnet/time4j/Duration;->parseAlt(Ljava/lang/String;IIZLjava/util/List;)V

    return v14

    :cond_1
    move-object/from16 v15, p4

    if-eq v0, v8, :cond_12

    const/16 v16, 0x0

    move v5, v0

    move v6, v5

    move v0, v13

    move/from16 v17, v0

    move-object/from16 v1, v16

    move-object v2, v1

    :goto_0
    if-ge v6, v8, :cond_10

    .line 3245
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v12, :cond_3

    if-gt v3, v11, :cond_3

    if-nez v2, :cond_2

    .line 3249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v6

    move v0, v13

    .line 3253
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v6

    goto/16 :goto_7

    :cond_3
    const/16 v4, 0x2c

    const-string v11, "Decimal separator misplaced: "

    if-eq v3, v4, :cond_e

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_4

    goto/16 :goto_5

    :cond_4
    if-nez v0, :cond_d

    if-eqz v17, :cond_9

    const/16 v0, 0x53

    if-ne v3, v0, :cond_8

    if-eqz v2, :cond_7

    .line 3277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v3, 0x9

    if-le v0, v3, :cond_5

    .line 3278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3280
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_1
    if-ge v0, v3, :cond_6

    .line 3281
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3284
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v5}, Lnet/time4j/Duration;->parseAmount(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v2

    .line 3285
    sget-object v0, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    move-object/from16 v4, p0

    move v11, v5

    move v5, v6

    move v12, v6

    move-object/from16 v6, p4

    .line 3287
    invoke-static/range {v0 .. v6}, Lnet/time4j/Duration;->addParsedItem(Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;JLjava/lang/String;ILjava/util/List;)Lnet/time4j/engine/ChronoUnit;

    move-result-object v1

    goto :goto_4

    :cond_7
    move v12, v6

    .line 3275
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v6, v12, -0x1

    invoke-direct {v0, v1, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_8
    move v12, v6

    .line 3272
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second symbol expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_9
    move v11, v5

    move v12, v6

    if-nez v2, :cond_a

    .line 3293
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3291
    :goto_2
    invoke-static {v7, v0, v11}, Lnet/time4j/Duration;->parseAmount(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v4

    if-ne v9, v14, :cond_b

    .line 3298
    invoke-static {v3, v7, v12}, Lnet/time4j/Duration;->parseTimeSymbol(CLjava/lang/String;I)Lnet/time4j/ClockUnit;

    move-result-object v0

    goto :goto_3

    :cond_b
    if-ne v9, v10, :cond_c

    .line 3300
    invoke-static {v3, v7, v12}, Lnet/time4j/Duration;->parseWeekBasedSymbol(CLjava/lang/String;I)Lnet/time4j/IsoDateUnit;

    move-result-object v0

    goto :goto_3

    .line 3302
    :cond_c
    invoke-static {v3, v7, v12}, Lnet/time4j/Duration;->parseDateSymbol(CLjava/lang/String;I)Lnet/time4j/CalendarUnit;

    move-result-object v0

    :goto_3
    move-wide v2, v4

    move-object/from16 v4, p0

    move v5, v12

    move-object/from16 v6, p4

    .line 3304
    invoke-static/range {v0 .. v6}, Lnet/time4j/Duration;->addParsedItem(Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;JLjava/lang/String;ILjava/util/List;)Lnet/time4j/engine/ChronoUnit;

    move-result-object v1

    :goto_4
    move v5, v11

    move v0, v14

    goto :goto_6

    :cond_d
    move v12, v6

    .line 3268
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_e
    :goto_5
    move v12, v6

    move v6, v5

    if-eqz v2, :cond_f

    if-ne v9, v14, :cond_f

    .line 3260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Lnet/time4j/Duration;->parseAmount(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v2

    .line 3261
    sget-object v0, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    move-object/from16 v4, p0

    move v5, v12

    move v11, v6

    move-object/from16 v6, p4

    .line 3263
    invoke-static/range {v0 .. v6}, Lnet/time4j/Duration;->addParsedItem(Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;JLjava/lang/String;ILjava/util/List;)Lnet/time4j/engine/ChronoUnit;

    move-result-object v1

    move v5, v11

    move v0, v14

    move/from16 v17, v0

    :goto_6
    move-object/from16 v2, v16

    :goto_7
    add-int/lit8 v6, v12, 0x1

    const/16 v11, 0x39

    const/16 v12, 0x30

    goto/16 :goto_0

    .line 3256
    :cond_f
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_10
    if-eqz v0, :cond_11

    return v13

    .line 3310
    :cond_11
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit symbol expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 3235
    :cond_12
    new-instance v1, Ljava/text/ParseException;

    invoke-direct {v1, v7, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static parseAlt(Ljava/lang/String;IIZLjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/engine/ChronoUnit;",
            ">(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz p3, :cond_9

    add-int/lit8 v9, v1, 0x4

    if-ge v9, v2, :cond_0

    .line 3329
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_0

    move v10, v5

    goto :goto_0

    :cond_0
    move v10, v6

    :goto_0
    if-eqz v10, :cond_1

    add-int/lit8 v11, v1, 0x8

    if-ne v11, v2, :cond_2

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v1, 0x7

    if-ne v11, v2, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    .line 3335
    :goto_1
    invoke-static {v10, v5}, Lnet/time4j/Duration;->getAlternativeDateFormat(ZZ)Lnet/time4j/Duration$Formatter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lnet/time4j/Duration$Formatter;->parse(Ljava/lang/CharSequence;I)Lnet/time4j/engine/TimeSpan;

    move-result-object v2

    check-cast v2, Lnet/time4j/Duration;

    .line 3336
    sget-object v11, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v2, v11}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/IsoUnit;)J

    move-result-wide v11

    if-eqz v5, :cond_3

    .line 3341
    sget-object v0, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v2, v0}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/IsoUnit;)J

    move-result-wide v0

    move-wide v13, v7

    goto :goto_3

    .line 3344
    :cond_3
    sget-object v5, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v2, v5}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/IsoUnit;)J

    move-result-wide v13

    .line 3345
    sget-object v5, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v2, v5}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/IsoUnit;)J

    move-result-wide v15

    const-wide/16 v17, 0xc

    cmp-long v2, v13, v17

    if-gtz v2, :cond_8

    const-wide/16 v17, 0x1e

    cmp-long v2, v15, v17

    if-lez v2, :cond_5

    .line 3352
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISO-8601 prohibits days-part > 30: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x6

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    add-int/2addr v1, v4

    invoke-direct {v2, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_5
    move-wide v0, v15

    :goto_3
    cmp-long v2, v11, v7

    if-lez v2, :cond_6

    .line 3358
    sget-object v2, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    invoke-static {v2}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoUnit;

    .line 3359
    invoke-static {v11, v12, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    cmp-long v2, v13, v7

    if-lez v2, :cond_7

    .line 3362
    sget-object v2, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    invoke-static {v2}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoUnit;

    .line 3363
    invoke-static {v13, v14, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    cmp-long v2, v0, v7

    if-lez v2, :cond_12

    .line 3366
    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-static {v2}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoUnit;

    .line 3367
    invoke-static {v0, v1, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 3347
    :cond_8
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISO-8601 prohibits months-part > 12: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/2addr v9, v10

    invoke-direct {v1, v0, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_9
    add-int/lit8 v9, v1, 0x2

    if-ge v9, v2, :cond_a

    .line 3371
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v10, 0x3a

    if-ne v2, v10, :cond_a

    goto :goto_4

    :cond_a
    move v5, v6

    .line 3373
    :goto_4
    invoke-static {v5}, Lnet/time4j/Duration;->getAlternativeTimeFormat(Z)Lnet/time4j/Duration$Formatter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lnet/time4j/Duration$Formatter;->parse(Ljava/lang/CharSequence;I)Lnet/time4j/engine/TimeSpan;

    move-result-object v2

    check-cast v2, Lnet/time4j/Duration;

    .line 3374
    sget-object v10, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-virtual {v2, v10}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/IsoUnit;)J

    move-result-wide v10

    cmp-long v12, v10, v7

    if-lez v12, :cond_c

    const-wide/16 v12, 0x18

    cmp-long v12, v10, v12

    if-gtz v12, :cond_b

    .line 3381
    sget-object v12, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-static {v12}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/time4j/engine/ChronoUnit;

    .line 3382
    invoke-static {v10, v11, v12}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3377
    :cond_b
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISO-8601 prohibits hours-part > 24: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 3384
    :cond_c
    :goto_5
    sget-object v10, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    invoke-virtual {v2, v10}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/IsoUnit;)J

    move-result-wide v10

    cmp-long v12, v10, v7

    const-wide/16 v13, 0x3c

    if-lez v12, :cond_e

    cmp-long v12, v10, v13

    if-gtz v12, :cond_d

    .line 3391
    sget-object v9, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    invoke-static {v9}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/time4j/engine/ChronoUnit;

    .line 3392
    invoke-static {v10, v11, v9}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3387
    :cond_d
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISO-8601 prohibits minutes-part > 60: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/2addr v9, v5

    invoke-direct {v1, v0, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 3394
    :cond_e
    :goto_6
    sget-object v9, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-virtual {v2, v9}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/IsoUnit;)J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-lez v11, :cond_11

    cmp-long v11, v9, v13

    if-lez v11, :cond_10

    .line 3397
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISO-8601 prohibits seconds-part > 60: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x4

    if-eqz v5, :cond_f

    goto :goto_7

    :cond_f
    move v4, v6

    :goto_7
    add-int/2addr v1, v4

    invoke-direct {v2, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 3401
    :cond_10
    sget-object v0, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-static {v0}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoUnit;

    .line 3402
    invoke-static {v9, v10, v0}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3404
    :cond_11
    sget-object v0, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-virtual {v2, v0}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/IsoUnit;)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-lez v2, :cond_12

    .line 3406
    sget-object v2, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-static {v2}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoUnit;

    .line 3407
    invoke-static {v0, v1, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_8
    return-void
.end method

.method private static parseAmount(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 3574
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    .line 3576
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {v0, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 3577
    invoke-virtual {v0, p1}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3578
    throw v0
.end method

.method public static parseCalendarPeriod(Ljava/lang/String;)Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2418
    const-class v0, Lnet/time4j/CalendarUnit;

    invoke-static {p0, v0}, Lnet/time4j/Duration;->parsePeriod(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static parseClockPeriod(Ljava/lang/String;)Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2447
    const-class v0, Lnet/time4j/ClockUnit;

    invoke-static {p0, v0}, Lnet/time4j/Duration;->parsePeriod(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/Duration;

    move-result-object p0

    return-object p0
.end method

.method private static parseDateSymbol(CLjava/lang/String;I)Lnet/time4j/CalendarUnit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x49

    if-eq p0, v0, :cond_4

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x51

    if-eq p0, v0, :cond_2

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 3493
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Symbol \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' not supported: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 3481
    :pswitch_0
    sget-object p0, Lnet/time4j/CalendarUnit;->DECADES:Lnet/time4j/CalendarUnit;

    return-object p0

    .line 3491
    :pswitch_1
    sget-object p0, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    return-object p0

    .line 3479
    :pswitch_2
    sget-object p0, Lnet/time4j/CalendarUnit;->CENTURIES:Lnet/time4j/CalendarUnit;

    return-object p0

    .line 3483
    :cond_0
    sget-object p0, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    return-object p0

    .line 3489
    :cond_1
    sget-object p0, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    return-object p0

    .line 3485
    :cond_2
    sget-object p0, Lnet/time4j/CalendarUnit;->QUARTERS:Lnet/time4j/CalendarUnit;

    return-object p0

    .line 3487
    :cond_3
    sget-object p0, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    return-object p0

    .line 3477
    :cond_4
    sget-object p0, Lnet/time4j/CalendarUnit;->MILLENNIA:Lnet/time4j/CalendarUnit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parsePeriod(Ljava/lang/String;)Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2389
    const-class v0, Lnet/time4j/IsoUnit;

    invoke-static {p0, v0}, Lnet/time4j/Duration;->parsePeriod(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/Duration;

    move-result-object p0

    return-object p0
.end method

.method private static parsePeriod(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/Duration;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 3148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 3150
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v2, v0

    .line 3157
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_c

    add-int/lit8 v0, v0, 0x1

    .line 3164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0x54

    .line 3165
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v1

    .line 3169
    :goto_1
    const-class v8, Lnet/time4j/CalendarUnit;

    if-ne p1, v8, :cond_2

    move v8, v1

    goto :goto_2

    .line 3171
    :cond_2
    const-class v8, Lnet/time4j/ClockUnit;

    if-ne p1, v8, :cond_3

    move v8, v3

    goto :goto_2

    .line 3173
    :cond_3
    const-class v8, Lnet/time4j/IsoDateUnit;

    if-ne p1, v8, :cond_4

    const/4 v8, 0x2

    goto :goto_2

    :cond_4
    move v8, v6

    :goto_2
    if-eqz v7, :cond_7

    if-eq v8, v3, :cond_6

    .line 3182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v8, v6, :cond_5

    goto :goto_3

    :cond_5
    move v1, v8

    :goto_3
    invoke-static {p0, v0, p1, v1, v4}, Lnet/time4j/Duration;->parse(Ljava/lang/String;IIILjava/util/List;)Z

    goto :goto_5

    .line 3179
    :cond_6
    new-instance p1, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format symbol \'T\' expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_7
    if-le v5, v0, :cond_9

    if-eq v8, v3, :cond_8

    .line 3192
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0, v5, v1, v4}, Lnet/time4j/Duration;->parse(Ljava/lang/String;IIILjava/util/List;)Z

    move-result v6

    goto :goto_4

    .line 3188
    :cond_8
    new-instance p1, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected date component found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_9
    move v6, v1

    .line 3195
    :goto_4
    const-class v7, Lnet/time4j/CalendarUnit;

    if-eq p1, v7, :cond_b

    if-eqz v6, :cond_a

    add-int/2addr v5, v3

    .line 3199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p0, v5, p1, v1, v4}, Lnet/time4j/Duration;->parseAlt(Ljava/lang/String;IIZLjava/util/List;)V

    goto :goto_5

    :cond_a
    add-int/2addr v5, v3

    .line 3201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p0, v5, p1, v3, v4}, Lnet/time4j/Duration;->parse(Ljava/lang/String;IIILjava/util/List;)Z

    .line 3205
    :goto_5
    new-instance p1, Lnet/time4j/Duration;

    invoke-direct {p1, v4, v2}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object p1

    .line 3196
    :cond_b
    new-instance p1, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected time component found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 3158
    :cond_c
    new-instance p1, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format symbol \'P\' expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 3208
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected termination of period string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 3212
    invoke-virtual {v1, p1}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3213
    throw v1

    .line 3149
    :cond_d
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "Empty period string."

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static parseTimeSymbol(CLjava/lang/String;I)Lnet/time4j/ClockUnit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x48

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x53

    if-ne p0, v0, :cond_0

    .line 3511
    sget-object p0, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    return-object p0

    .line 3513
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Symbol \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' not supported: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 3509
    :cond_1
    sget-object p0, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    return-object p0

    .line 3507
    :cond_2
    sget-object p0, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    return-object p0
.end method

.method public static parseWeekBasedPeriod(Ljava/lang/String;)Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/IsoDateUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2479
    const-class v0, Lnet/time4j/IsoDateUnit;

    invoke-static {p0, v0}, Lnet/time4j/Duration;->parsePeriod(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/Duration;

    move-result-object p0

    return-object p0
.end method

.method private static parseWeekBasedSymbol(CLjava/lang/String;I)Lnet/time4j/IsoDateUnit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x44

    if-eq p0, v0, :cond_2

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-ne p0, v0, :cond_0

    .line 3527
    invoke-static {}, Lnet/time4j/CalendarUnit;->weekBasedYears()Lnet/time4j/IsoDateUnit;

    move-result-object p0

    return-object p0

    .line 3533
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Symbol \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' not supported: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 3529
    :cond_1
    sget-object p0, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    return-object p0

    .line 3531
    :cond_2
    sget-object p0, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3631
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static replaceFraction(JLnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeSpan$Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">(JTU;)",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;"
        }
    .end annotation

    .line 2879
    sget-object v0, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xf4240

    .line 2880
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p0

    .line 2881
    sget-object p2, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-static {p2}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/IsoUnit;

    goto :goto_0

    .line 2882
    :cond_0
    sget-object v0, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x3e8

    .line 2883
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p0

    .line 2884
    sget-object p2, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-static {p2}, Lnet/time4j/Duration;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/IsoUnit;

    .line 2889
    :goto_0
    invoke-static {p0, p1, p2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static summarize(Lnet/time4j/engine/TimeSpan;[J)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">(",
            "Lnet/time4j/engine/TimeSpan<",
            "+TU;>;[J)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2994
    aget-wide v1, p1, v0

    const/4 v3, 0x1

    .line 2995
    aget-wide v4, p1, v3

    const/4 v6, 0x2

    .line 2996
    aget-wide v7, p1, v6

    const/4 v9, 0x3

    .line 2997
    aget-wide v10, p1, v9

    .line 2999
    invoke-interface/range {p0 .. p0}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/time4j/engine/TimeSpan$Item;

    .line 3000
    invoke-virtual {v13}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/time4j/IsoUnit;

    .line 3001
    invoke-virtual {v13}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v15

    .line 3003
    invoke-interface/range {p0 .. p0}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3004
    invoke-static/range {v15 .. v16}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v15

    :cond_0
    move-wide/from16 v17, v7

    move-wide v6, v15

    .line 3007
    instance-of v8, v14, Lnet/time4j/CalendarUnit;

    if-eqz v8, :cond_1

    .line 3008
    const-class v8, Lnet/time4j/CalendarUnit;

    invoke-virtual {v8, v14}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/time4j/CalendarUnit;

    .line 3009
    sget-object v14, Lnet/time4j/Duration$2;->$SwitchMap$net$time4j$CalendarUnit:[I

    invoke-virtual {v8}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 3047
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v8}, Lnet/time4j/CalendarUnit;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3044
    :pswitch_0
    invoke-static {v4, v5, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v4

    goto :goto_1

    :pswitch_1
    const-wide/16 v14, 0x7

    .line 3041
    invoke-static {v6, v7, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v6

    .line 3040
    invoke-static {v4, v5, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 3036
    :pswitch_2
    invoke-static {v1, v2, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v1

    goto :goto_1

    :pswitch_3
    const-wide/16 v14, 0x3

    .line 3033
    invoke-static {v6, v7, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v6

    .line 3032
    invoke-static {v1, v2, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v1

    goto :goto_1

    :pswitch_4
    const-wide/16 v14, 0xc

    .line 3028
    invoke-static {v6, v7, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v6

    .line 3027
    invoke-static {v1, v2, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v1

    goto :goto_1

    :pswitch_5
    const-wide/16 v14, 0x78

    .line 3023
    invoke-static {v6, v7, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v6

    .line 3022
    invoke-static {v1, v2, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v1

    goto :goto_1

    :pswitch_6
    const-wide/16 v14, 0x4b0

    .line 3018
    invoke-static {v6, v7, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v6

    .line 3017
    invoke-static {v1, v2, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v1

    goto :goto_1

    :pswitch_7
    const-wide/16 v14, 0x2ee0

    .line 3013
    invoke-static {v6, v7, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v6

    .line 3012
    invoke-static {v1, v2, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v1

    :goto_1
    move-wide/from16 v7, v17

    :goto_2
    move-wide/from16 v16, v4

    goto :goto_3

    .line 3049
    :cond_1
    instance-of v8, v14, Lnet/time4j/ClockUnit;

    if-eqz v8, :cond_2

    .line 3050
    const-class v8, Lnet/time4j/ClockUnit;

    invoke-virtual {v8, v14}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/time4j/ClockUnit;

    .line 3051
    sget-object v14, Lnet/time4j/Duration$2;->$SwitchMap$net$time4j$ClockUnit:[I

    invoke-virtual {v8}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_1

    .line 3079
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v8}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3076
    :pswitch_8
    invoke-static {v10, v11, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v10

    goto :goto_1

    :pswitch_9
    const-wide/16 v14, 0x3e8

    .line 3073
    invoke-static {v6, v7, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v6

    .line 3072
    invoke-static {v10, v11, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v10

    goto :goto_1

    :pswitch_a
    const-wide/32 v14, 0xf4240

    .line 3068
    invoke-static {v6, v7, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v6

    .line 3067
    invoke-static {v10, v11, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v10

    goto :goto_1

    :pswitch_b
    move-wide/from16 v14, v17

    .line 3063
    invoke-static {v14, v15, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v7

    goto :goto_2

    :pswitch_c
    move-wide/from16 v14, v17

    move-wide/from16 v16, v4

    const-wide/16 v3, 0x3c

    .line 3060
    invoke-static {v6, v7, v3, v4}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v3

    .line 3059
    invoke-static {v14, v15, v3, v4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v7

    goto :goto_3

    :pswitch_d
    move-wide/from16 v14, v17

    move-wide/from16 v16, v4

    const-wide/16 v3, 0xe10

    .line 3055
    invoke-static {v6, v7, v3, v4}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v3

    .line 3054
    invoke-static {v14, v15, v3, v4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v7

    :goto_3
    move-wide/from16 v4, v16

    const/4 v3, 0x1

    const/4 v6, 0x2

    goto/16 :goto_0

    :cond_2
    return v0

    :cond_3
    move-wide/from16 v16, v4

    move-wide v14, v7

    const-wide/16 v3, 0x0

    cmp-long v6, v10, v3

    if-eqz v6, :cond_4

    const-wide v6, 0x4e94914f0000L

    move-wide/from16 v19, v1

    move-wide/from16 v0, v16

    .line 3089
    invoke-static {v0, v1, v6, v7}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 3088
    invoke-static {v10, v11, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    const-wide/32 v6, 0x3b9aca00

    .line 3092
    invoke-static {v14, v15, v6, v7}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v6

    .line 3091
    invoke-static {v0, v1, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v10

    move-wide v7, v3

    goto :goto_4

    :cond_4
    move-wide/from16 v19, v1

    move-wide/from16 v0, v16

    cmp-long v6, v14, v3

    if-eqz v6, :cond_5

    const-wide/32 v6, 0x15180

    .line 3098
    invoke-static {v0, v1, v6, v7}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 3097
    invoke-static {v14, v15, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v7

    goto :goto_4

    :cond_5
    move-wide v3, v0

    move-wide v7, v14

    :goto_4
    const/4 v0, 0x0

    .line 3102
    aput-wide v19, p1, v0

    const/4 v0, 0x1

    .line 3103
    aput-wide v3, p1, v0

    const/4 v1, 0x2

    .line 3104
    aput-wide v7, p1, v1

    .line 3105
    aput-wide v10, p1, v9

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private toString(I)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2538
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 2540
    :cond_0
    new-instance v1, Lnet/time4j/engine/ChronoException;

    const-string v2, "Negative sign not allowed in ISO-8601."

    invoke-direct {v1, v2}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2543
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "PT0S"

    return-object v1

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 2548
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2550
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x2d

    .line 2551
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v6, 0x50

    .line 2554
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2561
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Duration;->count()I

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v9, v6, :cond_15

    .line 2562
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/TimeSpan$Item;

    .line 2563
    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v4, v19

    check-cast v4, Lnet/time4j/IsoUnit;

    if-nez v12, :cond_5

    .line 2565
    invoke-interface {v4}, Lnet/time4j/IsoUnit;->isCalendrical()Z

    move-result v19

    if-nez v19, :cond_5

    const/16 v12, 0x54

    .line 2566
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v20, v13

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    move-wide/from16 v20, v13

    move v14, v12

    .line 2570
    :goto_3
    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v12

    .line 2571
    invoke-interface {v4}, Lnet/time4j/IsoUnit;->getSymbol()C

    move-result v2

    move/from16 v19, v14

    .line 2573
    sget-object v14, Lnet/time4j/Weekcycle;->YEARS:Lnet/time4j/Weekcycle;

    if-ne v4, v14, :cond_6

    const/16 v14, 0x30

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    const/16 v14, 0x30

    :goto_4
    if-le v2, v14, :cond_7

    const/16 v14, 0x39

    if-gt v2, v14, :cond_7

    move-wide v10, v12

    move v1, v15

    :goto_5
    move-wide/from16 v13, v20

    goto/16 :goto_d

    :cond_7
    const/16 v14, 0x53

    if-ne v2, v14, :cond_8

    move-wide v13, v12

    move v1, v15

    goto/16 :goto_d

    :cond_8
    if-nez v3, :cond_a

    const/4 v14, 0x1

    if-ne v1, v14, :cond_9

    goto :goto_7

    .line 2640
    :cond_9
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_6
    move v1, v15

    goto/16 :goto_c

    :cond_a
    :goto_7
    const/16 v14, 0x48

    const/16 v18, 0x44

    const/16 v1, 0x59

    if-eq v2, v14, :cond_d

    const/16 v14, 0x49

    if-eq v2, v14, :cond_13

    const/16 v14, 0x4d

    if-eq v2, v14, :cond_d

    const/16 v14, 0x51

    if-eq v2, v14, :cond_12

    const/16 v14, 0x57

    if-eq v2, v14, :cond_e

    if-eq v2, v1, :cond_d

    packed-switch v2, :pswitch_data_0

    if-eqz v3, :cond_b

    const-string v1, "XML"

    goto :goto_8

    :cond_b
    const-string v1, "ISO"

    .line 2634
    :goto_8
    new-instance v2, Lnet/time4j/engine/ChronoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Special units cannot be output in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-mode: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    .line 2637
    invoke-direct {v0, v14}, Lnet/time4j/Duration;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const/4 v14, 0x0

    const-wide/16 v1, 0xa

    .line 2621
    invoke-static {v12, v13, v1, v2}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_9

    :pswitch_1
    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    cmp-long v1, v7, v16

    if-eqz v1, :cond_c

    .line 2587
    invoke-static {v12, v13, v7, v8}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v12

    const-wide/16 v7, 0x0

    .line 2590
    :cond_c
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_6

    :pswitch_2
    const/4 v14, 0x0

    const-wide/16 v1, 0x64

    .line 2625
    invoke-static {v12, v13, v1, v2}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_9
    move v1, v15

    :goto_a
    const/16 v2, 0x59

    goto :goto_c

    :cond_d
    move v1, v15

    goto :goto_b

    :cond_e
    move v1, v15

    const/4 v14, 0x1

    if-ne v6, v14, :cond_10

    if-eqz v3, :cond_f

    const-wide/16 v14, 0x7

    .line 2600
    invoke-static {v12, v13, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move/from16 v2, v18

    goto :goto_c

    .line 2603
    :cond_f
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_10
    const-wide/16 v14, 0x7

    .line 2606
    invoke-static {v12, v13, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v7

    .line 2607
    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, v2}, Lnet/time4j/Duration;->contains(Lnet/time4j/IsoUnit;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_5

    .line 2610
    :cond_11
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move/from16 v2, v18

    const-wide/16 v7, 0x0

    goto :goto_c

    :cond_12
    move v1, v15

    const-wide/16 v14, 0x3

    .line 2617
    invoke-static {v12, v13, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    goto :goto_c

    :cond_13
    move v1, v15

    const-wide/16 v14, 0x3e8

    .line 2629
    invoke-static {v12, v13, v14, v15}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 2595
    :goto_b
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_c
    if-nez v2, :cond_14

    const/16 v2, 0x7b

    .line 2644
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2645
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    .line 2646
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 2648
    :cond_14
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :goto_d
    add-int/lit8 v9, v9, 0x1

    move v15, v1

    move/from16 v12, v19

    const/4 v2, 0x1

    move/from16 v1, p1

    goto/16 :goto_2

    :cond_15
    move-wide/from16 v20, v13

    const-wide/16 v1, 0x0

    cmp-long v4, v10, v1

    if-eqz v4, :cond_18

    const-wide/32 v1, 0x3b9aca00

    .line 2655
    div-long v6, v10, v1

    move-wide/from16 v13, v20

    invoke-static {v13, v14, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v6

    .line 2656
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_16

    const/16 v3, 0x2e

    goto :goto_e

    .line 2657
    :cond_16
    sget-char v3, Lnet/time4j/Duration;->ISO_DECIMAL_SEPARATOR:C

    :goto_e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2658
    rem-long/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 2659
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x9

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_17

    const/16 v4, 0x30

    .line 2660
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2662
    :cond_17
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x53

    .line 2663
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_18
    move-wide/from16 v13, v20

    const/16 v1, 0x53

    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-eqz v2, :cond_19

    .line 2665
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2666
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    :goto_10
    if-eqz v15, :cond_1c

    const/4 v1, 0x1

    xor-int/2addr v1, v12

    if-eqz v1, :cond_1b

    .line 2672
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Duration;->count()I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1b

    .line 2673
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/TimeSpan$Item;

    invoke-virtual {v4}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v4

    .line 2674
    sget-object v6, Lnet/time4j/Weekcycle;->YEARS:Lnet/time4j/Weekcycle;

    if-eq v4, v6, :cond_1a

    sget-object v6, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    if-eq v4, v6, :cond_1a

    sget-object v6, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    if-eq v4, v6, :cond_1a

    const/4 v4, 0x0

    goto :goto_12

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1b
    move v4, v1

    :goto_12
    if-nez v4, :cond_1c

    const-string v1, "Y"

    .line 2681
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const-string v3, "{WEEK_BASED_YEARS}"

    .line 2682
    invoke-virtual {v5, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2686
    :cond_1c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 3618
    new-instance v0, Lnet/time4j/SPX;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lnet/time4j/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public abs()Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 1371
    invoke-virtual {p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    invoke-virtual {p0}, Lnet/time4j/Duration;->inverse()Lnet/time4j/Duration;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 131
    check-cast p1, Lnet/time4j/IsoUnit;

    invoke-virtual {p0, p1}, Lnet/time4j/Duration;->contains(Lnet/time4j/IsoUnit;)Z

    move-result p1

    return p1
.end method

.method public contains(Lnet/time4j/IsoUnit;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 845
    :cond_0
    invoke-direct {p0, p1}, Lnet/time4j/Duration;->isFractionUnit(Lnet/time4j/IsoUnit;)Z

    move-result v1

    .line 847
    iget-object v2, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 848
    iget-object v4, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/TimeSpan$Item;

    .line 849
    invoke-virtual {v4}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/IsoUnit;

    .line 852
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v1, :cond_1

    .line 853
    invoke-direct {p0, v5}, Lnet/time4j/Duration;->isFractionUnit(Lnet/time4j/IsoUnit;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 855
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public bridge synthetic contains(Lnet/time4j/engine/ChronoUnit;)Z
    .locals 0

    .line 131
    check-cast p1, Lnet/time4j/IsoUnit;

    invoke-virtual {p0, p1}, Lnet/time4j/Duration;->contains(Lnet/time4j/IsoUnit;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2050
    :cond_0
    instance-of v1, p1, Lnet/time4j/Duration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2051
    const-class v1, Lnet/time4j/Duration;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Duration;

    .line 2052
    iget-boolean v1, p0, Lnet/time4j/Duration;->negative:Z

    iget-boolean v3, p1, Lnet/time4j/Duration;->negative:Z

    if-ne v1, v3, :cond_1

    .line 2054
    invoke-virtual {p0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public bridge synthetic getPartialAmount(Ljava/lang/Object;)J
    .locals 2

    .line 131
    check-cast p1, Lnet/time4j/IsoUnit;

    invoke-virtual {p0, p1}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/IsoUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPartialAmount(Lnet/time4j/IsoUnit;)J
    .locals 9

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 897
    :cond_0
    invoke-direct {p0, p1}, Lnet/time4j/Duration;->isFractionUnit(Lnet/time4j/IsoUnit;)Z

    move-result v2

    .line 899
    iget-object v3, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    .line 900
    iget-object v6, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/engine/TimeSpan$Item;

    .line 901
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/IsoUnit;

    .line 903
    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 904
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v0

    return-wide v0

    :cond_1
    if-eqz v2, :cond_4

    .line 907
    invoke-direct {p0, v7}, Lnet/time4j/Duration;->isFractionUnit(Lnet/time4j/IsoUnit;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 909
    invoke-interface {v7}, Lnet/time4j/IsoUnit;->getSymbol()C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 910
    invoke-interface {p1}, Lnet/time4j/IsoUnit;->getSymbol()C

    move-result p1

    add-int/lit8 p1, p1, -0x30

    sub-int v1, v0, p1

    .line 913
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    :goto_1
    if-ge v4, v1, :cond_2

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-lt v0, p1, :cond_3

    .line 918
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v0

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    .line 920
    :cond_3
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v0

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-wide v0
.end method

.method public bridge synthetic getPartialAmount(Lnet/time4j/engine/ChronoUnit;)J
    .locals 2

    .line 131
    check-cast p1, Lnet/time4j/IsoUnit;

    invoke-virtual {p0, p1}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/IsoUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalLength()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2072
    invoke-virtual {p0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 2074
    iget-boolean v1, p0, Lnet/time4j/Duration;->negative:Z

    if-eqz v1, :cond_0

    xor-int/2addr v0, v0

    :cond_0
    return v0
.end method

.method public inverse()Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1427
    invoke-virtual {p0, v0}, Lnet/time4j/Duration;->multipliedBy(I)Lnet/time4j/Duration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverse()Lnet/time4j/engine/AbstractDuration;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lnet/time4j/Duration;->inverse()Lnet/time4j/Duration;

    move-result-object v0

    return-object v0
.end method

.method public isNegative()Z
    .locals 1

    .line 811
    iget-boolean v0, p0, Lnet/time4j/Duration;->negative:Z

    return v0
.end method

.method public multipliedBy(I)Lnet/time4j/Duration;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 1461
    invoke-virtual {p0}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    .line 1466
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1468
    new-instance p1, Lnet/time4j/Duration;

    invoke-direct {p1, p0, v0}, Lnet/time4j/Duration;-><init>(Lnet/time4j/Duration;Z)V

    return-object p1

    .line 1471
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lnet/time4j/Duration;->count()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1472
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1474
    invoke-direct {p0}, Lnet/time4j/Duration;->count()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 1475
    invoke-virtual {p0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/engine/TimeSpan$Item;

    .line 1478
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v7

    int-to-long v9, v2

    invoke-static {v7, v8, v9, v10}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v7

    .line 1479
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v6

    .line 1477
    invoke-static {v7, v8, v6}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v6

    .line 1476
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1484
    :cond_3
    new-instance v2, Lnet/time4j/Duration;

    if-gez p1, :cond_5

    .line 1486
    invoke-virtual {p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v0

    :goto_1
    invoke-direct {v2, v1, v0}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object v2

    :cond_6
    :goto_2
    return-object p0
.end method

.method public plus(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTU;)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "Missing chronological unit."

    .line 1078
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    if-gez v4, :cond_1

    .line 1088
    invoke-static/range {p1 .. p2}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v7

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move-wide/from16 v7, p1

    const/4 v4, 0x0

    .line 1093
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1094
    invoke-static {v7, v8, v1}, Lnet/time4j/Duration;->replaceFraction(JLnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1097
    invoke-virtual {v10}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v7

    .line 1098
    invoke-virtual {v10}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/time4j/IsoUnit;

    goto :goto_1

    :cond_2
    move-object v11, v1

    .line 1101
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    if-nez v10, :cond_3

    .line 1102
    invoke-static {v7, v8, v11}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v10

    :cond_3
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    new-instance v1, Lnet/time4j/Duration;

    invoke-direct {v1, v9, v4}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object v1

    .line 1107
    :cond_4
    invoke-direct {v0, v11}, Lnet/time4j/Duration;->getIndex(Lnet/time4j/engine/ChronoUnit;)I

    move-result v10

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v12

    if-gez v10, :cond_6

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 1112
    invoke-static {v7, v8, v11}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1114
    :cond_5
    invoke-static/range {p1 .. p3}, Lnet/time4j/Duration;->of(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/Duration;->plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object v1

    return-object v1

    .line 1120
    :cond_6
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/time4j/engine/TimeSpan$Item;

    invoke-virtual {v13}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v13

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v15

    const/16 v16, -0x1

    if-eqz v15, :cond_7

    move/from16 v15, v16

    goto :goto_2

    :cond_7
    const/4 v15, 0x1

    :goto_2
    int-to-long v5, v15

    .line 1119
    invoke-static {v13, v14, v5, v6}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v5

    if-eqz v4, :cond_8

    move/from16 v4, v16

    goto :goto_3

    :cond_8
    const/4 v4, 0x1

    :goto_3
    int-to-long v13, v4

    .line 1123
    invoke-static {v7, v8, v13, v14}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v7

    .line 1118
    invoke-static {v5, v6, v7, v8}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_9

    .line 1130
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 1132
    :cond_9
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Duration;->count()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_c

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v3

    if-gez v2, :cond_a

    move v7, v6

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    :goto_4
    if-ne v3, v7, :cond_b

    goto :goto_5

    .line 1139
    :cond_b
    invoke-static/range {p1 .. p3}, Lnet/time4j/Duration;->of(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/Duration;->plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object v1

    return-object v1

    :cond_c
    :goto_5
    if-gez v2, :cond_d

    .line 1135
    invoke-static {v4, v5}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v4

    .line 1136
    :cond_d
    invoke-static {v4, v5, v11}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v1

    invoke-interface {v9, v10, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-gez v2, :cond_e

    move v5, v6

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    :goto_6
    move v12, v5

    .line 1143
    :goto_7
    new-instance v1, Lnet/time4j/Duration;

    invoke-direct {v1, v9, v12}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "+TU;>;)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1208
    invoke-static/range {p0 .. p1}, Lnet/time4j/Duration;->merge(Lnet/time4j/Duration;Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x4

    new-array v2, v2, [J

    .line 1211
    fill-array-data v2, :array_0

    .line 1217
    invoke-static {v0, v2}, Lnet/time4j/Duration;->summarize(Lnet/time4j/engine/TimeSpan;[J)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1, v2}, Lnet/time4j/Duration;->summarize(Lnet/time4j/engine/TimeSpan;[J)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    .line 1218
    aget-wide v4, v2, v3

    const/4 v6, 0x1

    .line 1219
    aget-wide v7, v2, v6

    const/4 v9, 0x2

    .line 1220
    aget-wide v9, v2, v9

    const/4 v11, 0x3

    .line 1221
    aget-wide v11, v2, v11

    const-wide/16 v13, 0x0

    cmp-long v2, v11, v13

    if-eqz v2, :cond_0

    move-wide v15, v7

    move-wide v6, v11

    goto :goto_0

    :cond_0
    cmp-long v2, v9, v13

    if-eqz v2, :cond_1

    move-wide v15, v7

    move-wide v6, v9

    goto :goto_0

    :cond_1
    move-wide v15, v7

    move-wide v6, v15

    .line 1232
    :goto_0
    invoke-static {v4, v5, v6, v7}, Lnet/time4j/Duration;->hasMixedSigns(JJ)Z

    move-result v8

    if-nez v8, :cond_6

    cmp-long v1, v4, v13

    if-ltz v1, :cond_2

    cmp-long v1, v6, v13

    if-gez v1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 1236
    invoke-static {v4, v5}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v4

    .line 1237
    invoke-static/range {v15 .. v16}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v7

    .line 1238
    invoke-static {v9, v10}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v9

    .line 1239
    invoke-static {v11, v12}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v11

    goto :goto_1

    :cond_4
    move-wide v7, v15

    :goto_1
    const-wide/16 v1, 0xc

    .line 1242
    div-long v15, v4, v1

    .line 1243
    rem-long/2addr v4, v1

    cmp-long v1, v11, v13

    if-eqz v1, :cond_5

    const-wide/32 v1, 0x3b9aca00

    .line 1246
    rem-long v13, v11, v1

    .line 1247
    div-long v9, v11, v1

    :cond_5
    const-wide/16 v1, 0xe10

    .line 1249
    div-long v11, v9, v1

    .line 1250
    rem-long/2addr v9, v1

    const-wide/16 v1, 0x3c

    .line 1251
    div-long v17, v9, v1

    .line 1252
    rem-long/2addr v9, v1

    .line 1254
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1255
    sget-object v2, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    sget-object v2, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    sget-object v2, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    sget-object v2, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    sget-object v2, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    sget-object v2, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    invoke-static {v1, v3}, Lnet/time4j/Duration;->create(Ljava/util/Map;Z)Lnet/time4j/Duration;

    move-result-object v1

    return-object v1

    .line 1266
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mixed signs in result time span not allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " PLUS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    return-object v2

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public toCalendarPeriod()Lnet/time4j/Duration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation

    .line 1633
    invoke-virtual {p0}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object v0

    return-object v0

    .line 1637
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    iget-object v1, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/TimeSpan$Item;

    .line 1640
    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnet/time4j/CalendarUnit;

    if-eqz v3, :cond_1

    .line 1641
    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v3

    const-class v5, Lnet/time4j/CalendarUnit;

    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1645
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1646
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object v0

    return-object v0

    .line 1649
    :cond_3
    new-instance v1, Lnet/time4j/Duration;

    invoke-virtual {p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public toClockPeriod()Lnet/time4j/Duration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    .line 1676
    invoke-virtual {p0}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object v0

    return-object v0

    .line 1680
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1682
    iget-object v1, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/TimeSpan$Item;

    .line 1683
    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnet/time4j/ClockUnit;

    if-eqz v3, :cond_1

    .line 1684
    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v3

    const-class v5, Lnet/time4j/ClockUnit;

    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1688
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1689
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object v0

    return-object v0

    .line 1692
    :cond_3
    new-instance v1, Lnet/time4j/Duration;

    invoke-virtual {p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public toClockPeriodWithDaysAs24Hours()Lnet/time4j/Duration;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    .line 1721
    invoke-virtual {p0}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object v0

    return-object v0

    .line 1725
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    iget-object v1, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/engine/TimeSpan$Item;

    .line 1729
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lnet/time4j/ClockUnit;

    if-eqz v7, :cond_2

    .line 1730
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v7

    const-class v9, Lnet/time4j/ClockUnit;

    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v8, v6}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1731
    :cond_2
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/IsoUnit;

    sget-object v8, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1732
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v4

    const-wide/16 v6, 0x18

    invoke-static {v4, v5, v6, v7}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v4

    goto :goto_0

    :cond_3
    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    .line 1738
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    .line 1739
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/engine/TimeSpan$Item;

    .line 1740
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    if-ne v7, v8, :cond_4

    .line 1742
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v1

    invoke-static {v1, v2, v4, v5}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v1

    sget-object v6, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-static {v1, v2, v6}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v1

    .line 1743
    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v2, :cond_7

    .line 1748
    sget-object v1, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-static {v4, v5, v1}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1750
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1751
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object v0

    return-object v0

    .line 1754
    :cond_7
    :goto_3
    new-instance v1, Lnet/time4j/Duration;

    invoke-virtual {p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2142
    invoke-direct {p0, v0}, Lnet/time4j/Duration;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringISO()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 2205
    invoke-direct {p0, v0}, Lnet/time4j/Duration;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringXML()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 2260
    invoke-direct {p0, v0}, Lnet/time4j/Duration;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lnet/time4j/IsoUnit;)Lnet/time4j/Duration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 1808
    invoke-virtual {p0}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1809
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object p1

    return-object p1

    .line 1812
    :cond_0
    invoke-interface {p1}, Lnet/time4j/IsoUnit;->getLength()D

    move-result-wide v0

    .line 1813
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1815
    iget-object v2, p0, Lnet/time4j/Duration;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/TimeSpan$Item;

    .line 1816
    invoke-virtual {v3}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/IsoUnit;

    invoke-interface {v4}, Lnet/time4j/IsoUnit;->getLength()D

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-ltz v4, :cond_1

    .line 1817
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1823
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1824
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object p1

    return-object p1

    .line 1827
    :cond_2
    new-instance v0, Lnet/time4j/Duration;

    invoke-virtual {p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public union(Lnet/time4j/engine/TimeSpan;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "+TU;>;)",
            "Ljava/util/List<",
            "Lnet/time4j/Duration<",
            "TU;>;>;"
        }
    .end annotation

    .line 1565
    invoke-static {p0, p1}, Lnet/time4j/Duration;->merge(Lnet/time4j/Duration;Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1569
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1570
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object v1

    .line 1571
    invoke-virtual {v1, p1}, Lnet/time4j/Duration;->plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object p1

    .line 1572
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1573
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1576
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public with(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTU;)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1313
    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide p1

    .line 1314
    :cond_0
    invoke-static {p1, p2, p3}, Lnet/time4j/Duration;->replaceFraction(JLnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1317
    invoke-virtual {v1}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide p1

    .line 1318
    invoke-virtual {v1}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/IsoUnit;

    .line 1321
    :cond_1
    invoke-virtual {p0, p3}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/IsoUnit;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x1

    if-gez v0, :cond_2

    move-wide v7, v3

    goto :goto_0

    :cond_2
    move-wide v7, v5

    .line 1325
    :goto_0
    invoke-static {p1, p2, v7, v8}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p1

    .line 1331
    invoke-virtual {p0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-wide v3, v5

    .line 1329
    :goto_1
    invoke-static {v1, v2, v3, v4}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 1324
    invoke-static {p1, p2, v0, v1}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide p1

    .line 1323
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Duration;->plus(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/time4j/engine/Normalizer;)Lnet/time4j/Duration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Normalizer<",
            "TU;>;)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 1787
    invoke-interface {p1, p0}, Lnet/time4j/engine/Normalizer;->normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/engine/TimeSpan;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Duration;->convert(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1
.end method
