.class Lnet/time4j/calendar/JapaneseCalendar$NengoRule;
.super Ljava/lang/Object;
.source "JapaneseCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JapaneseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NengoRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/JapaneseCalendar;",
        "Lnet/time4j/calendar/Nengo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/JapaneseCalendar$1;)V
    .locals 0

    .line 2094
    invoke-direct {p0}, Lnet/time4j/calendar/JapaneseCalendar$NengoRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2094
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$NengoRule;->getChildAtCeiling(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2179
    sget-object p1, Lnet/time4j/calendar/JapaneseCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2094
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$NengoRule;->getChildAtFloor(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2172
    sget-object p1, Lnet/time4j/calendar/JapaneseCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2094
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$NengoRule;->getMaximum(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;
    .locals 0

    .line 2116
    sget-object p1, Lnet/time4j/calendar/JapaneseCalendar;->ERA:Lnet/time4j/format/TextElement;

    invoke-interface {p1}, Lnet/time4j/format/TextElement;->getDefaultMaximum()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/Nengo;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2094
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$NengoRule;->getMinimum(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;
    .locals 0

    .line 2109
    sget-object p1, Lnet/time4j/calendar/JapaneseCalendar;->ERA:Lnet/time4j/format/TextElement;

    invoke-interface {p1}, Lnet/time4j/format/TextElement;->getDefaultMinimum()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/Nengo;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2094
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$NengoRule;->getValue(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;
    .locals 0

    .line 2102
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1900(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2094
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    check-cast p2, Lnet/time4j/calendar/Nengo;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$NengoRule;->isValid(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/Nengo;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/Nengo;)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2094
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    check-cast p2, Lnet/time4j/calendar/Nengo;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$NengoRule;->withValue(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/Nengo;Z)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/Nengo;Z)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 5

    .line 2137
    invoke-virtual {p1}, Lnet/time4j/calendar/JapaneseCalendar;->getYear()I

    move-result v0

    .line 2138
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v1

    .line 2139
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    .line 2140
    invoke-virtual {p2}, Lnet/time4j/calendar/Nengo;->findNext()Lnet/time4j/calendar/Nengo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2143
    invoke-virtual {v2}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v2

    invoke-virtual {p2}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 2149
    invoke-virtual {p2}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x751

    if-lt v2, v3, :cond_1

    .line 2152
    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2153
    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v1

    invoke-static {v1}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v1

    goto :goto_0

    .line 2155
    :cond_1
    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v3

    add-int/lit16 v4, v2, -0x2bd

    aget-byte v3, v3, v4

    if-nez v3, :cond_2

    .line 2156
    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v1

    invoke-static {v1}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v1

    .line 2159
    :cond_2
    :goto_0
    invoke-static {v2, v1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1600(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v2

    if-le p1, v2, :cond_3

    move p1, v2

    :cond_3
    if-eqz p3, :cond_4

    .line 2165
    sget-object p3, Lnet/time4j/format/Leniency;->LAX:Lnet/time4j/format/Leniency;

    goto :goto_1

    :cond_4
    sget-object p3, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    :goto_1
    invoke-static {p2, v0, v1, p1, p3}, Lnet/time4j/calendar/JapaneseCalendar;->of(Lnet/time4j/calendar/Nengo;ILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/format/Leniency;)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1
.end method
