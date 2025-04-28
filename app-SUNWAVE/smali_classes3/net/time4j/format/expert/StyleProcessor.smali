.class final Lnet/time4j/format/expert/StyleProcessor;
.super Ljava/lang/Object;
.source "StyleProcessor.java"

# interfaces
.implements Lnet/time4j/format/expert/FormatProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/FormatProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dateStyle:Lnet/time4j/engine/DisplayStyle;

.field private final formatter:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final timeStyle:Lnet/time4j/engine/DisplayStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0, p1, p2}, Lnet/time4j/format/expert/StyleProcessor;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;)V

    return-void
.end method

.method private constructor <init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;",
            "Lnet/time4j/engine/DisplayStyle;",
            "Lnet/time4j/engine/DisplayStyle;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 85
    iput-object p2, p0, Lnet/time4j/format/expert/StyleProcessor;->dateStyle:Lnet/time4j/engine/DisplayStyle;

    .line 86
    iput-object p3, p0, Lnet/time4j/format/expert/StyleProcessor;->timeStyle:Lnet/time4j/engine/DisplayStyle;

    .line 87
    iput-object p1, p0, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing display style."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createFormatter(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;ZLnet/time4j/tz/Timezone;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Lnet/time4j/engine/DisplayStyle;",
            "Lnet/time4j/engine/DisplayStyle;",
            "Ljava/util/Locale;",
            "Z",
            "Lnet/time4j/tz/Timezone;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 266
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    check-cast p1, Lnet/time4j/format/DisplayMode;

    invoke-static {p1, p3}, Lnet/time4j/format/CalendarText;->patternForDate(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    check-cast p2, Lnet/time4j/format/DisplayMode;

    invoke-static {p2, p3}, Lnet/time4j/format/CalendarText;->patternForTime(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {}, Lnet/time4j/PlainTimestamp;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    check-cast p1, Lnet/time4j/format/DisplayMode;

    check-cast p2, Lnet/time4j/format/DisplayMode;

    invoke-static {p1, p2, p3}, Lnet/time4j/format/CalendarText;->patternForTimestamp(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 272
    :cond_2
    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    check-cast p1, Lnet/time4j/format/DisplayMode;

    check-cast p2, Lnet/time4j/format/DisplayMode;

    invoke-static {p1, p2, p3}, Lnet/time4j/format/CalendarText;->patternForMoment(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 274
    :cond_3
    const-class p2, Lnet/time4j/format/LocalizedPatternSupport;

    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 276
    invoke-virtual {p0, p1, p3}, Lnet/time4j/engine/Chronology;->getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p4, :cond_4

    const-string p2, "yy"

    .line 281
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-string p4, "yyy"

    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "yyyy"

    .line 282
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 285
    :cond_4
    sget-object p2, Lnet/time4j/format/expert/PatternType;->CLDR:Lnet/time4j/format/expert/PatternType;

    invoke-static {p1, p2, p3, p0}, Lnet/time4j/format/expert/ChronoFormatter;->ofPattern(Ljava/lang/String;Lnet/time4j/format/expert/PatternType;Ljava/util/Locale;Lnet/time4j/engine/Chronology;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    if-eqz p5, :cond_5

    .line 288
    invoke-virtual {p0, p5}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/tz/Timezone;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    :cond_5
    return-object p0

    .line 278
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Localized format patterns not available: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 159
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/StyleProcessor;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 160
    check-cast p1, Lnet/time4j/format/expert/StyleProcessor;

    .line 161
    iget-object v1, p0, Lnet/time4j/format/expert/StyleProcessor;->dateStyle:Lnet/time4j/engine/DisplayStyle;

    iget-object v3, p1, Lnet/time4j/format/expert/StyleProcessor;->dateStyle:Lnet/time4j/engine/DisplayStyle;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/time4j/format/expert/StyleProcessor;->timeStyle:Lnet/time4j/engine/DisplayStyle;

    iget-object v3, p1, Lnet/time4j/format/expert/StyleProcessor;->timeStyle:Lnet/time4j/engine/DisplayStyle;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    if-nez v1, :cond_2

    .line 163
    iget-object p1, p1, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 165
    :cond_2
    iget-object p1, p1, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {v1, p1}, Lnet/time4j/format/expert/ChronoFormatter;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public getElement()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method getGeneratedPattern()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter;->getPattern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 177
    iget-object v0, p0, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter;->hashCode()I

    move-result v0

    :goto_0
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

    if-eqz p5, :cond_0

    .line 125
    iget-object p5, p0, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    goto :goto_1

    .line 127
    :cond_0
    iget-object p5, p0, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {p5}, Lnet/time4j/format/expert/ChronoFormatter;->getAttributes()Lnet/time4j/engine/AttributeQuery;

    move-result-object p5

    .line 128
    sget-object v0, Lnet/time4j/format/Attributes;->TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Attributes;->TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/tz/Timezone;->DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

    .line 131
    invoke-interface {p5, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 129
    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TransitionStrategy;

    .line 132
    sget-object v1, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    const/4 v3, 0x0

    .line 135
    invoke-interface {p5, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 133
    invoke-interface {p3, v1, p5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lnet/time4j/tz/TZID;

    if-nez p5, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {p5}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p5

    invoke-virtual {p5, v0}, Lnet/time4j/tz/Timezone;->with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;

    move-result-object v3

    :goto_0
    move-object v9, v3

    .line 137
    iget-object p5, p0, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    .line 138
    invoke-virtual {p5}, Lnet/time4j/format/expert/ChronoFormatter;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v4

    iget-object v5, p0, Lnet/time4j/format/expert/StyleProcessor;->dateStyle:Lnet/time4j/engine/DisplayStyle;

    iget-object v6, p0, Lnet/time4j/format/expert/StyleProcessor;->timeStyle:Lnet/time4j/engine/DisplayStyle;

    sget-object p5, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    iget-object v0, p0, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    .line 141
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-interface {p3, p5, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Ljava/util/Locale;

    sget-object p5, Lnet/time4j/format/Attributes;->FOUR_DIGIT_YEAR:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 142
    invoke-interface {p3, p5, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 137
    invoke-static/range {v4 .. v9}, Lnet/time4j/format/expert/StyleProcessor;->createFormatter(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;ZLnet/time4j/tz/Timezone;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p5

    .line 146
    :goto_1
    invoke-virtual {p5, p1, p2, p3}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;

    move-result-object p1

    .line 148
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p4, p1}, Lnet/time4j/format/expert/ParsedEntity;->setResult(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 1
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

    .line 102
    iget-object p5, p0, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-virtual {p5, p1, p2, p3, v0}, Lnet/time4j/format/expert/ChronoFormatter;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Z)Ljava/util/Set;

    move-result-object p1

    if-eqz p4, :cond_1

    .line 106
    invoke-interface {p4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const p1, 0x7fffffff

    return p1
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
            "TT;>;"
        }
    .end annotation

    .line 225
    sget-object p3, Lnet/time4j/format/Attributes;->TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/tz/Timezone;->DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

    .line 226
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/tz/TransitionStrategy;

    .line 227
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    .line 228
    sget-object v2, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p2, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/Locale;

    .line 232
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v3

    iget-object v4, p0, Lnet/time4j/format/expert/StyleProcessor;->dateStyle:Lnet/time4j/engine/DisplayStyle;

    iget-object v5, p0, Lnet/time4j/format/expert/StyleProcessor;->timeStyle:Lnet/time4j/engine/DisplayStyle;

    sget-object p1, Lnet/time4j/format/Attributes;->FOUR_DIGIT_YEAR:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 236
    invoke-interface {p2, p1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {v0}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p1, p3}, Lnet/time4j/tz/Timezone;->with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;

    move-result-object v1

    :goto_0
    move-object v8, v1

    .line 231
    invoke-static/range {v3 .. v8}, Lnet/time4j/format/expert/StyleProcessor;->createFormatter(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;ZLnet/time4j/tz/Timezone;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p1

    .line 239
    new-instance p2, Lnet/time4j/format/expert/StyleProcessor;

    iget-object p3, p0, Lnet/time4j/format/expert/StyleProcessor;->dateStyle:Lnet/time4j/engine/DisplayStyle;

    iget-object v0, p0, Lnet/time4j/format/expert/StyleProcessor;->timeStyle:Lnet/time4j/engine/DisplayStyle;

    invoke-direct {p2, p1, p3, v0}, Lnet/time4j/format/expert/StyleProcessor;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;)V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[date-style="

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lnet/time4j/format/expert/StyleProcessor;->dateStyle:Lnet/time4j/engine/DisplayStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",time-style="

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Lnet/time4j/format/expert/StyleProcessor;->timeStyle:Lnet/time4j/engine/DisplayStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",delegate="

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, p0, Lnet/time4j/format/expert/StyleProcessor;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
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
            "TT;>;)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method
