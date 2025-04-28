.class Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;
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
    name = "CyclicYearRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lnet/time4j/calendar/EastAsianCalendar<",
        "*TD;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "TD;",
        "Lnet/time4j/calendar/CyclicYear;",
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

.field private final vietnam:Z


# direct methods
.method private constructor <init>(Lnet/time4j/engine/ChronoElement;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;Z)V"
        }
    .end annotation

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p1, p0, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->child:Lnet/time4j/engine/ChronoElement;

    .line 805
    iput-boolean p2, p0, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->vietnam:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/engine/ChronoElement;ZLnet/time4j/calendar/EastAsianCalendar$1;)V
    .locals 0

    .line 788
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;-><init>(Lnet/time4j/engine/ChronoElement;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 788
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->getChildAtCeiling(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 875
    iget-object p1, p0, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->child:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 788
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->getChildAtFloor(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 870
    iget-object p1, p0, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->child:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 788
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->getMaximum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/CyclicYear;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/calendar/CyclicYear;"
        }
    .end annotation

    .line 826
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result p1

    const/16 v0, 0x5e

    if-ne p1, v0, :cond_0

    const/16 p1, 0x38

    goto :goto_0

    :cond_0
    const/16 p1, 0x3c

    :goto_0
    invoke-static {p1}, Lnet/time4j/calendar/CyclicYear;->of(I)Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 788
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->getMinimum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/CyclicYear;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/calendar/CyclicYear;"
        }
    .end annotation

    .line 817
    iget-boolean v0, p0, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->vietnam:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 818
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result p1

    const/16 v0, 0x4b

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    invoke-static {p1}, Lnet/time4j/calendar/CyclicYear;->of(I)Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lnet/time4j/calendar/CyclicYear;->of(I)Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    :goto_0
    return-object p1

    .line 820
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result p1

    const/16 v0, 0x48

    if-ne p1, v0, :cond_2

    const/16 p1, 0x16

    invoke-static {p1}, Lnet/time4j/calendar/CyclicYear;->of(I)Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lnet/time4j/calendar/CyclicYear;->of(I)Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 788
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->getValue(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/CyclicYear;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/calendar/CyclicYear;"
        }
    .end annotation

    .line 812
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 788
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    check-cast p2, Lnet/time4j/calendar/CyclicYear;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->isValid(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/CyclicYear;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/CyclicYear;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lnet/time4j/calendar/CyclicYear;",
            ")Z"
        }
    .end annotation

    .line 834
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->getMinimum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/CyclicYear;

    move-result-object v0

    .line 835
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->getMaximum(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 836
    invoke-virtual {v0, p2}, Lnet/time4j/calendar/CyclicYear;->compareTo(Lnet/time4j/calendar/SexagesimalName;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/CyclicYear;->compareTo(Lnet/time4j/calendar/SexagesimalName;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 788
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    check-cast p2, Lnet/time4j/calendar/CyclicYear;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->withValue(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/CyclicYear;Z)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/CyclicYear;Z)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lnet/time4j/calendar/CyclicYear;",
            "Z)TD;"
        }
    .end annotation

    .line 845
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;->isValid(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/CyclicYear;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 846
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v0

    .line 847
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result v4

    .line 848
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p3

    .line 849
    invoke-virtual {p2}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v2

    .line 850
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v1

    .line 851
    invoke-virtual {p3}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result p1

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 852
    invoke-virtual {p3}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    move-object v3, p1

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    const/16 p1, 0x1d

    if-gt v4, p1, :cond_1

    .line 855
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/EastAsianCS;->transform(IILnet/time4j/calendar/EastAsianMonth;I)J

    move-result-wide v5

    .line 856
    invoke-virtual/range {v0 .. v6}, Lnet/time4j/calendar/EastAsianCS;->create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    .line 858
    invoke-virtual {v0, v1, v2, v3, p1}, Lnet/time4j/calendar/EastAsianCS;->transform(IILnet/time4j/calendar/EastAsianMonth;I)J

    move-result-wide p1

    .line 859
    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p3

    .line 860
    invoke-virtual {p3}, Lnet/time4j/calendar/EastAsianCalendar;->lengthOfMonth()I

    move-result p3

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v5, v4

    add-long/2addr p1, v5

    const-wide/16 v5, 0x1

    sub-long v5, p1, v5

    .line 861
    invoke-virtual/range {v0 .. v6}, Lnet/time4j/calendar/EastAsianCS;->create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1

    .line 864
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid cyclic year: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
