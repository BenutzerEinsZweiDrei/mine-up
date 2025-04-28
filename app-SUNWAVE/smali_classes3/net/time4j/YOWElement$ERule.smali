.class Lnet/time4j/YOWElement$ERule;
.super Ljava/lang/Object;
.source "YOWElement.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/YOWElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ERule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/YOWElement$1;)V
    .locals 0

    .line 375
    invoke-direct {p0}, Lnet/time4j/YOWElement$ERule;-><init>()V

    return-void
.end method

.method private getChild()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 471
    sget-object v0, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->weekOfYear()Lnet/time4j/AdjustableElement;

    move-result-object v0

    return-object v0
.end method

.method private static setYearOfWeekdate(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;
    .locals 9

    .line 480
    invoke-static {p1}, Lnet/time4j/YOWElement;->access$700(I)I

    move-result v0

    .line 481
    invoke-static {p0}, Lnet/time4j/YOWElement;->access$400(Lnet/time4j/PlainDate;)I

    move-result v1

    .line 482
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v2

    sget-object v3, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    invoke-virtual {v2, v3}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result v2

    .line 484
    sget-object v3, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    const/4 v4, 0x1

    .line 486
    invoke-static {p1, v4, v4}, Lnet/time4j/base/GregorianMath;->toMJD(III)J

    move-result-wide v5

    sget-object v7, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    .line 485
    invoke-virtual {v3, v5, v6, v7}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v5

    add-int/lit8 v3, v0, -0x1

    int-to-long v7, v3

    add-long/2addr v5, v7

    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v3, v3, 0x7

    int-to-long v7, v3

    add-long/2addr v5, v7

    sub-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v5, v2

    const/16 v2, 0x35

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 494
    invoke-static {v1}, Lnet/time4j/YOWElement;->access$700(I)I

    move-result v1

    .line 495
    invoke-static {p1}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16e

    goto :goto_0

    :cond_0
    const/16 p1, 0x16d

    :goto_0
    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    .line 496
    div-int/lit8 v1, v1, 0x7

    if-ge v1, v2, :cond_1

    const-wide/16 v0, 0x7

    sub-long/2addr v5, v0

    :cond_1
    const-wide/16 v0, 0x2da

    sub-long/2addr v5, v0

    .line 501
    invoke-virtual {p0, v5, v6}, Lnet/time4j/PlainDate;->withDaysSinceUTC(J)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 375
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/YOWElement$ERule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 465
    invoke-direct {p0}, Lnet/time4j/YOWElement$ERule;->getChild()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 375
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/YOWElement$ERule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 458
    invoke-direct {p0}, Lnet/time4j/YOWElement$ERule;->getChild()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 415
    sget-object p1, Lnet/time4j/YOWElement;->INSTANCE:Lnet/time4j/YOWElement;

    invoke-virtual {p1}, Lnet/time4j/YOWElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 375
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/YOWElement$ERule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 408
    sget-object p1, Lnet/time4j/YOWElement;->INSTANCE:Lnet/time4j/YOWElement;

    invoke-virtual {p1}, Lnet/time4j/YOWElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 375
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/YOWElement$ERule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 383
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 384
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    .line 385
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x0

    .line 386
    invoke-static {p1, v2}, Lnet/time4j/YOWElement;->access$500(Lnet/time4j/PlainDate;I)I

    move-result v3

    if-gt v3, v1, :cond_0

    sub-int v3, v1, v3

    .line 389
    div-int/lit8 v3, v3, 0x7

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x35

    if-lt v3, v5, :cond_1

    .line 391
    invoke-static {p1, v4}, Lnet/time4j/YOWElement;->access$500(Lnet/time4j/PlainDate;I)I

    move-result v3

    .line 392
    invoke-static {p1, v2}, Lnet/time4j/YOWElement;->access$600(Lnet/time4j/PlainDate;I)I

    move-result p1

    add-int/2addr v3, p1

    if-gt v3, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 401
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 375
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/YOWElement$ERule;->getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 375
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/YOWElement$ERule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 429
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const v0, -0x3b9ac9ff

    if-lt p2, v0, :cond_1

    const v0, 0x3b9ac9ff

    if-gt p2, v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 375
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/YOWElement$ERule;->withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            "Z)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 449
    sget-object p3, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/PlainDate;

    .line 450
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p3, p2}, Lnet/time4j/YOWElement$ERule;->setYearOfWeekdate(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;

    move-result-object p2

    .line 451
    sget-object p3, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p3, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 446
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
