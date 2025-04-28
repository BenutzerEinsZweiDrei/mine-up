.class Lnet/time4j/format/CalendarText$FormatPatterns;
.super Ljava/lang/Object;
.source "CalendarText.java"

# interfaces
.implements Lnet/time4j/format/FormatPatternProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/CalendarText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatPatterns"
.end annotation


# instance fields
.field private final delegate:Lnet/time4j/format/FormatPatternProvider;


# direct methods
.method constructor <init>(Lnet/time4j/format/FormatPatternProvider;)V
    .locals 0

    .line 1560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1562
    iput-object p1, p0, Lnet/time4j/format/CalendarText$FormatPatterns;->delegate:Lnet/time4j/format/FormatPatternProvider;

    return-void
.end method

.method private static getFormatPattern(Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 3

    .line 1663
    instance-of v0, p0, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 1664
    const-class v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1667
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

.method private static getFormatStyle(Lnet/time4j/format/DisplayMode;)I
    .locals 3

    .line 1646
    sget-object v0, Lnet/time4j/format/CalendarText$1;->$SwitchMap$net$time4j$format$DisplayMode:[I

    invoke-virtual {p0}, Lnet/time4j/format/DisplayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return v1

    .line 1656
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDatePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1574
    iget-object v0, p0, Lnet/time4j/format/CalendarText$FormatPatterns;->delegate:Lnet/time4j/format/FormatPatternProvider;

    if-nez v0, :cond_0

    .line 1575
    invoke-static {p1}, Lnet/time4j/format/CalendarText$FormatPatterns;->getFormatStyle(Lnet/time4j/format/DisplayMode;)I

    move-result p1

    .line 1576
    invoke-static {p1, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    .line 1577
    invoke-static {p1}, Lnet/time4j/format/CalendarText$FormatPatterns;->getFormatPattern(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1580
    :cond_0
    invoke-interface {v0, p1, p2}, Lnet/time4j/format/FormatPatternProvider;->getDatePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDateTimePattern(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 1613
    iget-object v0, p0, Lnet/time4j/format/CalendarText$FormatPatterns;->delegate:Lnet/time4j/format/FormatPatternProvider;

    if-nez v0, :cond_0

    .line 1614
    invoke-static {p1}, Lnet/time4j/format/CalendarText$FormatPatterns;->getFormatStyle(Lnet/time4j/format/DisplayMode;)I

    move-result p1

    .line 1615
    invoke-static {p2}, Lnet/time4j/format/CalendarText$FormatPatterns;->getFormatStyle(Lnet/time4j/format/DisplayMode;)I

    move-result p2

    .line 1616
    invoke-static {p1, p2, p3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    .line 1617
    invoke-static {p1}, Lnet/time4j/format/CalendarText$FormatPatterns;->getFormatPattern(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1620
    :cond_0
    invoke-interface {v0, p2, p3}, Lnet/time4j/format/FormatPatternProvider;->getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1621
    iget-object v1, p0, Lnet/time4j/format/CalendarText$FormatPatterns;->delegate:Lnet/time4j/format/FormatPatternProvider;

    invoke-interface {v1, p1, p3}, Lnet/time4j/format/FormatPatternProvider;->getDatePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1622
    iget-object v2, p0, Lnet/time4j/format/CalendarText$FormatPatterns;->delegate:Lnet/time4j/format/FormatPatternProvider;

    invoke-interface {v2, p1, p2, p3}, Lnet/time4j/format/FormatPatternProvider;->getDateTimePattern(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{1}"

    .line 1623
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{0}"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIntervalPattern(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1630
    iget-object v0, p0, Lnet/time4j/format/CalendarText$FormatPatterns;->delegate:Lnet/time4j/format/FormatPatternProvider;

    if-nez v0, :cond_1

    .line 1631
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "{0}/{1}"

    return-object p1

    :cond_0
    const-string p1, "{0} - {1}"

    return-object p1

    .line 1640
    :cond_1
    invoke-interface {v0, p1}, Lnet/time4j/format/FormatPatternProvider;->getIntervalPattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1592
    iget-object v0, p0, Lnet/time4j/format/CalendarText$FormatPatterns;->delegate:Lnet/time4j/format/FormatPatternProvider;

    if-nez v0, :cond_0

    .line 1593
    invoke-static {p1}, Lnet/time4j/format/CalendarText$FormatPatterns;->getFormatStyle(Lnet/time4j/format/DisplayMode;)I

    move-result p1

    .line 1594
    invoke-static {p1, p2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    .line 1595
    invoke-static {p1}, Lnet/time4j/format/CalendarText$FormatPatterns;->getFormatPattern(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1596
    :cond_0
    instance-of v1, v0, Lnet/time4j/format/internal/ExtendedPatterns;

    if-eqz v1, :cond_1

    .line 1597
    const-class v1, Lnet/time4j/format/internal/ExtendedPatterns;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/internal/ExtendedPatterns;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lnet/time4j/format/internal/ExtendedPatterns;->getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1599
    :cond_1
    invoke-interface {v0, p1, p2}, Lnet/time4j/format/FormatPatternProvider;->getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1602
    :goto_0
    invoke-static {p1}, Lnet/time4j/format/internal/FormatUtils;->removeZones(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
