.class Lnet/time4j/calendar/EastAsianST;
.super Ljava/lang/Object;
.source "EastAsianST.java"

# interfaces
.implements Lnet/time4j/format/TextElement;
.implements Lnet/time4j/engine/ElementRule;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lnet/time4j/calendar/EastAsianCalendar<",
        "*TD;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/calendar/SolarTerm;",
        ">;",
        "Lnet/time4j/engine/ElementRule<",
        "TD;",
        "Lnet/time4j/calendar/SolarTerm;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final SINGLETON:Lnet/time4j/calendar/EastAsianST;

.field private static final serialVersionUID:J = 0x3f74f5c682feb07aL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lnet/time4j/calendar/EastAsianST;

    invoke-direct {v0}, Lnet/time4j/calendar/EastAsianST;-><init>()V

    sput-object v0, Lnet/time4j/calendar/EastAsianST;->SINGLETON:Lnet/time4j/calendar/EastAsianST;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lnet/time4j/calendar/EastAsianST;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>()",
            "Lnet/time4j/calendar/EastAsianST<",
            "TD;>;"
        }
    .end annotation

    .line 58
    sget-object v0, Lnet/time4j/calendar/EastAsianST;->SINGLETON:Lnet/time4j/calendar/EastAsianST;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 45
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianST;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 0

    .line 81
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/SolarTerm;

    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/SolarTerm;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 45
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianST;->getChildAtCeiling(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 206
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 45
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianST;->getChildAtFloor(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 201
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianST;->getDefaultMaximum()Lnet/time4j/calendar/SolarTerm;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/calendar/SolarTerm;
    .locals 1

    .line 91
    sget-object v0, Lnet/time4j/calendar/SolarTerm;->MAJOR_12_DAHAN_300:Lnet/time4j/calendar/SolarTerm;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianST;->getDefaultMinimum()Lnet/time4j/calendar/SolarTerm;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/calendar/SolarTerm;
    .locals 1

    .line 86
    sget-object v0, Lnet/time4j/calendar/SolarTerm;->MINOR_01_LICHUN_315:Lnet/time4j/calendar/SolarTerm;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 111
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u7bc0\u6c23"

    goto :goto_0

    :cond_0
    const-string p1, "\u8282\u6c14"

    :goto_0
    return-object p1

    :cond_1
    const-string p1, "ko"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\uc808\uae30"

    return-object p1

    :cond_2
    const-string p1, "vi"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ti\u1ebft kh\u00ed"

    return-object p1

    :cond_3
    const-string p1, "ja"

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "\u7bc0\u6c17"

    return-object p1

    .line 121
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "jieqi"

    return-object p1

    :cond_5
    const-string p1, "ji\u00e9q\u00ec"

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianST;->getMaximum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/SolarTerm;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/SolarTerm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/calendar/SolarTerm;"
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/EastAsianCS;->newYear(II)J

    move-result-wide v1

    .line 174
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->lengthOfYear()I

    move-result p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/EastAsianCS;->midnight(J)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/calendar/SolarTerm;->of(Lnet/time4j/Moment;)Lnet/time4j/calendar/SolarTerm;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianST;->getMinimum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/SolarTerm;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/SolarTerm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/calendar/SolarTerm;"
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lnet/time4j/calendar/EastAsianCS;->newYear(II)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 167
    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/EastAsianCS;->midnight(J)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/calendar/SolarTerm;->of(Lnet/time4j/Moment;)Lnet/time4j/calendar/SolarTerm;

    move-result-object p1

    return-object p1
.end method

.method public getSymbol()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/calendar/SolarTerm;",
            ">;"
        }
    .end annotation

    .line 68
    const-class v0, Lnet/time4j/calendar/SolarTerm;

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianST;->getValue(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/SolarTerm;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/SolarTerm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/calendar/SolarTerm;"
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/EastAsianCS;->midnight(J)Lnet/time4j/Moment;

    move-result-object p1

    .line 160
    invoke-static {p1}, Lnet/time4j/calendar/SolarTerm;->of(Lnet/time4j/Moment;)Lnet/time4j/calendar/SolarTerm;

    move-result-object p1

    return-object p1
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLenient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 45
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    check-cast p2, Lnet/time4j/calendar/SolarTerm;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianST;->isValid(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/SolarTerm;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/SolarTerm;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lnet/time4j/calendar/SolarTerm;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "SOLAR_TERM"

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianST;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/SolarTerm;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/SolarTerm;
    .locals 2

    .line 145
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Locale;

    .line 146
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 147
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 150
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p1, 0x0

    return-object p1

    .line 154
    :cond_0
    invoke-static {p1, p3, p2}, Lnet/time4j/calendar/SolarTerm;->parse(Ljava/lang/CharSequence;Ljava/util/Locale;Ljava/text/ParsePosition;)Lnet/time4j/calendar/SolarTerm;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 134
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Locale;

    .line 135
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/SolarTerm;

    .line 136
    invoke-virtual {p1, p3}, Lnet/time4j/calendar/SolarTerm;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 214
    sget-object v0, Lnet/time4j/calendar/EastAsianST;->SINGLETON:Lnet/time4j/calendar/EastAsianST;

    return-object v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    check-cast p2, Lnet/time4j/calendar/SolarTerm;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianST;->withValue(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/SolarTerm;Z)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/SolarTerm;Z)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lnet/time4j/calendar/SolarTerm;",
            "Z)TD;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {p2}, Lnet/time4j/calendar/SolarTerm;->sinceNewYear()Lnet/time4j/engine/ChronoOperator;

    move-result-object p2

    .line 195
    invoke-virtual {p1, p2}, Lnet/time4j/calendar/EastAsianCalendar;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    return-object p1

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing solar term."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
