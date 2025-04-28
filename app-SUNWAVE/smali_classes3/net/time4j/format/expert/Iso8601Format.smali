.class public Lnet/time4j/format/expert/Iso8601Format;
.super Ljava/lang/Object;
.source "Iso8601Format.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/expert/Iso8601Format$TCondition;,
        Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;
    }
.end annotation


# static fields
.field public static final BASIC_CALENDAR_DATE:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final BASIC_DATE:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final BASIC_DATE_TIME:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field public static final BASIC_DATE_TIME_OFFSET:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation
.end field

.field public static final BASIC_ORDINAL_DATE:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final BASIC_WALL_TIME:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final BASIC_WEEK_DATE:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENDED_CALENDAR_DATE:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENDED_DATE:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENDED_DATE_TIME:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENDED_DATE_TIME_OFFSET:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENDED_ORDINAL_DATE:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENDED_WALL_TIME:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENDED_WEEK_DATE:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field private static final ISO_DECIMAL_SEPARATOR:C

.field private static final NON_ZERO_FRACTION:Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

.field private static final NON_ZERO_SECOND:Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

.field private static final SECOND_PART:Lnet/time4j/engine/ChronoCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoCondition<",
            "Lnet/time4j/engine/ChronoDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private static final T_CONDITION:Lnet/time4j/engine/ChronoCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoCondition<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "net.time4j.format.iso.decimal.dot"

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    :goto_0
    sput-char v0, Lnet/time4j/format/expert/Iso8601Format;->ISO_DECIMAL_SEPARATOR:C

    .line 86
    new-instance v0, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-direct {v0, v1}, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;-><init>(Lnet/time4j/engine/ChronoElement;)V

    sput-object v0, Lnet/time4j/format/expert/Iso8601Format;->NON_ZERO_SECOND:Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

    .line 87
    new-instance v1, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

    sget-object v2, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-direct {v1, v2}, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;-><init>(Lnet/time4j/engine/ChronoElement;)V

    sput-object v1, Lnet/time4j/format/expert/Iso8601Format;->NON_ZERO_FRACTION:Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

    .line 88
    invoke-virtual {v0, v1}, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;->or(Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;)Lnet/time4j/engine/ChronoCondition;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/expert/Iso8601Format;->SECOND_PART:Lnet/time4j/engine/ChronoCondition;

    .line 89
    new-instance v0, Lnet/time4j/format/expert/Iso8601Format$TCondition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/format/expert/Iso8601Format$TCondition;-><init>(Lnet/time4j/format/expert/Iso8601Format$1;)V

    sput-object v0, Lnet/time4j/format/expert/Iso8601Format;->T_CONDITION:Lnet/time4j/engine/ChronoCondition;

    const/4 v0, 0x0

    .line 338
    invoke-static {v0}, Lnet/time4j/format/expert/Iso8601Format;->calendarFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v1

    sput-object v1, Lnet/time4j/format/expert/Iso8601Format;->BASIC_CALENDAR_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    const/4 v1, 0x1

    .line 339
    invoke-static {v1}, Lnet/time4j/format/expert/Iso8601Format;->calendarFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_CALENDAR_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    .line 340
    invoke-static {v0}, Lnet/time4j/format/expert/Iso8601Format;->ordinalFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/format/expert/Iso8601Format;->BASIC_ORDINAL_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    .line 341
    invoke-static {v1}, Lnet/time4j/format/expert/Iso8601Format;->ordinalFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_ORDINAL_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    .line 342
    invoke-static {v0}, Lnet/time4j/format/expert/Iso8601Format;->weekdateFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/format/expert/Iso8601Format;->BASIC_WEEK_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    .line 343
    invoke-static {v1}, Lnet/time4j/format/expert/Iso8601Format;->weekdateFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_WEEK_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    .line 345
    invoke-static {v0}, Lnet/time4j/format/expert/Iso8601Format;->generalDateFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/format/expert/Iso8601Format;->BASIC_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    .line 346
    invoke-static {v1}, Lnet/time4j/format/expert/Iso8601Format;->generalDateFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    .line 348
    invoke-static {v0}, Lnet/time4j/format/expert/Iso8601Format;->timeFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/format/expert/Iso8601Format;->BASIC_WALL_TIME:Lnet/time4j/format/expert/ChronoFormatter;

    .line 349
    invoke-static {v1}, Lnet/time4j/format/expert/Iso8601Format;->timeFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_WALL_TIME:Lnet/time4j/format/expert/ChronoFormatter;

    .line 351
    invoke-static {v0}, Lnet/time4j/format/expert/Iso8601Format;->timestampFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/format/expert/Iso8601Format;->BASIC_DATE_TIME:Lnet/time4j/format/expert/ChronoFormatter;

    .line 352
    invoke-static {v1}, Lnet/time4j/format/expert/Iso8601Format;->timestampFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sput-object v2, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_DATE_TIME:Lnet/time4j/format/expert/ChronoFormatter;

    .line 354
    invoke-static {v0}, Lnet/time4j/format/expert/Iso8601Format;->momentFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/expert/Iso8601Format;->BASIC_DATE_TIME_OFFSET:Lnet/time4j/format/expert/ChronoFormatter;

    .line 355
    invoke-static {v1}, Lnet/time4j/format/expert/Iso8601Format;->momentFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_DATE_TIME_OFFSET:Lnet/time4j/format/expert/ChronoFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addWallTime(Lnet/time4j/format/expert/ChronoFormatter$Builder;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 691
    sget-object v0, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-virtual {p0, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 692
    sget-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 693
    sget-object v0, Lnet/time4j/PlainTime;->HOUR_FROM_0_TO_24:Lnet/time4j/ProportionalElement;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 694
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startOptionalSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    const/16 v0, 0x3a

    if-eqz p1, :cond_0

    .line 697
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 700
    :cond_0
    sget-object v2, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v2, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 701
    sget-object v2, Lnet/time4j/format/expert/Iso8601Format;->SECOND_PART:Lnet/time4j/engine/ChronoCondition;

    invoke-virtual {p0, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startOptionalSection(Lnet/time4j/engine/ChronoCondition;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    if-eqz p1, :cond_1

    .line 704
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 707
    :cond_1
    sget-object p1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, p1, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 708
    sget-object p1, Lnet/time4j/format/expert/Iso8601Format;->NON_ZERO_FRACTION:Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startOptionalSection(Lnet/time4j/engine/ChronoCondition;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 709
    sget-char p1, Lnet/time4j/format/expert/Iso8601Format;->ISO_DECIMAL_SEPARATOR:C

    const/16 v0, 0x2e

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_2

    .line 710
    invoke-virtual {p0, v1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(CC)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 712
    :cond_2
    invoke-virtual {p0, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(CC)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 714
    :goto_0
    sget-object p1, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFraction(Lnet/time4j/engine/ChronoElement;IIZ)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    :goto_1
    const/4 p1, 0x5

    if-ge v1, p1, :cond_3

    .line 717
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static calendarFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 471
    const-class v0, Lnet/time4j/PlainDate;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 473
    invoke-static {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->setUp(Ljava/lang/Class;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    .line 474
    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v2, 0x30

    .line 475
    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    sget-object v2, Lnet/time4j/format/expert/SignPolicy;->SHOW_WHEN_BIG_NUMBER:Lnet/time4j/format/expert/SignPolicy;

    const/4 v3, 0x4

    const/16 v4, 0x9

    .line 476
    invoke-virtual {v0, v1, v3, v4, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addInteger(Lnet/time4j/engine/ChronoElement;IILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    const/16 v1, 0x2d

    if-eqz p0, :cond_0

    .line 479
    invoke-virtual {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 482
    :cond_0
    sget-object v2, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    if-eqz p0, :cond_1

    .line 485
    invoke-virtual {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 488
    :cond_1
    sget-object p0, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-virtual {v0, p0, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    sget-object v0, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static generalDateFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 535
    const-class v0, Lnet/time4j/PlainDate;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 536
    invoke-static {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->setUp(Ljava/lang/Class;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    .line 537
    sget-object v1, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    .line 539
    invoke-static {p0}, Lnet/time4j/format/expert/Iso8601Format;->generalDatePrinter(Z)Lnet/time4j/format/expert/ChronoPrinter;

    move-result-object v2

    .line 540
    invoke-static {p0}, Lnet/time4j/format/expert/Iso8601Format;->generalDateParser(Z)Lnet/time4j/format/expert/ChronoParser;

    move-result-object p0

    .line 537
    invoke-virtual {v0, v1, v2, p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addCustomized(Lnet/time4j/engine/ChronoElement;Lnet/time4j/format/expert/ChronoPrinter;Lnet/time4j/format/expert/ChronoParser;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 541
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    sget-object v0, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static generalDateParser(Z)Lnet/time4j/format/expert/ChronoParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/time4j/format/expert/ChronoParser<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 630
    new-instance v0, Lnet/time4j/format/expert/Iso8601Format$2;

    invoke-direct {v0, p0}, Lnet/time4j/format/expert/Iso8601Format$2;-><init>(Z)V

    return-object v0
.end method

.method private static generalDatePrinter(Z)Lnet/time4j/format/expert/ChronoPrinter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/time4j/format/expert/ChronoPrinter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 612
    new-instance v0, Lnet/time4j/format/expert/Iso8601Format$1;

    invoke-direct {v0, p0}, Lnet/time4j/format/expert/Iso8601Format$1;-><init>(Z)V

    return-object v0
.end method

.method private static momentFormat(Lnet/time4j/format/DisplayMode;Z)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Z)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 590
    const-class v0, Lnet/time4j/Moment;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 591
    invoke-static {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->setUp(Ljava/lang/Class;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    .line 593
    sget-object v1, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    .line 595
    invoke-static {p1}, Lnet/time4j/format/expert/Iso8601Format;->generalDatePrinter(Z)Lnet/time4j/format/expert/ChronoPrinter;

    move-result-object v2

    .line 596
    invoke-static {p1}, Lnet/time4j/format/expert/Iso8601Format;->generalDateParser(Z)Lnet/time4j/format/expert/ChronoParser;

    move-result-object v3

    .line 593
    invoke-virtual {v0, v1, v2, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addCustomized(Lnet/time4j/engine/ChronoElement;Lnet/time4j/format/expert/ChronoPrinter;Lnet/time4j/format/expert/ChronoParser;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    const/16 v1, 0x54

    .line 597
    invoke-virtual {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 598
    invoke-static {v0, p1}, Lnet/time4j/format/expert/Iso8601Format;->addWallTime(Lnet/time4j/format/expert/ChronoFormatter$Builder;Z)V

    const-string v1, "Z"

    .line 604
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 601
    invoke-virtual {v0, p0, p1, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTimezoneOffset(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 606
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static momentFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 571
    const-class v0, Lnet/time4j/Moment;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 572
    invoke-static {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->setUp(Ljava/lang/Class;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    .line 575
    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/engine/TimeAxis;->element()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    sget-object v2, Lnet/time4j/format/DisplayMode;->MEDIUM:Lnet/time4j/format/DisplayMode;

    .line 576
    invoke-static {v2, p0}, Lnet/time4j/format/expert/Iso8601Format;->momentFormat(Lnet/time4j/format/DisplayMode;Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v2

    sget-object v3, Lnet/time4j/format/DisplayMode;->SHORT:Lnet/time4j/format/DisplayMode;

    .line 577
    invoke-static {v3, p0}, Lnet/time4j/format/expert/Iso8601Format;->momentFormat(Lnet/time4j/format/DisplayMode;Z)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    .line 574
    invoke-virtual {v0, v1, v2, p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addCustomized(Lnet/time4j/engine/ChronoElement;Lnet/time4j/format/expert/ChronoPrinter;Lnet/time4j/format/expert/ChronoParser;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 581
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    sget-object v0, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;->withTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static ordinalFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 494
    const-class v0, Lnet/time4j/PlainDate;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 496
    invoke-static {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->setUp(Ljava/lang/Class;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    .line 497
    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v2, 0x30

    .line 498
    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    sget-object v2, Lnet/time4j/format/expert/SignPolicy;->SHOW_WHEN_BIG_NUMBER:Lnet/time4j/format/expert/SignPolicy;

    const/4 v3, 0x4

    const/16 v4, 0x9

    .line 499
    invoke-virtual {v0, v1, v3, v4, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addInteger(Lnet/time4j/engine/ChronoElement;IILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    const/16 p0, 0x2d

    .line 502
    invoke-virtual {v0, p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 505
    :cond_0
    sget-object p0, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    sget-object v0, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static parseDate(Ljava/lang/CharSequence;)Lnet/time4j/PlainDate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 387
    new-instance v0, Lnet/time4j/format/expert/ParseLog;

    invoke-direct {v0}, Lnet/time4j/format/expert/ParseLog;-><init>()V

    .line 388
    invoke-static {p0, v0}, Lnet/time4j/format/expert/Iso8601Format;->parseDate(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Lnet/time4j/PlainDate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v2

    if-nez v2, :cond_1

    .line 392
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-object v1

    .line 393
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trailing characters found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    invoke-direct {v1, p0, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 391
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getErrorIndex()I

    move-result v0

    invoke-direct {p0, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static parseDate(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Lnet/time4j/PlainDate;
    .locals 8

    .line 428
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 429
    invoke-virtual {p1}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    sub-int v2, v0, v1

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too short to be compatible with ISO-8601: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x2d

    if-ge v3, v0, :cond_5

    .line 439
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_4

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_3

    const/16 v7, 0x54

    if-eq v6, v7, :cond_3

    const/16 v5, 0x57

    if-eq v6, v5, :cond_1

    goto :goto_2

    :cond_1
    if-lez v4, :cond_2

    .line 444
    sget-object v0, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_WEEK_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    goto :goto_1

    :cond_2
    sget-object v0, Lnet/time4j/format/expert/Iso8601Format;->BASIC_WEEK_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    :goto_1
    invoke-virtual {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainDate;

    return-object p0

    :cond_3
    sub-int v2, v3, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-nez v4, :cond_9

    add-int/lit8 v2, v2, -0x4

    .line 456
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_6

    if-ne v0, v5, :cond_7

    :cond_6
    add-int/lit8 v2, v2, -0x2

    :cond_7
    const/4 v0, 0x3

    if-ne v2, v0, :cond_8

    .line 460
    sget-object v0, Lnet/time4j/format/expert/Iso8601Format;->BASIC_ORDINAL_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    goto :goto_4

    :cond_8
    sget-object v0, Lnet/time4j/format/expert/Iso8601Format;->BASIC_CALENDAR_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    :goto_4
    invoke-virtual {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainDate;

    return-object p0

    :cond_9
    const/4 v0, 0x1

    if-ne v4, v0, :cond_a

    .line 462
    sget-object v0, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_ORDINAL_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainDate;

    return-object p0

    .line 464
    :cond_a
    sget-object v0, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_CALENDAR_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainDate;

    return-object p0
.end method

.method private static timeFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 547
    const-class v0, Lnet/time4j/PlainTime;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 548
    invoke-static {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->setUp(Ljava/lang/Class;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    .line 549
    sget-object v1, Lnet/time4j/format/expert/Iso8601Format;->T_CONDITION:Lnet/time4j/engine/ChronoCondition;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->skipUnknown(Lnet/time4j/engine/ChronoCondition;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 550
    invoke-static {v0, p0}, Lnet/time4j/format/expert/Iso8601Format;->addWallTime(Lnet/time4j/format/expert/ChronoFormatter$Builder;Z)V

    .line 551
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    sget-object v0, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static timestampFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation

    .line 557
    const-class v0, Lnet/time4j/PlainTimestamp;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 558
    invoke-static {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->setUp(Ljava/lang/Class;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    .line 559
    sget-object v1, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    .line 561
    invoke-static {p0}, Lnet/time4j/format/expert/Iso8601Format;->generalDatePrinter(Z)Lnet/time4j/format/expert/ChronoPrinter;

    move-result-object v2

    .line 562
    invoke-static {p0}, Lnet/time4j/format/expert/Iso8601Format;->generalDateParser(Z)Lnet/time4j/format/expert/ChronoParser;

    move-result-object v3

    .line 559
    invoke-virtual {v0, v1, v2, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addCustomized(Lnet/time4j/engine/ChronoElement;Lnet/time4j/format/expert/ChronoPrinter;Lnet/time4j/format/expert/ChronoParser;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    const/16 v1, 0x54

    .line 563
    invoke-virtual {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 564
    invoke-static {v0, p0}, Lnet/time4j/format/expert/Iso8601Format;->addWallTime(Lnet/time4j/format/expert/ChronoFormatter$Builder;Z)V

    .line 565
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    sget-object v0, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static weekdateFormat(Z)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 511
    const-class v0, Lnet/time4j/PlainDate;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 513
    invoke-static {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->setUp(Ljava/lang/Class;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    .line 514
    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v2, 0x30

    .line 515
    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/PlainDate;->YEAR_OF_WEEKDATE:Lnet/time4j/AdjustableElement;

    sget-object v2, Lnet/time4j/format/expert/SignPolicy;->SHOW_WHEN_BIG_NUMBER:Lnet/time4j/format/expert/SignPolicy;

    const/4 v3, 0x4

    const/16 v4, 0x9

    .line 516
    invoke-virtual {v0, v1, v3, v4, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addInteger(Lnet/time4j/engine/ChronoElement;IILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    const/16 v1, 0x2d

    if-eqz p0, :cond_0

    .line 519
    invoke-virtual {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    :cond_0
    const/16 v2, 0x57

    .line 522
    invoke-virtual {v0, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 523
    sget-object v2, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    invoke-virtual {v2}, Lnet/time4j/Weekmodel;->weekOfYear()Lnet/time4j/AdjustableElement;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    if-eqz p0, :cond_1

    .line 526
    invoke-virtual {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 529
    :cond_1
    sget-object p0, Lnet/time4j/PlainDate;->DAY_OF_WEEK:Lnet/time4j/NavigableElement;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedNumerical(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    sget-object v0, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method
