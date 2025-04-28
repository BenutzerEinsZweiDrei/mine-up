.class Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;
.super Ljava/lang/Object;
.source "ChineseCalendar.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/ChineseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearOfEraRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "Lnet/time4j/calendar/ChineseCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/ChineseCalendar$1;)V
    .locals 0

    .line 1199
    invoke-direct {p0}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1199
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->getChildAtCeiling(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/ChineseCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1248
    sget-object p1, Lnet/time4j/calendar/ChineseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1199
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->getChildAtFloor(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/ChineseCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1243
    sget-object p1, Lnet/time4j/calendar/ChineseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 1199
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->getInt(Lnet/time4j/calendar/ChineseCalendar;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/calendar/ChineseCalendar;)I
    .locals 6

    .line 1253
    sget-object v0, Lnet/time4j/calendar/ChineseCalendar$EraElement;->INSTANCE:Lnet/time4j/calendar/ChineseCalendar$EraElement;

    invoke-static {v0, p1}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->access$500(Lnet/time4j/calendar/ChineseCalendar$EraElement;Lnet/time4j/calendar/ChineseCalendar;)I

    move-result v0

    const/16 v1, 0x67e

    if-ge v0, v1, :cond_0

    add-int/lit16 v0, v0, -0x66c

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/16 v2, 0x6bb

    if-ge v0, v2, :cond_1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    const/16 v1, 0x6c8

    if-ge v0, v1, :cond_2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    const/16 v2, 0x704

    if-ge v0, v2, :cond_3

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_3
    const/16 v1, 0x71d

    if-ge v0, v1, :cond_4

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_4
    const/16 v2, 0x73b

    if-ge v0, v2, :cond_5

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_5
    const/16 v1, 0x746

    if-ge v0, v1, :cond_6

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_6
    const/16 v2, 0x753

    if-ge v0, v2, :cond_7

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_7
    const/16 v1, 0x775

    if-ge v0, v1, :cond_8

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1272
    :cond_8
    invoke-virtual {p1}, Lnet/time4j/calendar/ChineseCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v2

    const-wide/16 v4, -0x5571

    cmp-long p1, v2, v4

    if-gez p1, :cond_9

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_9
    add-int/lit16 v0, v0, 0xa4d

    add-int/lit8 v0, v0, 0x3d

    return v0
.end method

.method public getMaximum(Lnet/time4j/calendar/ChineseCalendar;)Ljava/lang/Integer;
    .locals 1

    .line 1217
    sget-object v0, Lnet/time4j/calendar/ChineseCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/ChineseCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ChineseEra;

    .line 1218
    invoke-virtual {p1}, Lnet/time4j/calendar/ChineseEra;->getMaxYearOfEra()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1199
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->getMaximum(Lnet/time4j/calendar/ChineseCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/ChineseCalendar;)Ljava/lang/Integer;
    .locals 1

    .line 1211
    sget-object v0, Lnet/time4j/calendar/ChineseCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/ChineseCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ChineseEra;

    .line 1212
    invoke-virtual {p1}, Lnet/time4j/calendar/ChineseEra;->getMinYearOfEra()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1199
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->getMinimum(Lnet/time4j/calendar/ChineseCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/ChineseCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1206
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->getInt(Lnet/time4j/calendar/ChineseCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1199
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->getValue(Lnet/time4j/calendar/ChineseCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 1199
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->isValid(Lnet/time4j/calendar/ChineseCalendar;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1199
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->isValid(Lnet/time4j/calendar/ChineseCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/ChineseCalendar;I)Z
    .locals 1

    .line 1284
    sget-object v0, Lnet/time4j/calendar/ChineseCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/ChineseCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ChineseEra;

    .line 1285
    invoke-virtual {p1}, Lnet/time4j/calendar/ChineseEra;->getMinYearOfEra()I

    move-result v0

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Lnet/time4j/calendar/ChineseEra;->getMaxYearOfEra()I

    move-result p1

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValid(Lnet/time4j/calendar/ChineseCalendar;Ljava/lang/Integer;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1226
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->isValid(Lnet/time4j/calendar/ChineseCalendar;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 0

    .line 1199
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->withValue(Lnet/time4j/calendar/ChineseCalendar;IZ)Lnet/time4j/calendar/ChineseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1199
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->withValue(Lnet/time4j/calendar/ChineseCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/ChineseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/ChineseCalendar;IZ)Lnet/time4j/calendar/ChineseCalendar;
    .locals 1

    .line 1294
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->isValid(Lnet/time4j/calendar/ChineseCalendar;I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1295
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->getInt(Lnet/time4j/calendar/ChineseCalendar;)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    .line 1296
    sget-object v0, Lnet/time4j/calendar/ChineseCalendar$Unit;->YEARS:Lnet/time4j/calendar/ChineseCalendar$Unit;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/calendar/ChineseCalendar;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    return-object p1

    .line 1298
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid year of era: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withValue(Lnet/time4j/calendar/ChineseCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/ChineseCalendar;
    .locals 0

    if-eqz p2, :cond_0

    .line 1238
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/ChineseCalendar$YearOfEraRule;->withValue(Lnet/time4j/calendar/ChineseCalendar;IZ)Lnet/time4j/calendar/ChineseCalendar;

    move-result-object p1

    return-object p1

    .line 1236
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing year of era."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
