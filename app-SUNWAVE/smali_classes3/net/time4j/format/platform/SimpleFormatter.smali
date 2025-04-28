.class public final Lnet/time4j/format/platform/SimpleFormatter;
.super Ljava/lang/Object;
.source "SimpleFormatter.java"

# interfaces
.implements Lnet/time4j/format/TemporalFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/platform/SimpleFormatter$XCalendar;,
        Lnet/time4j/format/platform/SimpleFormatter$Parsed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/format/TemporalFormatter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PROLEPTIC_GREGORIAN:Ljava/util/Date;

.field public static final RFC_1123:Lnet/time4j/format/platform/SimpleFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/platform/SimpleFormatter<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation
.end field

.field private static final RFC_1123_PATTERN:Ljava/lang/String; = "<RFC-1123>"

.field private static final RFC_1123_SHORT:Ljava/lang/String; = "d MMM yyyy HH:mm:ss Z"

.field private static final RFC_1123_WIDE:Ljava/lang/String; = "EEE, d MMM yyyy HH:mm:ss Z"

.field private static final SUPPORTED_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/time4j/engine/Chronology<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final UNIX_EPOCH_DATE:Lnet/time4j/PlainDate;


# instance fields
.field private final leniency:Lnet/time4j/format/Leniency;

.field private final locale:Ljava/util/Locale;

.field private final pattern:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final tzid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 100
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lnet/time4j/format/platform/SimpleFormatter;->PROLEPTIC_GREGORIAN:Ljava/util/Date;

    const/16 v0, 0x7b2

    const/4 v1, 0x1

    .line 101
    invoke-static {v0, v1, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/platform/SimpleFormatter;->UNIX_EPOCH_DATE:Lnet/time4j/PlainDate;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-class v1, Lnet/time4j/PlainDate;

    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-class v1, Lnet/time4j/PlainTime;

    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-class v1, Lnet/time4j/PlainTimestamp;

    invoke-static {}, Lnet/time4j/PlainTimestamp;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-class v1, Lnet/time4j/Moment;

    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/platform/SimpleFormatter;->SUPPORTED_TYPES:Ljava/util/Map;

    .line 145
    new-instance v0, Lnet/time4j/format/platform/SimpleFormatter;

    const-class v2, Lnet/time4j/Moment;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v5, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    const-string v3, "<RFC-1123>"

    const-string v6, "GMT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/time4j/format/platform/SimpleFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/Leniency;Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/format/platform/SimpleFormatter;->RFC_1123:Lnet/time4j/format/platform/SimpleFormatter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/Leniency;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Lnet/time4j/format/Leniency;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing chronological type"

    .line 173
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Locale is not specified."

    .line 177
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Missing leniency."

    .line 179
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    iput-object p1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    .line 183
    iput-object p2, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    .line 185
    iput-object p4, p0, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    .line 186
    iput-object p5, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    return-void

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Format pattern is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljava/util/Date;
    .locals 1

    .line 92
    sget-object v0, Lnet/time4j/format/platform/SimpleFormatter;->PROLEPTIC_GREGORIAN:Ljava/util/Date;

    return-object v0
.end method

.method private static getFormatPattern(Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 3

    .line 857
    instance-of v0, p0, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 858
    const-class v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 861
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot retrieve format pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasTimezoneField()Z
    .locals 6

    .line 704
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 705
    iget-object v4, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_0

    xor-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    const/16 v5, 0x7a

    if-ne v4, v5, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static ofDatePattern(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/platform/SimpleFormatter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/platform/SimpleFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v6, Lnet/time4j/format/platform/SimpleFormatter;

    const-class v1, Lnet/time4j/PlainDate;

    sget-object v4, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/platform/SimpleFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/Leniency;Ljava/lang/String;)V

    return-object v6
.end method

.method public static ofDateStyle(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Lnet/time4j/format/platform/SimpleFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/platform/SimpleFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lnet/time4j/format/DisplayMode;->getStyleValue()I

    move-result p0

    invoke-static {p0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 253
    invoke-static {p0}, Lnet/time4j/format/platform/SimpleFormatter;->getFormatPattern(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    .line 254
    invoke-static {p0, p1}, Lnet/time4j/format/platform/SimpleFormatter;->ofDatePattern(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/platform/SimpleFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static ofMomentPattern(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/tz/TZID;)Lnet/time4j/format/platform/SimpleFormatter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/format/platform/SimpleFormatter<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 425
    new-instance v6, Lnet/time4j/format/platform/SimpleFormatter;

    const-class v1, Lnet/time4j/Moment;

    sget-object v4, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 430
    invoke-interface {p2}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/platform/SimpleFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/Leniency;Ljava/lang/String;)V

    return-object v6
.end method

.method public static ofMomentStyle(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;Lnet/time4j/tz/TZID;)Lnet/time4j/format/platform/SimpleFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Lnet/time4j/format/DisplayMode;",
            "Ljava/util/Locale;",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/format/platform/SimpleFormatter<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lnet/time4j/format/DisplayMode;->getStyleValue()I

    move-result p0

    invoke-virtual {p1}, Lnet/time4j/format/DisplayMode;->getStyleValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 465
    invoke-static {p0}, Lnet/time4j/format/platform/SimpleFormatter;->getFormatPattern(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    .line 466
    invoke-static {p0, p2, p3}, Lnet/time4j/format/platform/SimpleFormatter;->ofMomentPattern(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/tz/TZID;)Lnet/time4j/format/platform/SimpleFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static ofTimePattern(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/platform/SimpleFormatter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/platform/SimpleFormatter<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v6, Lnet/time4j/format/platform/SimpleFormatter;

    const-class v1, Lnet/time4j/PlainTime;

    sget-object v4, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/platform/SimpleFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/Leniency;Ljava/lang/String;)V

    return-object v6
.end method

.method public static ofTimeStyle(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Lnet/time4j/format/platform/SimpleFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/platform/SimpleFormatter<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lnet/time4j/format/DisplayMode;->getStyleValue()I

    move-result p0

    invoke-static {p0, p1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 319
    invoke-static {p0}, Lnet/time4j/format/platform/SimpleFormatter;->getFormatPattern(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/time4j/format/internal/FormatUtils;->removeZones(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 320
    invoke-static {p0, p1}, Lnet/time4j/format/platform/SimpleFormatter;->ofTimePattern(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/platform/SimpleFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static ofTimestampPattern(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/platform/SimpleFormatter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/platform/SimpleFormatter<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation

    .line 351
    new-instance v6, Lnet/time4j/format/platform/SimpleFormatter;

    const-class v1, Lnet/time4j/PlainTimestamp;

    sget-object v4, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/platform/SimpleFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/Leniency;Ljava/lang/String;)V

    return-object v6
.end method

.method public static ofTimestampStyle(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Lnet/time4j/format/platform/SimpleFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Lnet/time4j/format/DisplayMode;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/platform/SimpleFormatter<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Lnet/time4j/format/DisplayMode;->getStyleValue()I

    move-result p0

    invoke-virtual {p1}, Lnet/time4j/format/DisplayMode;->getStyleValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 388
    invoke-static {p0}, Lnet/time4j/format/platform/SimpleFormatter;->getFormatPattern(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/time4j/format/internal/FormatUtils;->removeZones(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 389
    invoke-static {p0, p2}, Lnet/time4j/format/platform/SimpleFormatter;->ofTimestampPattern(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/platform/SimpleFormatter;

    move-result-object p0

    return-object p0
.end method

.method private parseInternal(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/format/RawValues;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Lnet/time4j/format/RawValues;",
            ")TT;"
        }
    .end annotation

    .line 755
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    const-class v2, Lnet/time4j/PlainDate;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 759
    invoke-direct {p0}, Lnet/time4j/format/platform/SimpleFormatter;->setUpLocal()Ljava/text/SimpleDateFormat;

    move-result-object p1

    .line 760
    invoke-virtual {p1, v0, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p2

    .line 761
    sget-object v0, Lnet/time4j/TemporalType;->JAVA_UTIL_DATE:Lnet/time4j/TemporalType;

    invoke-virtual {v0, p2}, Lnet/time4j/TemporalType;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Moment;

    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p2, v0}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p2

    .line 762
    invoke-virtual {p2}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v2

    .line 763
    invoke-static {p3, p1}, Lnet/time4j/format/platform/SimpleFormatter;->updateRawValues(Lnet/time4j/format/RawValues;Ljava/text/SimpleDateFormat;)V

    goto/16 :goto_6

    .line 764
    :cond_0
    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    const-class v3, Lnet/time4j/PlainTime;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    invoke-direct {p0}, Lnet/time4j/format/platform/SimpleFormatter;->setUpLocal()Ljava/text/SimpleDateFormat;

    move-result-object p1

    .line 766
    invoke-virtual {p1, v0, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p2

    .line 767
    sget-object v0, Lnet/time4j/TemporalType;->JAVA_UTIL_DATE:Lnet/time4j/TemporalType;

    invoke-virtual {v0, p2}, Lnet/time4j/TemporalType;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Moment;

    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p2, v0}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p2

    .line 768
    invoke-virtual {p2}, Lnet/time4j/PlainTimestamp;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object v2

    .line 769
    invoke-static {p3, p1}, Lnet/time4j/format/platform/SimpleFormatter;->updateRawValues(Lnet/time4j/format/RawValues;Ljava/text/SimpleDateFormat;)V

    goto/16 :goto_6

    .line 770
    :cond_1
    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    const-class v3, Lnet/time4j/PlainTimestamp;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 771
    invoke-direct {p0}, Lnet/time4j/format/platform/SimpleFormatter;->setUpLocal()Ljava/text/SimpleDateFormat;

    move-result-object p1

    .line 772
    invoke-virtual {p1, v0, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p2

    .line 773
    sget-object v0, Lnet/time4j/TemporalType;->JAVA_UTIL_DATE:Lnet/time4j/TemporalType;

    invoke-virtual {v0, p2}, Lnet/time4j/TemporalType;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Moment;

    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p2, v0}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v2

    .line 774
    invoke-static {p3, p1}, Lnet/time4j/format/platform/SimpleFormatter;->updateRawValues(Lnet/time4j/format/RawValues;Ljava/text/SimpleDateFormat;)V

    goto/16 :goto_6

    .line 775
    :cond_2
    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    const-class v3, Lnet/time4j/Moment;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 776
    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    const-string v4, "<RFC-1123>"

    .line 777
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 778
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_3

    const-string v1, "EEE, d MMM yyyy HH:mm:ss Z"

    goto :goto_0

    :cond_3
    const-string v1, "d MMM yyyy HH:mm:ss Z"

    .line 785
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    const/4 v5, 0x2

    if-ltz v4, :cond_5

    if-ge v3, v5, :cond_5

    .line 786
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    if-lt v3, v5, :cond_6

    const-string v0, ":ss"

    const-string v3, ""

    .line 791
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    move-object v5, v1

    .line 794
    new-instance v0, Lnet/time4j/format/platform/SimpleFormatter;

    const-class v4, Lnet/time4j/ZonalDateTime;

    iget-object v6, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    iget-object v7, p0, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    iget-object v8, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lnet/time4j/format/platform/SimpleFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/Leniency;Ljava/lang/String;)V

    .line 797
    invoke-direct {v0, p1, p2, p3}, Lnet/time4j/format/platform/SimpleFormatter;->parseInternal(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/format/RawValues;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/ZonalDateTime;

    if-nez p1, :cond_7

    goto/16 :goto_6

    .line 798
    :cond_7
    invoke-virtual {p1}, Lnet/time4j/ZonalDateTime;->toMoment()Lnet/time4j/Moment;

    move-result-object p1

    move-object v2, p1

    goto/16 :goto_6

    .line 799
    :cond_8
    iget-object p1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    const-class v1, Lnet/time4j/ZonalDateTime;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 800
    iget-object p1, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    if-nez p1, :cond_9

    const-string p1, "GMT-18:00"

    goto :goto_2

    :cond_9
    const-string v1, "UTC"

    const-string v4, "GMT"

    .line 803
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 804
    :goto_2
    new-instance v1, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    iget-object v5, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 805
    iget-object v4, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    iget-object v5, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    iget-object v6, p0, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    invoke-virtual {v6}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v1, v6}, Lnet/time4j/format/platform/SimpleFormatter;->setUp(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/platform/SimpleFormatter$XCalendar;Z)Ljava/text/SimpleDateFormat;

    move-result-object v4

    .line 806
    invoke-virtual {v4, v0, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 810
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    if-ltz v5, :cond_a

    goto/16 :goto_5

    .line 815
    :cond_a
    new-instance v5, Lnet/time4j/format/platform/SimpleFormatter$Parsed;

    invoke-direct {v5, v1}, Lnet/time4j/format/platform/SimpleFormatter$Parsed;-><init>(Lnet/time4j/format/platform/SimpleFormatter$XCalendar;)V

    const/16 v6, 0xf

    .line 816
    invoke-virtual {v1, v6}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->get(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->get(I)I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, -0x438

    if-eq v6, v7, :cond_e

    .line 821
    invoke-virtual {v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 822
    invoke-virtual {v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 824
    :cond_b
    div-int/lit16 p1, v6, 0x3e8

    invoke-static {p1}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    .line 825
    iget-object p2, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    if-eqz p2, :cond_c

    .line 827
    invoke-virtual {v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p2

    if-ne p2, v6, :cond_c

    .line 829
    iget-object p1, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    goto :goto_3

    .line 831
    :cond_c
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->canonical()Ljava/lang/String;

    move-result-object p1

    .line 835
    :goto_3
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object p1

    .line 836
    invoke-virtual {v5, p1}, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->setTimezone(Lnet/time4j/tz/TZID;)V

    .line 838
    invoke-static {}, Lnet/time4j/PlainTimestamp;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p2

    invoke-virtual {p0}, Lnet/time4j/format/platform/SimpleFormatter;->getAttributes()Lnet/time4j/engine/AttributeQuery;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    invoke-virtual {v1}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v1

    invoke-virtual {p2, v5, v0, v1, v3}, Lnet/time4j/engine/TimeAxis;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/engine/TimePoint;

    move-result-object p2

    check-cast p2, Lnet/time4j/PlainTimestamp;

    if-nez p2, :cond_d

    goto :goto_4

    .line 842
    :cond_d
    invoke-virtual {p2, p1}, Lnet/time4j/PlainTimestamp;->inTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/Moment;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/time4j/Moment;->inZonalView(Lnet/time4j/tz/TZID;)Lnet/time4j/ZonalDateTime;

    move-result-object p1

    move-object v2, p1

    :goto_4
    if-eqz p3, :cond_10

    .line 845
    invoke-virtual {p3, v5}, Lnet/time4j/format/RawValues;->accept(Lnet/time4j/engine/ChronoDisplay;)V

    goto :goto_6

    .line 819
    :cond_e
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 820
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot parse text without timezone: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_5
    return-object v2

    .line 851
    :cond_10
    :goto_6
    iget-object p1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private print(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    const-class v1, Lnet/time4j/PlainDate;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    const-class v0, Lnet/time4j/PlainDate;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 635
    sget-object v0, Lnet/time4j/TemporalType;->JAVA_UTIL_DATE:Lnet/time4j/TemporalType;

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->atStartOfDay()Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->atUTC()Lnet/time4j/Moment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/TemporalType;->from(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    .line 636
    invoke-direct {p0}, Lnet/time4j/format/platform/SimpleFormatter;->setUpLocal()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 637
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    const-class v1, Lnet/time4j/PlainTime;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    const-class v0, Lnet/time4j/PlainTime;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    .line 639
    sget-object v0, Lnet/time4j/TemporalType;->JAVA_UTIL_DATE:Lnet/time4j/TemporalType;

    sget-object v1, Lnet/time4j/format/platform/SimpleFormatter;->UNIX_EPOCH_DATE:Lnet/time4j/PlainDate;

    invoke-virtual {v1, p1}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->atUTC()Lnet/time4j/Moment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/TemporalType;->from(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    .line 640
    invoke-direct {p0}, Lnet/time4j/format/platform/SimpleFormatter;->setUpLocal()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 641
    :cond_1
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    const-class v1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    const-class v0, Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    .line 643
    sget-object v0, Lnet/time4j/TemporalType;->JAVA_UTIL_DATE:Lnet/time4j/TemporalType;

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->atUTC()Lnet/time4j/Moment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/TemporalType;->from(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    .line 644
    invoke-direct {p0}, Lnet/time4j/format/platform/SimpleFormatter;->setUpLocal()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 645
    :cond_2
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    const-class v1, Lnet/time4j/Moment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 646
    const-class v0, Lnet/time4j/Moment;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Moment;

    .line 647
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 650
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    const-string v1, "<RFC-1123>"

    .line 651
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "EEE, d MMM yyyy HH:mm:ss Z"

    :cond_3
    move-object v3, v0

    .line 654
    new-instance v0, Lnet/time4j/format/platform/SimpleFormatter;

    const-class v2, Lnet/time4j/ZonalDateTime;

    iget-object v4, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    iget-object v6, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/time4j/format/platform/SimpleFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/Leniency;Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lnet/time4j/Moment;->inZonalView(Ljava/lang/String;)Lnet/time4j/ZonalDateTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/format/platform/SimpleFormatter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 648
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot print moment without timezone."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 658
    :cond_5
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    const-class v1, Lnet/time4j/ZonalDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 659
    const-class v0, Lnet/time4j/ZonalDateTime;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/ZonalDateTime;

    .line 660
    invoke-virtual {p1}, Lnet/time4j/ZonalDateTime;->toMoment()Lnet/time4j/Moment;

    move-result-object v0

    .line 661
    sget-object v1, Lnet/time4j/TemporalType;->JAVA_UTIL_DATE:Lnet/time4j/TemporalType;

    invoke-virtual {v1, v0}, Lnet/time4j/TemporalType;->from(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 662
    iget-object v2, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 664
    invoke-virtual {p1}, Lnet/time4j/ZonalDateTime;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object p1

    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v2

    .line 666
    :cond_6
    invoke-static {v2}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/tz/ZonalOffset;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 668
    new-instance v3, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    iget-object v4, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v3, v2, v4}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 669
    iget-object v2, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    iget-object v4, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    invoke-virtual {v5}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v2, v4, v3, v5}, Lnet/time4j/format/platform/SimpleFormatter;->setUp(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/platform/SimpleFormatter$XCalendar;Z)Ljava/text/SimpleDateFormat;

    move-result-object v2

    .line 670
    new-instance v3, Ljava/text/FieldPosition;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    .line 671
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 672
    invoke-virtual {v2, v1, v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 673
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v2

    .line 674
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v3

    if-le v3, v2, :cond_a

    if-lez v2, :cond_a

    .line 679
    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v4

    instance-of v4, v4, Lnet/time4j/tz/ZonalOffset;

    if-nez v4, :cond_a

    .line 680
    invoke-direct {p0}, Lnet/time4j/format/platform/SimpleFormatter;->hasTimezoneField()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 682
    invoke-virtual {p1, v0}, Lnet/time4j/tz/Timezone;->isDaylightSaving(Lnet/time4j/base/UnixTime;)Z

    move-result v0

    .line 683
    iget-object v4, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    const-string v5, "zzzz"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    if-eqz v0, :cond_7

    .line 684
    sget-object v0, Lnet/time4j/tz/NameStyle;->SHORT_DAYLIGHT_TIME:Lnet/time4j/tz/NameStyle;

    goto :goto_0

    :cond_7
    sget-object v0, Lnet/time4j/tz/NameStyle;->SHORT_STANDARD_TIME:Lnet/time4j/tz/NameStyle;

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    sget-object v0, Lnet/time4j/tz/NameStyle;->LONG_DAYLIGHT_TIME:Lnet/time4j/tz/NameStyle;

    goto :goto_0

    :cond_9
    sget-object v0, Lnet/time4j/tz/NameStyle;->LONG_STANDARD_TIME:Lnet/time4j/tz/NameStyle;

    .line 689
    :goto_0
    iget-object v4, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0, v4}, Lnet/time4j/tz/Timezone;->getDisplayName(Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_a
    move-object p1, v1

    .line 696
    :goto_1
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 693
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not formattable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static setUp(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/platform/SimpleFormatter$XCalendar;Z)Ljava/text/SimpleDateFormat;
    .locals 1

    .line 742
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 743
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 744
    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    return-object v0
.end method

.method private setUpLocal()Ljava/text/SimpleDateFormat;
    .locals 4

    .line 730
    new-instance v0, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    iget-object v2, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 731
    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    invoke-virtual {v3}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lnet/time4j/format/platform/SimpleFormatter;->setUp(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/platform/SimpleFormatter$XCalendar;Z)Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static updateRawValues(Lnet/time4j/format/RawValues;Ljava/text/SimpleDateFormat;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 723
    new-instance v0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;

    const-class v1, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;

    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;

    invoke-direct {v0, p1}, Lnet/time4j/format/platform/SimpleFormatter$Parsed;-><init>(Lnet/time4j/format/platform/SimpleFormatter$XCalendar;)V

    invoke-virtual {p0, v0}, Lnet/time4j/format/RawValues;->accept(Lnet/time4j/engine/ChronoDisplay;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 607
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/platform/SimpleFormatter;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 608
    check-cast p1, Lnet/time4j/format/platform/SimpleFormatter;

    .line 609
    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    iget-object v3, p1, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    .line 610
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    iget-object v3, p1, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    .line 611
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p1, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    .line 612
    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    iget-object v3, p1, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    iget-object p1, p1, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 473
    invoke-virtual {p0, p1}, Lnet/time4j/format/platform/SimpleFormatter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes()Lnet/time4j/engine/AttributeQuery;
    .locals 3

    .line 588
    sget-object v0, Lnet/time4j/format/platform/SimpleFormatter;->SUPPORTED_TYPES:Ljava/util/Map;

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/Chronology;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v1, v0}, Lnet/time4j/format/Attributes$Builder;-><init>(Lnet/time4j/engine/Chronology;)V

    move-object v0, v1

    .line 593
    :goto_0
    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setLanguage(Ljava/util/Locale;)Lnet/time4j/format/Attributes$Builder;

    .line 594
    sget-object v1, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    iget-object v2, p0, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/Attributes$Builder;

    .line 595
    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 596
    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setTimezone(Ljava/lang/String;)Lnet/time4j/format/Attributes$Builder;

    .line 598
    :cond_1
    invoke-virtual {v0}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 625
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 494
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v1, 0x0

    .line 498
    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lnet/time4j/format/platform/SimpleFormatter;->parseInternal(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/format/RawValues;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_0

    return-object v1

    .line 501
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    invoke-direct {v1, p1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 504
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 505
    invoke-virtual {v1, p1}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 506
    throw v1
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/RawValues;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/RawValues;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "Missing raw values."

    .line 517
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 520
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 524
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lnet/time4j/format/platform/SimpleFormatter;->parseInternal(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/format/RawValues;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 526
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v1

    const/4 v2, -0x1

    if-gt v1, v2, :cond_0

    return-object p2

    .line 527
    :cond_0
    new-instance p2, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v1

    invoke-direct {p2, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 530
    new-instance p2, Ljava/text/ParseException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    invoke-direct {p2, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 531
    invoke-virtual {p2, p1}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 532
    throw p2
.end method

.method public print(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    :try_start_0
    invoke-direct {p0, p1, v0}, Lnet/time4j/format/platform/SimpleFormatter;->print(Ljava/lang/Object;Ljava/lang/Appendable;)V

    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 486
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public with(Ljava/util/Locale;)Lnet/time4j/format/TemporalFormatter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/TemporalFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 562
    new-instance v6, Lnet/time4j/format/platform/SimpleFormatter;

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    iget-object v2, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    iget-object v4, p0, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    iget-object v5, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/platform/SimpleFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/Leniency;Ljava/lang/String;)V

    return-object v6
.end method

.method public with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/TemporalFormatter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/Leniency;",
            ")",
            "Lnet/time4j/format/TemporalFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 575
    new-instance v6, Lnet/time4j/format/platform/SimpleFormatter;

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    iget-object v2, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    iget-object v3, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lnet/time4j/format/platform/SimpleFormatter;->tzid:Ljava/lang/String;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/platform/SimpleFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/Leniency;Ljava/lang/String;)V

    return-object v6
.end method

.method public withTimezone(Ljava/lang/String;)Lnet/time4j/format/TemporalFormatter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/format/TemporalFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 549
    new-instance v6, Lnet/time4j/format/platform/SimpleFormatter;

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter;->type:Ljava/lang/Class;

    iget-object v2, p0, Lnet/time4j/format/platform/SimpleFormatter;->pattern:Ljava/lang/String;

    iget-object v3, p0, Lnet/time4j/format/platform/SimpleFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lnet/time4j/format/platform/SimpleFormatter;->leniency:Lnet/time4j/format/Leniency;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/platform/SimpleFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/Leniency;Ljava/lang/String;)V

    return-object v6
.end method

.method public withTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/TemporalFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/format/TemporalFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 542
    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/format/platform/SimpleFormatter;->withTimezone(Ljava/lang/String;)Lnet/time4j/format/TemporalFormatter;

    move-result-object p1

    return-object p1
.end method
