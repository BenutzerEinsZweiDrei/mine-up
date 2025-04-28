.class final Lnet/time4j/format/expert/TimezoneOffsetProcessor;
.super Ljava/lang/Object;
.source "TimezoneOffsetProcessor.java"

# interfaces
.implements Lnet/time4j/format/expert/FormatProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/FormatProcessor<",
        "Lnet/time4j/tz/TZID;",
        ">;"
    }
.end annotation


# static fields
.field static final EXTENDED_LONG_PARSER:Lnet/time4j/format/expert/TimezoneOffsetProcessor;


# instance fields
.field private final caseInsensitive:Z

.field private final extended:Z

.field private final lenientMode:Lnet/time4j/format/Leniency;

.field private final precision:Lnet/time4j/format/DisplayMode;

.field private final zeroOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;

    invoke-direct {v0}, Lnet/time4j/format/expert/TimezoneOffsetProcessor;-><init>()V

    sput-object v0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->EXTENDED_LONG_PARSER:Lnet/time4j/format/expert/TimezoneOffsetProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Lnet/time4j/format/DisplayMode;->LONG:Lnet/time4j/format/DisplayMode;

    iput-object v0, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->zeroOffsets:Ljava/util/List;

    .line 124
    iput-boolean v0, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->caseInsensitive:Z

    .line 125
    sget-object v0, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    iput-object v0, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    return-void
.end method

.method constructor <init>(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing display mode."

    .line 94
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero offset must not be white-space-only."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    .line 109
    iput-boolean p2, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    .line 110
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->zeroOffsets:Ljava/util/List;

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->caseInsensitive:Z

    .line 113
    sget-object p1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    return-void

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing zero offsets."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lnet/time4j/format/DisplayMode;ZLjava/util/List;ZLnet/time4j/format/Leniency;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lnet/time4j/format/Leniency;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    .line 139
    iput-boolean p2, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    .line 140
    iput-object p3, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->zeroOffsets:Ljava/util/List;

    .line 142
    iput-boolean p4, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->caseInsensitive:Z

    .line 143
    iput-object p5, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    return-void
.end method

.method private static getOffset(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/tz/ZonalOffset;
    .locals 3

    .line 572
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p1, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p1, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/TZID;

    .line 575
    instance-of v0, p1, Lnet/time4j/tz/ZonalOffset;

    if-eqz v0, :cond_0

    .line 576
    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 578
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use a timezone offset instead of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] when formatting ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
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

.method private static parseNum(Ljava/lang/CharSequence;ILnet/time4j/format/Leniency;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    add-int v3, p1, v1

    .line 604
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    move v3, v0

    goto :goto_1

    .line 607
    :cond_0
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    :goto_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 612
    invoke-virtual {p2}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    not-int p0, v2

    return p0

    :cond_3
    :goto_2
    const/16 p0, -0x3e8

    return p0

    :cond_4
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 531
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/TimezoneOffsetProcessor;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 532
    check-cast p1, Lnet/time4j/format/expert/TimezoneOffsetProcessor;

    .line 533
    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    iget-object v3, p1, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    iget-boolean v3, p1, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->zeroOffsets:Ljava/util/List;

    iget-object p1, p1, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->zeroOffsets:Ljava/util/List;

    .line 536
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

    .line 491
    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 547
    iget-object v0, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    invoke-virtual {v0}, Lnet/time4j/format/DisplayMode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->zeroOffsets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isNumerical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 10
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

    .line 287
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 288
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    if-lt v1, v0, :cond_0

    const-string p1, "Missing timezone offset."

    .line 292
    invoke-virtual {p2, v1, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 296
    :cond_0
    iget-object v2, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->zeroOffsets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 297
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v5, v0, v1

    if-lt v5, v4, :cond_1

    add-int/2addr v4, v1

    .line 300
    invoke-interface {p1, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p5, :cond_2

    .line 302
    iget-boolean v6, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->caseInsensitive:Z

    goto :goto_0

    :cond_2
    sget-object v6, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 305
    invoke-interface {p3, v6, v7}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_0
    if-eqz v6, :cond_3

    .line 308
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    if-nez v6, :cond_1

    .line 309
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    :cond_4
    sget-object p1, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    sget-object p3, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p4, p1, p3}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p2, v4}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    return-void

    :cond_5
    if-eqz p5, :cond_6

    .line 318
    iget-object p3, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    goto :goto_1

    :cond_6
    sget-object p5, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p3, p5, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/Leniency;

    .line 319
    :goto_1
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    const/16 v2, 0x2b

    if-ne p5, v2, :cond_7

    .line 323
    sget-object p5, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/16 v2, 0x2d

    if-ne p5, v2, :cond_8

    .line 326
    sget-object p5, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    goto :goto_2

    .line 328
    :cond_8
    invoke-static {p5}, Ljava/lang/Character;->isDigit(C)Z

    move-result p5

    if-eqz p5, :cond_1d

    invoke-virtual {p3}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result p5

    if-eqz p5, :cond_1d

    .line 329
    sget-object p5, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    .line 335
    :goto_3
    invoke-static {p1, v1, p3}, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->parseNum(Ljava/lang/CharSequence;ILnet/time4j/format/Leniency;)I

    move-result p3

    const/16 v2, -0x3e8

    if-ne p3, v2, :cond_9

    const-string p1, "Hour part in timezone offset does not match expected pattern HH."

    .line 338
    invoke-virtual {p2, v1, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_9
    const/4 v3, 0x1

    if-gez p3, :cond_a

    not-int p3, p3

    add-int/2addr v1, v3

    goto :goto_4

    :cond_a
    add-int/lit8 v1, v1, 0x2

    :goto_4
    if-lt v1, v0, :cond_c

    .line 353
    iget-object p1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    sget-object v0, Lnet/time4j/format/DisplayMode;->SHORT:Lnet/time4j/format/DisplayMode;

    if-ne p1, v0, :cond_b

    .line 354
    sget-object p1, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    .line 356
    invoke-static {p5, p3}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p3

    .line 354
    invoke-virtual {p4, p1, p3}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 357
    invoke-virtual {p2, v1}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    goto :goto_5

    :cond_b
    const-string p1, "Missing minute part in timezone offset."

    .line 359
    invoke-virtual {p2, v1, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :goto_5
    return-void

    .line 368
    :cond_c
    iget-boolean v4, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    const-string v5, "Colon expected in timezone offset."

    const/16 v6, 0x3a

    const/4 v7, 0x0

    if-eqz v4, :cond_f

    .line 369
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_d

    move v4, v3

    goto :goto_6

    .line 371
    :cond_d
    iget-object p1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    sget-object v0, Lnet/time4j/format/DisplayMode;->SHORT:Lnet/time4j/format/DisplayMode;

    if-ne p1, v0, :cond_e

    .line 372
    sget-object p1, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    .line 374
    invoke-static {p5, p3}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p3

    .line 372
    invoke-virtual {p4, p1, p3}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 375
    invoke-virtual {p2, v1}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    return-void

    .line 378
    :cond_e
    invoke-virtual {p2, v1, v5}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_f
    move v4, v7

    :goto_6
    add-int/2addr v4, v1

    .line 383
    sget-object v8, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-static {p1, v4, v8}, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->parseNum(Ljava/lang/CharSequence;ILnet/time4j/format/Leniency;)I

    move-result v8

    if-ne v8, v2, :cond_11

    .line 388
    iget-object p1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    sget-object v0, Lnet/time4j/format/DisplayMode;->SHORT:Lnet/time4j/format/DisplayMode;

    if-ne p1, v0, :cond_10

    .line 389
    sget-object p1, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    .line 391
    invoke-static {p5, p3}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p3

    .line 389
    invoke-virtual {p4, p1, p3}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 392
    invoke-virtual {p2, v1}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    goto :goto_7

    :cond_10
    const-string p1, "Minute part in timezone offset does not match expected pattern mm."

    .line 394
    invoke-virtual {p2, v4, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :goto_7
    return-void

    :cond_11
    add-int/lit8 v4, v4, 0x2

    if-ge v4, v0, :cond_1a

    .line 405
    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    sget-object v9, Lnet/time4j/format/DisplayMode;->LONG:Lnet/time4j/format/DisplayMode;

    if-eq v1, v9, :cond_12

    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    sget-object v9, Lnet/time4j/format/DisplayMode;->FULL:Lnet/time4j/format/DisplayMode;

    if-ne v1, v9, :cond_1a

    .line 411
    :cond_12
    iget-boolean v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    if-eqz v1, :cond_15

    .line 412
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_13

    add-int/lit8 v1, v4, 0x1

    .line 414
    sget-object v5, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-static {p1, v1, v5}, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->parseNum(Ljava/lang/CharSequence;ILnet/time4j/format/Leniency;)I

    move-result v1

    goto :goto_9

    .line 415
    :cond_13
    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    sget-object v3, Lnet/time4j/format/DisplayMode;->FULL:Lnet/time4j/format/DisplayMode;

    if-ne v1, v3, :cond_14

    .line 416
    invoke-virtual {p2, v4, v5}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_14
    move v1, v2

    goto :goto_8

    .line 422
    :cond_15
    sget-object v1, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-static {p1, v4, v1}, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->parseNum(Ljava/lang/CharSequence;ILnet/time4j/format/Leniency;)I

    move-result v1

    :goto_8
    move v3, v7

    :goto_9
    if-ne v1, v2, :cond_16

    .line 426
    iget-object p1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    sget-object v0, Lnet/time4j/format/DisplayMode;->FULL:Lnet/time4j/format/DisplayMode;

    if-ne p1, v0, :cond_1a

    const-string p1, "Second part in timezone offset does not match expected pattern ss."

    .line 427
    invoke-virtual {p2, v4, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_16
    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, 0xa

    if-gt v2, v0, :cond_19

    .line 440
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_19

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v4, 0x9

    move v2, v4

    :goto_a
    if-ge v4, v0, :cond_18

    .line 446
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-lt v3, v5, :cond_17

    const/16 v5, 0x39

    if-gt v3, v5, :cond_17

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v7, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_17
    const-string p1, "9 digits in fractional part of timezone offset expected."

    .line 452
    invoke-virtual {p2, v2, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_18
    move v4, v2

    :cond_19
    move p1, v7

    move v7, v1

    goto :goto_b

    :cond_1a
    move p1, v7

    :goto_b
    if-nez v7, :cond_1b

    if-nez p1, :cond_1b

    .line 471
    invoke-static {p5, p3, v8}, Lnet/time4j/tz/ZonalOffset;->ofHoursMinutes(Lnet/time4j/tz/OffsetSign;II)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    goto :goto_c

    :cond_1b
    mul-int/lit16 p3, p3, 0xe10

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr p3, v8

    add-int/2addr p3, v7

    .line 475
    sget-object v0, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    if-ne p5, v0, :cond_1c

    neg-int p3, p3

    neg-int p1, p1

    .line 480
    :cond_1c
    invoke-static {p3, p1}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(II)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    .line 483
    :goto_c
    sget-object p3, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    invoke-virtual {p4, p3, p1}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 484
    invoke-virtual {p2, v4}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    return-void

    :cond_1d
    const-string p1, "Missing sign of timezone offset."

    .line 331
    invoke-virtual {p2, v1, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 8
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

    .line 161
    instance-of p5, p2, Ljava/lang/CharSequence;

    const/4 v0, -0x1

    if-eqz p5, :cond_0

    .line 162
    move-object p5, p2

    check-cast p5, Ljava/lang/CharSequence;

    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p5

    goto :goto_0

    :cond_0
    move p5, v0

    :goto_0
    const/4 v1, 0x0

    .line 168
    invoke-interface {p1}, Lnet/time4j/engine/ChronoDisplay;->hasTimezone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-interface {p1}, Lnet/time4j/engine/ChronoDisplay;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 173
    invoke-static {p1, p3}, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->getOffset(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    goto :goto_1

    .line 174
    :cond_2
    instance-of p3, v1, Lnet/time4j/tz/ZonalOffset;

    if-eqz p3, :cond_3

    .line 175
    move-object p1, v1

    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    goto :goto_1

    .line 176
    :cond_3
    instance-of p3, p1, Lnet/time4j/base/UnixTime;

    if-eqz p3, :cond_13

    .line 177
    invoke-static {v1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p3

    check-cast p1, Lnet/time4j/base/UnixTime;

    invoke-virtual {p3, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    .line 183
    :goto_1
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result p3

    .line 184
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result p1

    or-int v1, p3, p1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 187
    iget-object p1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->zeroOffsets:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 188
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto/16 :goto_7

    :cond_4
    const/4 v1, 0x1

    if-ltz p3, :cond_6

    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v1

    :goto_3
    if-eqz v3, :cond_7

    const/16 v3, 0x2d

    goto :goto_4

    :cond_7
    const/16 v3, 0x2b

    .line 192
    :goto_4
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 195
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 196
    div-int/lit16 v3, p3, 0xe10

    .line 197
    div-int/lit8 v4, p3, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    .line 198
    rem-int/lit8 p3, p3, 0x3c

    const/16 v5, 0xa

    const/16 v6, 0x30

    if-ge v3, v5, :cond_8

    .line 201
    invoke-interface {p2, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v1, 0x2

    .line 205
    :cond_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 207
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 209
    iget-object v3, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    sget-object v7, Lnet/time4j/format/DisplayMode;->SHORT:Lnet/time4j/format/DisplayMode;

    if-ne v3, v7, :cond_a

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    move p1, v1

    goto/16 :goto_7

    .line 213
    :cond_a
    :goto_5
    iget-boolean v3, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    const/16 v7, 0x3a

    if-eqz v3, :cond_b

    .line 214
    invoke-interface {p2, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    :cond_b
    if-ge v4, v5, :cond_c

    .line 219
    invoke-interface {p2, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    .line 223
    :cond_c
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 225
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 227
    iget-object v3, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    sget-object v4, Lnet/time4j/format/DisplayMode;->SHORT:Lnet/time4j/format/DisplayMode;

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    sget-object v4, Lnet/time4j/format/DisplayMode;->MEDIUM:Lnet/time4j/format/DisplayMode;

    if-eq v3, v4, :cond_9

    .line 231
    iget-object v3, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    sget-object v4, Lnet/time4j/format/DisplayMode;->FULL:Lnet/time4j/format/DisplayMode;

    if-eq v3, v4, :cond_d

    or-int v3, p3, p1

    if-eqz v3, :cond_9

    .line 232
    :cond_d
    iget-boolean v3, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    if-eqz v3, :cond_e

    .line 233
    invoke-interface {p2, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    :cond_e
    if-ge p3, v5, :cond_f

    .line 238
    invoke-interface {p2, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    .line 242
    :cond_f
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .line 243
    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 244
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v1

    if-eqz p1, :cond_11

    const/16 v1, 0x2e

    .line 247
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p3, p3, 0x1

    .line 249
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x9

    :goto_6
    if-ge v2, v1, :cond_10

    .line 251
    invoke-interface {p2, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 254
    :cond_10
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p3

    goto :goto_7

    :cond_11
    move p1, p3

    :goto_7
    if-eq p5, v0, :cond_12

    if-lez p1, :cond_12

    if-eqz p4, :cond_12

    .line 267
    new-instance p2, Lnet/time4j/format/expert/ElementPosition;

    sget-object p3, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    add-int v0, p5, p1

    invoke-direct {p2, p3, p5, v0}, Lnet/time4j/format/expert/ElementPosition;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_12
    return p1

    .line 179
    :cond_13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot extract timezone offset from: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public quickPath(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/AttributeQuery;I)Lnet/time4j/format/expert/FormatProcessor;
    .locals 6
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

    .line 516
    new-instance p1, Lnet/time4j/format/expert/TimezoneOffsetProcessor;

    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    iget-boolean v2, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    iget-object v3, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->zeroOffsets:Ljava/util/List;

    sget-object p3, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 520
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object p3, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 521
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lnet/time4j/format/Leniency;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/TimezoneOffsetProcessor;-><init>(Lnet/time4j/format/DisplayMode;ZLjava/util/List;ZLnet/time4j/format/Leniency;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 555
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[precision="

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->precision:Lnet/time4j/format/DisplayMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extended="

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-boolean v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->extended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", zero-offsets="

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;->zeroOffsets:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
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
