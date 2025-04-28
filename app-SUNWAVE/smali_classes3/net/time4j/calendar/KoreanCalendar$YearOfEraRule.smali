.class Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;
.super Ljava/lang/Object;
.source "KoreanCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/KoreanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearOfEraRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/KoreanCalendar;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/KoreanCalendar$1;)V
    .locals 0

    .line 917
    invoke-direct {p0}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;-><init>()V

    return-void
.end method

.method private getInt(Lnet/time4j/calendar/KoreanCalendar;)I
    .locals 1

    .line 977
    invoke-virtual {p1}, Lnet/time4j/calendar/KoreanCalendar;->getCycle()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-virtual {p1}, Lnet/time4j/calendar/KoreanCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit16 v0, v0, -0x16c

    return v0
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 917
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->getChildAtCeiling(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/KoreanCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 973
    new-instance p1, Ljava/lang/AbstractMethodError;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 917
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->getChildAtFloor(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/KoreanCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 968
    new-instance p1, Ljava/lang/AbstractMethodError;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaximum(Lnet/time4j/calendar/KoreanCalendar;)Ljava/lang/Integer;
    .locals 0

    const/16 p1, 0x14d4

    .line 934
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 917
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->getMaximum(Lnet/time4j/calendar/KoreanCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/KoreanCalendar;)Ljava/lang/Integer;
    .locals 0

    const/16 p1, 0xf8a

    .line 929
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 917
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->getMinimum(Lnet/time4j/calendar/KoreanCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/KoreanCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 924
    invoke-direct {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->getInt(Lnet/time4j/calendar/KoreanCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 917
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->getValue(Lnet/time4j/calendar/KoreanCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 917
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->isValid(Lnet/time4j/calendar/KoreanCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/KoreanCalendar;Ljava/lang/Integer;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 945
    :cond_0
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->getMinimum(Lnet/time4j/calendar/KoreanCalendar;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 946
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->getMaximum(Lnet/time4j/calendar/KoreanCalendar;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 947
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gt p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 917
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->withValue(Lnet/time4j/calendar/KoreanCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/KoreanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/KoreanCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/KoreanCalendar;
    .locals 1

    if-eqz p2, :cond_1

    .line 958
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->isValid(Lnet/time4j/calendar/KoreanCalendar;Ljava/lang/Integer;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 959
    invoke-direct {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$YearOfEraRule;->getInt(Lnet/time4j/calendar/KoreanCalendar;)I

    move-result p3

    .line 960
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sget-object v0, Lnet/time4j/calendar/KoreanCalendar$Unit;->YEARS:Lnet/time4j/calendar/KoreanCalendar$Unit;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/calendar/KoreanCalendar;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    return-object p1

    .line 962
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid year of era: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 957
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing year of era."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
