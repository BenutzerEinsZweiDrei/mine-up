.class Lnet/time4j/calendar/EastAsianCalendar$MonthRule;
.super Ljava/lang/Object;
.source "EastAsianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EastAsianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lnet/time4j/calendar/EastAsianCalendar<",
        "*TD;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "TD;",
        "Lnet/time4j/calendar/EastAsianMonth;",
        ">;"
    }
.end annotation


# instance fields
.field private final child:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/time4j/engine/ChronoElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)V"
        }
    .end annotation

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    iput-object p1, p0, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->child:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/calendar/EastAsianCalendar$1;)V
    .locals 0

    .line 879
    invoke-direct {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;-><init>(Lnet/time4j/engine/ChronoElement;)V

    return-void
.end method

.method static withMonth(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianMonth;)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>(TD;",
            "Lnet/time4j/calendar/EastAsianMonth;",
            ")TD;"
        }
    .end annotation

    .line 946
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v0

    .line 947
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result v4

    .line 948
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v2

    const/16 v1, 0x1d

    if-gt v4, v1, :cond_0

    .line 950
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v1

    invoke-virtual {v0, v1, v2, p1, v4}, Lnet/time4j/calendar/EastAsianCS;->transform(IILnet/time4j/calendar/EastAsianMonth;I)J

    move-result-wide v5

    .line 951
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lnet/time4j/calendar/EastAsianCS;->create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p0

    return-object p0

    .line 953
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lnet/time4j/calendar/EastAsianCS;->transform(IILnet/time4j/calendar/EastAsianMonth;I)J

    move-result-wide v5

    .line 954
    invoke-virtual {v0, v5, v6}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object v1

    .line 955
    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianCalendar;->lengthOfMonth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 956
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v1

    int-to-long v7, v4

    add-long/2addr v5, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lnet/time4j/calendar/EastAsianCS;->create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 879
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->getChildAtCeiling(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 939
    iget-object p1, p0, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->child:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 879
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->getChildAtFloor(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 934
    iget-object p1, p0, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->child:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 879
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->getMaximum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianMonth;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/calendar/EastAsianMonth;"
        }
    .end annotation

    const/16 p1, 0xc

    .line 908
    invoke-static {p1}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 879
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->getMinimum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianMonth;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/calendar/EastAsianMonth;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 903
    invoke-static {p1}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 879
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->getValue(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianMonth;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/calendar/EastAsianMonth;"
        }
    .end annotation

    .line 898
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 879
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    check-cast p2, Lnet/time4j/calendar/EastAsianMonth;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->isValid(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianMonth;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianMonth;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lnet/time4j/calendar/EastAsianMonth;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 916
    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getLeapMonth()I

    move-result p1

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 879
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    check-cast p2, Lnet/time4j/calendar/EastAsianMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->withValue(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianMonth;Z)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianMonth;Z)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lnet/time4j/calendar/EastAsianMonth;",
            "Z)TD;"
        }
    .end annotation

    .line 925
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->isValid(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianMonth;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 926
    invoke-static {p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->withMonth(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianMonth;)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1

    .line 928
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid month: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
