.class final enum Lnet/time4j/AmPmElement;
.super Ljava/lang/Enum;
.source "AmPmElement.java"

# interfaces
.implements Lnet/time4j/ZonalElement;
.implements Lnet/time4j/format/internal/GregorianTextElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/AmPmElement;",
        ">;",
        "Lnet/time4j/ZonalElement<",
        "Lnet/time4j/Meridiem;",
        ">;",
        "Lnet/time4j/format/internal/GregorianTextElement<",
        "Lnet/time4j/Meridiem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/AmPmElement;

.field public static final enum AM_PM_OF_DAY:Lnet/time4j/AmPmElement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lnet/time4j/AmPmElement;

    const-string v1, "AM_PM_OF_DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/AmPmElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/AmPmElement;->AM_PM_OF_DAY:Lnet/time4j/AmPmElement;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/time4j/AmPmElement;

    aput-object v0, v1, v2

    .line 47
    sput-object v1, Lnet/time4j/AmPmElement;->$VALUES:[Lnet/time4j/AmPmElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;
    .locals 0

    .line 234
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getMeridiems(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method

.method private accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;
    .locals 4

    .line 221
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    .line 222
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p1, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/TextWidth;

    .line 223
    sget-object v2, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p1, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/OutputContext;

    .line 224
    invoke-virtual {v0, v1, p1}, Lnet/time4j/format/CalendarText;->getMeridiems(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method

.method static parseAmPm(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lnet/time4j/Meridiem;
    .locals 4

    .line 243
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 245
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    if-lt v1, v2, :cond_4

    add-int/lit8 v1, v0, 0x1

    .line 246
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x4d

    if-eq v1, v3, :cond_0

    const/16 v3, 0x6d

    if-ne v1, v3, :cond_4

    .line 248
    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v0, 0x41

    if-eq p0, v0, :cond_3

    const/16 v0, 0x61

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    if-eq p0, v0, :cond_2

    const/16 v0, 0x70

    if-ne p0, v0, :cond_4

    .line 253
    :cond_2
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 254
    sget-object p0, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    return-object p0

    .line 250
    :cond_3
    :goto_0
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 251
    sget-object p0, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/AmPmElement;
    .locals 1

    .line 47
    const-class v0, Lnet/time4j/AmPmElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/AmPmElement;

    return-object p0
.end method

.method public static values()[Lnet/time4j/AmPmElement;
    .locals 1

    .line 47
    sget-object v0, Lnet/time4j/AmPmElement;->$VALUES:[Lnet/time4j/AmPmElement;

    invoke-virtual {v0}, [Lnet/time4j/AmPmElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/AmPmElement;

    return-object v0
.end method


# virtual methods
.method public at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/Meridiem;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lnet/time4j/ZonalQuery;

    invoke-direct {v0, p0, p1}, Lnet/time4j/ZonalQuery;-><init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/tz/ZonalOffset;)V

    return-object v0
.end method

.method public atUTC()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/Meridiem;",
            ">;"
        }
    .end annotation

    .line 139
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0, v0}, Lnet/time4j/AmPmElement;->at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 47
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/AmPmElement;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 0

    .line 76
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Meridiem;

    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p1, p2}, Lnet/time4j/Meridiem;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lnet/time4j/AmPmElement;->getDefaultMaximum()Lnet/time4j/Meridiem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/Meridiem;
    .locals 1

    .line 90
    sget-object v0, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lnet/time4j/AmPmElement;->getDefaultMinimum()Lnet/time4j/Meridiem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/Meridiem;
    .locals 1

    .line 83
    sget-object v0, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 153
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    const-string v0, "L_dayperiod"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 154
    invoke-virtual {p0}, Lnet/time4j/AmPmElement;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x61

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/Meridiem;",
            ">;"
        }
    .end annotation

    .line 59
    const-class v0, Lnet/time4j/Meridiem;

    return-object v0
.end method

.method public in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/Timezone;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/Meridiem;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Lnet/time4j/ZonalQuery;

    invoke-direct {v0, p0, p1}, Lnet/time4j/ZonalQuery;-><init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/tz/Timezone;)V

    return-object v0
.end method

.method public inStdTimezone()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/Meridiem;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/AmPmElement;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    return-object v0
.end method

.method public inTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/engine/ChronoFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/Meridiem;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/AmPmElement;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;

    move-result-object p1

    return-object p1
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLenient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual/range {p0 .. p6}, Lnet/time4j/AmPmElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;)Lnet/time4j/Meridiem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/AmPmElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/Meridiem;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;)Lnet/time4j/Meridiem;
    .locals 1

    .line 209
    invoke-static {p1, p2}, Lnet/time4j/AmPmElement;->parseAmPm(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lnet/time4j/Meridiem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, p3, p4, p5}, Lnet/time4j/AmPmElement;->accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-virtual {p0}, Lnet/time4j/AmPmElement;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4, p6}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/format/Leniency;)Ljava/lang/Enum;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lnet/time4j/Meridiem;

    :cond_0
    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/Meridiem;
    .locals 2

    .line 176
    invoke-static {p1, p2}, Lnet/time4j/AmPmElement;->parseAmPm(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lnet/time4j/Meridiem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0, p3}, Lnet/time4j/AmPmElement;->accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/AmPmElement;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lnet/time4j/Meridiem;

    :cond_0
    return-object v0
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 195
    invoke-direct {p0, p3, p4, p5}, Lnet/time4j/AmPmElement;->accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p3}, Lnet/time4j/AmPmElement;->accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
