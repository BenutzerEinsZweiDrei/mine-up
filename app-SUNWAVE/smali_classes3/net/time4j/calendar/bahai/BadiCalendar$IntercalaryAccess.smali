.class Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;
.super Lnet/time4j/engine/BasicElement;
.source "BadiCalendar.java"

# interfaces
.implements Lnet/time4j/format/TextElement;
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/bahai/BadiCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntercalaryAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/BasicElement<",
        "Lnet/time4j/calendar/bahai/BadiIntercalaryDays;",
        ">;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/calendar/bahai/BadiIntercalaryDays;",
        ">;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/bahai/BadiCalendar;",
        "Lnet/time4j/calendar/bahai/BadiIntercalaryDays;",
        ">;"
    }
.end annotation


# static fields
.field static final SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;

.field private static final serialVersionUID:J = -0xab73c4fb9016f5aL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2314
    new-instance v0, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;

    invoke-direct {v0}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;-><init>()V

    sput-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "AYYAM_I_HA"

    .line 2321
    invoke-direct {p0, v0}, Lnet/time4j/engine/BasicElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private accessor(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;
    .locals 2

    .line 2478
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->TEXT_CONTENT_ATTRIBUTE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/calendar/bahai/FormattedContent;->TRANSCRIPTION:Lnet/time4j/calendar/bahai/FormattedContent;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/bahai/FormattedContent;

    const-string v0, "bahai"

    .line 2479
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    .line 2482
    sget-object v0, Lnet/time4j/calendar/bahai/FormattedContent;->MEANING:Lnet/time4j/calendar/bahai/FormattedContent;

    const-string v1, "a"

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "A"

    .line 2486
    :goto_0
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->getType()Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v0}, Lnet/time4j/format/CalendarText;->getTextForms(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2308
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->getChildAtCeiling(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2394
    sget-object p1, Lnet/time4j/calendar/bahai/BadiCalendar;->DAY_OF_DIVISION:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2308
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->getChildAtFloor(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2387
    sget-object p1, Lnet/time4j/calendar/bahai/BadiCalendar;->DAY_OF_DIVISION:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 2308
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->getDefaultMaximum()Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/calendar/bahai/BadiIntercalaryDays;
    .locals 1

    .line 2440
    sget-object v0, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 2308
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->getDefaultMinimum()Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/calendar/bahai/BadiIntercalaryDays;
    .locals 1

    .line 2433
    sget-object v0, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 2447
    sget-object v0, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2308
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->getMaximum(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiIntercalaryDays;
    .locals 0

    .line 2354
    sget-object p1, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2308
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->getMinimum(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiIntercalaryDays;
    .locals 0

    .line 2347
    sget-object p1, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    return-object p1
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/calendar/bahai/BadiIntercalaryDays;",
            ">;"
        }
    .end annotation

    .line 2426
    const-class v0, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2308
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->getValue(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiIntercalaryDays;
    .locals 3

    .line 2336
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2337
    sget-object p1, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    return-object p1

    .line 2339
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual calendar date is not an intercalary day: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2308
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    check-cast p2, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->isValid(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiIntercalaryDays;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiIntercalaryDays;)Z
    .locals 0

    .line 2364
    sget-object p1, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2308
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/BadiIntercalaryDays;
    .locals 2

    .line 2418
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 2419
    invoke-direct {p0, v0, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->accessor(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

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

    .line 2405
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    .line 2406
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 2407
    invoke-direct {p0, v0, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->accessor(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2308
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    check-cast p2, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->withValue(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiIntercalaryDays;Z)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiIntercalaryDays;Z)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 7

    .line 2375
    sget-object p3, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    if-ne p2, p3, :cond_1

    .line 2379
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1200(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2380
    new-instance p2, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$900(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v1

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1000(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v2

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1100(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V

    return-object p2

    .line 2376
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected Ayyam-i-Ha: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
