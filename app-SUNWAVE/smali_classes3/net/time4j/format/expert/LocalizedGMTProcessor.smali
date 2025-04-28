.class final Lnet/time4j/format/expert/LocalizedGMTProcessor;
.super Ljava/lang/Object;
.source "LocalizedGMTProcessor.java"

# interfaces
.implements Lnet/time4j/format/expert/FormatProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/FormatProcessor<",
        "Lnet/time4j/tz/TZID;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PROTOTYPE:Lnet/time4j/tz/ZonalOffset;

.field private static final STD_PATTERN_INFOS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;",
            ">;"
        }
    .end annotation
.end field

.field private static final UTC_LITERALS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final abbreviated:Z

.field private final caseInsensitive:Z

.field private final lenientMode:Lnet/time4j/format/Leniency;

.field private final locale:Ljava/util/Locale;

.field private final minusSign:Ljava/lang/String;

.field private final noPrefix:Z

.field private final plusSign:Ljava/lang/String;

.field private final zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xfd20

    .line 56
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->PROTOTYPE:Lnet/time4j/tz/ZonalOffset;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->UTC_LITERALS:Ljava/util/concurrent/ConcurrentMap;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->STD_PATTERN_INFOS:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 9

    .line 81
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sget-object v8, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "+"

    const-string v6, "-"

    const/16 v7, 0x30

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lnet/time4j/format/expert/LocalizedGMTProcessor;-><init>(ZZZLjava/util/Locale;Ljava/lang/String;Ljava/lang/String;CLnet/time4j/format/Leniency;)V

    return-void
.end method

.method private constructor <init>(ZZZLjava/util/Locale;Ljava/lang/String;Ljava/lang/String;CLnet/time4j/format/Leniency;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean p1, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->abbreviated:Z

    .line 100
    iput-boolean p2, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->caseInsensitive:Z

    .line 101
    iput-boolean p3, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->noPrefix:Z

    .line 102
    iput-object p4, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->locale:Ljava/util/Locale;

    .line 103
    iput-object p5, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->plusSign:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->minusSign:Ljava/lang/String;

    .line 105
    iput-char p7, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->zeroDigit:C

    .line 106
    iput-object p8, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    return-void
.end method

.method private static charEqualsIgnoreCase(CC)Z
    .locals 2

    if-eq p0, p1, :cond_1

    .line 665
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq v0, v1, :cond_1

    .line 666
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static getLiteralUTC(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 673
    sget-object v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->UTC_LITERALS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 676
    sget-object v1, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v1, p0}, Lnet/time4j/tz/ZonalOffset;->getStdFormatPattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method private static getOffset(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/tz/ZonalOffset;
    .locals 2

    .line 552
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p1, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p1, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/TZID;

    .line 555
    instance-of v0, p1, Lnet/time4j/tz/ZonalOffset;

    if-eqz v0, :cond_0

    .line 556
    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    return-object p1

    .line 560
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot extract timezone offset from format attributes for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getPatternInfo(Ljava/util/Locale;)Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;
    .locals 6

    .line 689
    sget-object v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->STD_PATTERN_INFOS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;

    if-nez v0, :cond_2

    .line 692
    sget-object v1, Lnet/time4j/format/expert/LocalizedGMTProcessor;->PROTOTYPE:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v1, p0}, Lnet/time4j/tz/ZonalOffset;->getStdFormatPattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 694
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 695
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xb1

    if-ne v4, v5, :cond_1

    const-string v0, "hh"

    .line 696
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const-string v3, "mm"

    .line 697
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 698
    new-instance v4, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v4, v1, v0, v2, v3}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 699
    sget-object v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->STD_PATTERN_INFOS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static parseHours(Ljava/lang/CharSequence;IC)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_4

    add-int v2, p1, v0

    .line 635
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, -0x3e8

    if-lt v2, v3, :cond_1

    if-nez v0, :cond_0

    return v4

    :cond_0
    not-int p0, v1

    return p0

    .line 642
    :cond_1
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, p2

    if-ltz v2, :cond_2

    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    return v4

    :cond_3
    not-int p0, v1

    return p0

    :cond_4
    return v1
.end method

.method private static parseTwoDigits(Ljava/lang/CharSequence;IC)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    add-int v2, p1, v0

    .line 607
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, -0x3e8

    if-lt v2, v3, :cond_0

    return v4

    .line 610
    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, p2

    if-ltz v2, :cond_1

    const/16 v3, 0x9

    if-gt v2, v3, :cond_1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    return v1
.end method

.method private static parseUTC(Ljava/lang/CharSequence;IILjava/util/Locale;Z)I
    .locals 7

    .line 574
    invoke-static {p3}, Lnet/time4j/format/expert/LocalizedGMTProcessor;->getLiteralUTC(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "GMT"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 p3, 0x2

    const-string v2, "UTC"

    aput-object v2, v1, p3

    const/4 p3, 0x3

    const-string v2, "UT"

    aput-object v2, v1, p3

    move p3, v3

    :goto_0
    if-ge p3, v0, :cond_3

    .line 577
    aget-object v2, v1, p3

    .line 578
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v5, p1, p2

    if-lt v5, v4, :cond_2

    add-int v5, p2, v4

    .line 581
    invoke-interface {p0, p2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p4, :cond_0

    .line 584
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 585
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return v4

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 519
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/LocalizedGMTProcessor;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 520
    check-cast p1, Lnet/time4j/format/expert/LocalizedGMTProcessor;

    .line 521
    iget-boolean v1, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->abbreviated:Z

    iget-boolean p1, p1, Lnet/time4j/format/expert/LocalizedGMTProcessor;->abbreviated:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getElement()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    .line 476
    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 531
    iget-boolean v0, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->abbreviated:Z

    return v0
.end method

.method public isNumerical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/format/expert/ParsedEntity<",
            "*>;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 282
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 283
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v6

    if-lt v6, v5, :cond_0

    const-string v1, "Missing localized time zone offset."

    .line 287
    invoke-virtual {v2, v6, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 291
    iget-object v7, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_1
    sget-object v7, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v3, v7, v8}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale;

    .line 292
    :goto_0
    invoke-static {v7}, Lnet/time4j/format/CalendarText;->isRTL(Ljava/util/Locale;)Z

    move-result v8

    if-eqz p5, :cond_2

    .line 294
    iget-boolean v9, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->noPrefix:Z

    goto :goto_1

    :cond_2
    sget-object v9, Lnet/time4j/format/Attributes;->NO_GMT_PREFIX:Lnet/time4j/engine/AttributeKey;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 297
    invoke-interface {v3, v9, v10}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :goto_1
    if-eqz p5, :cond_3

    .line 298
    iget-boolean v10, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->caseInsensitive:Z

    goto :goto_2

    :cond_3
    sget-object v10, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 301
    invoke-interface {v3, v10, v11}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :goto_2
    if-eqz p5, :cond_4

    .line 302
    iget-char v11, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->zeroDigit:C

    goto :goto_3

    :cond_4
    sget-object v11, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v12, 0x30

    .line 305
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-interface {v3, v11, v12}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Character;

    invoke-virtual {v11}, Ljava/lang/Character;->charValue()C

    move-result v11

    :goto_3
    if-eqz p5, :cond_5

    .line 307
    iget-object v12, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->plusSign:Ljava/lang/String;

    goto :goto_4

    :cond_5
    sget-object v12, Lnet/time4j/format/expert/AttributeSet;->PLUS_SIGN:Lnet/time4j/engine/AttributeKey;

    const-string v13, "+"

    invoke-interface {v3, v12, v13}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    :goto_4
    if-eqz p5, :cond_6

    .line 308
    iget-object v13, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->minusSign:Ljava/lang/String;

    goto :goto_5

    :cond_6
    sget-object v13, Lnet/time4j/format/expert/AttributeSet;->MINUS_SIGN:Lnet/time4j/engine/AttributeKey;

    const-string v14, "-"

    invoke-interface {v3, v13, v14}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 316
    :goto_5
    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor;->getPatternInfo(Ljava/util/Locale;)Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;

    move-result-object v14

    .line 317
    invoke-static {v14}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$000(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v0, v6

    move-object/from16 v18, v16

    move/from16 v3, v17

    :goto_6
    if-ge v3, v15, :cond_21

    move/from16 v16, v15

    .line 322
    invoke-static {v14}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$000(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v19, v15

    .line 325
    invoke-static {v14}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$100(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)I

    move-result v15

    if-gt v15, v3, :cond_1a

    invoke-static {v14}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$200(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)I

    move-result v15

    if-gt v15, v3, :cond_7

    goto/16 :goto_10

    .line 350
    :cond_7
    invoke-static {v1, v0, v12, v10, v8}, Lnet/time4j/format/expert/LiteralProcessor;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZZ)I

    move-result v3

    const/4 v15, -0x1

    if-ne v3, v15, :cond_b

    .line 353
    invoke-static {v1, v0, v13, v10, v8}, Lnet/time4j/format/expert/LiteralProcessor;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZZ)I

    move-result v3

    if-ne v3, v15, :cond_a

    if-eqz v9, :cond_8

    goto :goto_7

    .line 356
    :cond_8
    invoke-static {v1, v5, v6, v7, v10}, Lnet/time4j/format/expert/LocalizedGMTProcessor;->parseUTC(Ljava/lang/CharSequence;IILjava/util/Locale;Z)I

    move-result v17

    :goto_7
    if-lez v17, :cond_9

    .line 359
    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    sget-object v1, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v4, v0, v1}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    add-int v6, v6, v17

    .line 360
    invoke-virtual {v2, v6}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    return-void

    :cond_9
    const-string v0, "Missing sign in localized time zone offset."

    .line 363
    invoke-virtual {v2, v6, v0}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 369
    :cond_a
    sget-object v18, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    goto :goto_8

    .line 372
    :cond_b
    sget-object v18, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    :goto_8
    move-object/from16 v15, v18

    add-int/2addr v0, v3

    .line 376
    invoke-static {v1, v0, v11}, Lnet/time4j/format/expert/LocalizedGMTProcessor;->parseHours(Ljava/lang/CharSequence;IC)I

    move-result v3

    move-object/from16 v20, v12

    const/16 v12, -0x3e8

    if-ne v3, v12, :cond_c

    const-string v1, "Missing hour part in localized time zone offset."

    .line 379
    invoke-virtual {v2, v0, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_c
    if-gez v3, :cond_d

    not-int v3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v0, v0, 0x2

    :goto_9
    if-lt v0, v5, :cond_f

    move-object/from16 v12, p0

    .line 393
    iget-boolean v1, v12, Lnet/time4j/format/expert/LocalizedGMTProcessor;->abbreviated:Z

    if-eqz v1, :cond_e

    .line 394
    sget-object v1, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    .line 396
    invoke-static {v15, v3}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v3

    .line 394
    invoke-virtual {v4, v1, v3}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 397
    invoke-virtual {v2, v0}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    goto :goto_a

    :cond_e
    const-string v1, "Missing minute part in localized time zone offset."

    .line 399
    invoke-virtual {v2, v0, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_f
    move-object/from16 v12, p0

    move-object/from16 v21, v13

    if-eqz p5, :cond_10

    .line 406
    iget-object v13, v12, Lnet/time4j/format/expert/LocalizedGMTProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    move/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v7, p3

    goto :goto_b

    :cond_10
    sget-object v13, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    move/from16 v22, v6

    sget-object v6, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    move-object/from16 v23, v7

    move-object/from16 v7, p3

    invoke-interface {v7, v13, v6}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lnet/time4j/format/Leniency;

    .line 407
    :goto_b
    invoke-static {v14}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$300(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v0, v6, v10, v8}, Lnet/time4j/format/expert/LiteralProcessor;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZZ)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_11

    add-int/2addr v0, v6

    goto :goto_c

    .line 411
    :cond_11
    iget-boolean v6, v12, Lnet/time4j/format/expert/LocalizedGMTProcessor;->abbreviated:Z

    if-eqz v6, :cond_12

    .line 412
    sget-object v1, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    .line 414
    invoke-static {v15, v3}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v3

    .line 412
    invoke-virtual {v4, v1, v3}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 415
    invoke-virtual {v2, v0}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    return-void

    .line 417
    :cond_12
    invoke-virtual {v13}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v1, "Mismatch of localized time zone offset separator."

    .line 418
    invoke-virtual {v2, v0, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 422
    :cond_13
    :goto_c
    invoke-static {v1, v0, v11}, Lnet/time4j/format/expert/LocalizedGMTProcessor;->parseTwoDigits(Ljava/lang/CharSequence;IC)I

    move-result v6

    const/16 v7, -0x3e8

    if-ne v6, v7, :cond_14

    const-string v1, "Minute part in localized time zone offset does not match expected pattern mm."

    .line 425
    invoke-virtual {v2, v0, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_14
    add-int/lit8 v0, v0, 0x2

    if-ge v0, v5, :cond_16

    .line 435
    invoke-static {v14}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$300(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v0, v7, v10, v8}, Lnet/time4j/format/expert/LiteralProcessor;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZZ)I

    move-result v7

    const/4 v13, -0x1

    if-eq v7, v13, :cond_16

    add-int/2addr v0, v7

    .line 439
    invoke-static {v1, v0, v11}, Lnet/time4j/format/expert/LocalizedGMTProcessor;->parseTwoDigits(Ljava/lang/CharSequence;IC)I

    move-result v13

    move/from16 v24, v8

    const/16 v8, -0x3e8

    if-ne v13, v8, :cond_15

    sub-int/2addr v0, v7

    goto :goto_d

    :cond_15
    add-int/lit8 v0, v0, 0x2

    goto :goto_d

    :cond_16
    move/from16 v24, v8

    const/16 v8, -0x3e8

    move/from16 v13, v17

    :goto_d
    if-eqz v13, :cond_19

    if-ne v13, v8, :cond_17

    goto :goto_e

    :cond_17
    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v3, v6

    add-int/2addr v3, v13

    .line 453
    sget-object v6, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    if-ne v15, v6, :cond_18

    neg-int v3, v3

    .line 456
    :cond_18
    invoke-static {v3}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v3

    goto :goto_f

    .line 450
    :cond_19
    :goto_e
    invoke-static {v15, v3, v6}, Lnet/time4j/tz/ZonalOffset;->ofHoursMinutes(Lnet/time4j/tz/OffsetSign;II)Lnet/time4j/tz/ZonalOffset;

    move-result-object v3

    .line 459
    :goto_f
    invoke-static {v14}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$200(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v18, v3

    move v3, v6

    goto :goto_13

    :cond_1a
    :goto_10
    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v12, p0

    if-nez v9, :cond_20

    if-ge v0, v5, :cond_1b

    .line 327
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    goto :goto_11

    :cond_1b
    move/from16 v6, v17

    :goto_11
    move/from16 v7, v19

    if-nez v10, :cond_1c

    if-eq v7, v6, :cond_1d

    :cond_1c
    if-eqz v10, :cond_1e

    .line 330
    invoke-static {v7, v6}, Lnet/time4j/format/expert/LocalizedGMTProcessor;->charEqualsIgnoreCase(CC)Z

    move-result v6

    if-eqz v6, :cond_1e

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1e
    move/from16 v6, v22

    move-object/from16 v7, v23

    .line 334
    invoke-static {v1, v5, v6, v7, v10}, Lnet/time4j/format/expert/LocalizedGMTProcessor;->parseUTC(Ljava/lang/CharSequence;IILjava/util/Locale;Z)I

    move-result v0

    if-lez v0, :cond_1f

    .line 336
    sget-object v1, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    sget-object v3, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v4, v1, v3}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    add-int/2addr v6, v0

    .line 337
    invoke-virtual {v2, v6}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    goto :goto_12

    :cond_1f
    const-string v0, "Literal mismatched in localized time zone offset."

    .line 339
    invoke-virtual {v2, v6, v0}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :goto_12
    return-void

    :cond_20
    :goto_13
    move/from16 v6, v22

    move-object/from16 v7, v23

    add-int/lit8 v3, v3, 0x1

    move/from16 v15, v16

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move/from16 v8, v24

    goto/16 :goto_6

    :cond_21
    move-object/from16 v12, p0

    move-object/from16 v3, v18

    if-nez v3, :cond_22

    const-string v1, "Unable to determine localized time zone offset."

    .line 463
    invoke-virtual {v2, v0, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    goto :goto_14

    .line 467
    :cond_22
    sget-object v1, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    invoke-virtual {v4, v1, v3}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 468
    invoke-virtual {v2, v0}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    :goto_14
    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoDisplay;",
            "Ljava/lang/Appendable;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Ljava/util/Set<",
            "Lnet/time4j/format/expert/ElementPosition;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 124
    instance-of v5, v2, Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 125
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    const/4 v7, 0x0

    .line 131
    invoke-interface/range {p1 .. p1}, Lnet/time4j/engine/ChronoDisplay;->hasTimezone()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 132
    invoke-interface/range {p1 .. p1}, Lnet/time4j/engine/ChronoDisplay;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object v7

    :cond_1
    if-nez v7, :cond_2

    .line 136
    invoke-static {v1, v3}, Lnet/time4j/format/expert/LocalizedGMTProcessor;->getOffset(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    goto :goto_1

    .line 137
    :cond_2
    instance-of v8, v7, Lnet/time4j/tz/ZonalOffset;

    if-eqz v8, :cond_3

    .line 138
    move-object v1, v7

    check-cast v1, Lnet/time4j/tz/ZonalOffset;

    goto :goto_1

    .line 139
    :cond_3
    instance-of v8, v1, Lnet/time4j/base/UnixTime;

    if-eqz v8, :cond_17

    .line 140
    invoke-static {v7}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v7

    check-cast v1, Lnet/time4j/base/UnixTime;

    invoke-virtual {v7, v1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    :goto_1
    if-eqz p5, :cond_4

    .line 146
    iget-object v7, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->locale:Ljava/util/Locale;

    goto :goto_2

    :cond_4
    sget-object v7, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v3, v7, v8}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale;

    :goto_2
    const/16 v8, 0x30

    if-eqz p5, :cond_5

    .line 147
    iget-char v9, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->zeroDigit:C

    goto :goto_3

    :cond_5
    sget-object v9, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 150
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    :goto_3
    if-eqz p5, :cond_6

    .line 151
    iget-object v10, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->plusSign:Ljava/lang/String;

    goto :goto_4

    :cond_6
    sget-object v10, Lnet/time4j/format/expert/AttributeSet;->PLUS_SIGN:Lnet/time4j/engine/AttributeKey;

    const-string v11, "+"

    invoke-interface {v3, v10, v11}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :goto_4
    if-eqz p5, :cond_7

    .line 152
    iget-object v11, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->minusSign:Ljava/lang/String;

    goto :goto_5

    :cond_7
    sget-object v11, Lnet/time4j/format/expert/AttributeSet;->MINUS_SIGN:Lnet/time4j/engine/AttributeKey;

    const-string v12, "-"

    invoke-interface {v3, v11, v12}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    :goto_5
    if-eqz p5, :cond_8

    .line 160
    iget-boolean v3, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->noPrefix:Z

    goto :goto_6

    :cond_8
    sget-object v12, Lnet/time4j/format/Attributes;->NO_GMT_PREFIX:Lnet/time4j/engine/AttributeKey;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 163
    invoke-interface {v3, v12, v13}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 165
    :goto_6
    invoke-virtual {v1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v12

    .line 166
    invoke-virtual {v1}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result v13

    if-nez v3, :cond_9

    if-nez v12, :cond_9

    if-nez v13, :cond_9

    .line 169
    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor;->getLiteralUTC(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto/16 :goto_10

    .line 173
    :cond_9
    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor;->getPatternInfo(Ljava/util/Locale;)Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;

    move-result-object v7

    .line 175
    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$000(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v12, :cond_15

    .line 176
    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$000(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 179
    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$100(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)I

    move-result v6

    if-gt v6, v15, :cond_13

    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$200(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)I

    move-result v6

    if-gt v6, v15, :cond_a

    goto/16 :goto_e

    .line 188
    :cond_a
    invoke-virtual {v1}, Lnet/time4j/tz/ZonalOffset;->getSign()Lnet/time4j/tz/OffsetSign;

    move-result-object v6

    sget-object v13, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    if-ne v6, v13, :cond_b

    .line 189
    invoke-interface {v2, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 190
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_8

    .line 192
    :cond_b
    invoke-interface {v2, v10}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 193
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    :goto_8
    add-int/2addr v14, v6

    .line 197
    invoke-virtual {v1}, Lnet/time4j/tz/ZonalOffset;->getAbsoluteHours()I

    move-result v6

    .line 198
    invoke-virtual {v1}, Lnet/time4j/tz/ZonalOffset;->getAbsoluteMinutes()I

    move-result v13

    .line 199
    invoke-virtual {v1}, Lnet/time4j/tz/ZonalOffset;->getAbsoluteSeconds()I

    move-result v15

    const/16 v8, 0xa

    if-ge v6, v8, :cond_c

    .line 201
    iget-boolean v8, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->abbreviated:Z

    if-nez v8, :cond_c

    .line 202
    invoke-interface {v2, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v14, v14, 0x1

    .line 206
    :cond_c
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v1

    const/4 v8, 0x0

    .line 208
    :goto_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v8, v1, :cond_d

    .line 209
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v16, 0x30

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v1, v9

    int-to-char v1, v1

    .line 210
    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_d
    if-nez v13, :cond_f

    if-nez v15, :cond_f

    .line 215
    iget-boolean v1, v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->abbreviated:Z

    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    const/16 v16, 0x30

    goto :goto_d

    .line 216
    :cond_f
    :goto_a
    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$300(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 217
    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$300(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v14, v1

    const/16 v1, 0xa

    if-ge v13, v1, :cond_10

    .line 220
    invoke-interface {v2, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v14, v14, 0x1

    .line 224
    :cond_10
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    .line 226
    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_11

    .line 227
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v13, 0x30

    sub-int/2addr v8, v13

    add-int/2addr v8, v9

    int-to-char v8, v8

    .line 228
    invoke-interface {v2, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_11
    if-eqz v15, :cond_e

    .line 234
    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$300(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 235
    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$300(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v14, v1

    const/16 v1, 0xa

    if-ge v15, v1, :cond_12

    .line 238
    invoke-interface {v2, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v14, v14, 0x1

    .line 242
    :cond_12
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    .line 244
    :goto_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_e

    .line 245
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v16, 0x30

    add-int/lit8 v8, v8, -0x30

    add-int/2addr v8, v9

    int-to-char v8, v8

    .line 246
    invoke-interface {v2, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 253
    :goto_d
    invoke-static {v7}, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->access$200(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)I

    move-result v1

    add-int/lit8 v15, v1, -0x1

    goto :goto_f

    :cond_13
    :goto_e
    move-object/from16 v17, v1

    move/from16 v16, v8

    if-nez v3, :cond_14

    .line 181
    invoke-interface {v2, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v14, v14, 0x1

    :cond_14
    :goto_f
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v16

    move-object/from16 v1, v17

    goto/16 :goto_7

    :cond_15
    move v1, v14

    :goto_10
    const/4 v2, -0x1

    if-eq v5, v2, :cond_16

    if-lez v1, :cond_16

    if-eqz v4, :cond_16

    .line 262
    new-instance v2, Lnet/time4j/format/expert/ElementPosition;

    sget-object v3, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    add-int v6, v5, v1

    invoke-direct {v2, v3, v5, v6}, Lnet/time4j/format/expert/ElementPosition;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_16
    return v1

    .line 142
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot extract timezone offset from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public quickPath(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/AttributeQuery;I)Lnet/time4j/format/expert/FormatProcessor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "I)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance p1, Lnet/time4j/format/expert/LocalizedGMTProcessor;

    iget-boolean v1, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->abbreviated:Z

    sget-object p3, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 503
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object p3, Lnet/time4j/format/Attributes;->NO_GMT_PREFIX:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 504
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object p3, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 505
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/util/Locale;

    sget-object p3, Lnet/time4j/format/expert/AttributeSet;->PLUS_SIGN:Lnet/time4j/engine/AttributeKey;

    const-string v0, "+"

    .line 506
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    sget-object p3, Lnet/time4j/format/expert/AttributeSet;->MINUS_SIGN:Lnet/time4j/engine/AttributeKey;

    const-string v0, "-"

    .line 507
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Ljava/lang/String;

    sget-object p3, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v0, 0x30

    .line 508
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result v7

    sget-object p3, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 509
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Lnet/time4j/format/Leniency;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lnet/time4j/format/expert/LocalizedGMTProcessor;-><init>(ZZZLjava/util/Locale;Ljava/lang/String;Ljava/lang/String;CLnet/time4j/format/Leniency;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 539
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[abbreviated="

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget-boolean v1, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor;->abbreviated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/tz/TZID;",
            ">;)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    return-object p0
.end method
