.class Lnet/time4j/calendar/JulianCalendar$MonthRule;
.super Ljava/lang/Object;
.source "JulianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JulianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/JulianCalendar;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/JulianCalendar$1;)V
    .locals 0

    .line 1303
    invoke-direct {p0}, Lnet/time4j/calendar/JulianCalendar$MonthRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1303
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$MonthRule;->getChildAtCeiling(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JulianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1372
    sget-object p1, Lnet/time4j/calendar/JulianCalendar;->DAY_OF_MONTH:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1303
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$MonthRule;->getChildAtFloor(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JulianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1365
    sget-object p1, Lnet/time4j/calendar/JulianCalendar;->DAY_OF_MONTH:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;
    .locals 0

    const/16 p1, 0xc

    .line 1325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1303
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$MonthRule;->getMaximum(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x1

    .line 1318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1303
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$MonthRule;->getMinimum(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1311
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$800(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1303
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$MonthRule;->getValue(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1303
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JulianCalendar$MonthRule;->isValid(Lnet/time4j/calendar/JulianCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/JulianCalendar;Ljava/lang/Integer;)Z
    .locals 2

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 1339
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const/16 v1, 0xc

    if-gt p2, v1, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1303
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JulianCalendar$MonthRule;->withValue(Lnet/time4j/calendar/JulianCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/JulianCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/JulianCalendar;
    .locals 2

    if-eqz p2, :cond_0

    .line 1355
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1356
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$700(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p3

    invoke-static {p3, p2}, Lnet/time4j/calendar/JulianCalendar;->access$600(II)I

    move-result p3

    .line 1357
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$900(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1358
    new-instance v0, Lnet/time4j/calendar/JulianCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$700(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lnet/time4j/calendar/JulianCalendar;-><init>(IIILnet/time4j/calendar/JulianCalendar$1;)V

    return-object v0

    .line 1352
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing month."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
