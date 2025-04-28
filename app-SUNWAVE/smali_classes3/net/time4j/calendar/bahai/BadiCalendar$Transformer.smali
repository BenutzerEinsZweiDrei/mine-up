.class Lnet/time4j/calendar/bahai/BadiCalendar$Transformer;
.super Ljava/lang/Object;
.source "BadiCalendar.java"

# interfaces
.implements Lnet/time4j/engine/CalendarSystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/bahai/BadiCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/CalendarSystem<",
        "Lnet/time4j/calendar/bahai/BadiCalendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final EPOCH:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x734

    const/4 v1, 0x3

    const/16 v2, 0x15

    .line 1660
    invoke-static {v0, v1, v2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sput-wide v0, Lnet/time4j/calendar/bahai/BadiCalendar$Transformer;->EPOCH:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/bahai/BadiCalendar$1;)V
    .locals 0

    .line 1655
    invoke-direct {p0}, Lnet/time4j/calendar/bahai/BadiCalendar$Transformer;-><init>()V

    return-void
.end method


# virtual methods
.method public getEras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 1728
    sget-object v0, Lnet/time4j/calendar/bahai/BadiEra;->BAHAI:Lnet/time4j/calendar/bahai/BadiEra;

    .line 1729
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSinceUTC()J
    .locals 2

    .line 1721
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$500()[I

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$500()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 2

    .line 1714
    sget-wide v0, Lnet/time4j/calendar/bahai/BadiCalendar$Transformer;->EPOCH:J

    return-wide v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 1655
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$Transformer;->transform(Lnet/time4j/calendar/bahai/BadiCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/bahai/BadiCalendar;)J
    .locals 4

    .line 1700
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$800(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v0

    .line 1701
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->getDayOfYear()I

    move-result p1

    const/16 v1, 0x7df

    if-ge v0, v1, :cond_0

    const/4 v1, 0x3

    const/16 v2, 0x15

    .line 1704
    invoke-static {v0, v1, v2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    .line 1706
    :cond_0
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$500()[I

    move-result-object v2

    sub-int/2addr v0, v1

    aget v0, v2, v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 1655
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$Transformer;->transform(J)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 13

    .line 1667
    sget-wide v0, Lnet/time4j/calendar/bahai/BadiCalendar$Transformer;->EPOCH:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    .line 1669
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$500()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v2, v0

    cmp-long v0, p1, v2

    const-wide/16 v2, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x13

    if-gez v0, :cond_2

    .line 1670
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {p1, p2, v0}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 1671
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, -0x733

    .line 1672
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v6

    if-le v6, v4, :cond_0

    const/4 v4, 0x3

    if-ne v6, v4, :cond_1

    .line 1673
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v0

    const/16 v4, 0x15

    if-ge v0, v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 1676
    invoke-static {v1, v5}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v0

    add-int/lit8 v9, v0, 0x1

    .line 1677
    invoke-static {v1, v5}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    .line 1678
    new-instance v0, Lnet/time4j/calendar/bahai/BadiCalendar;

    const/4 v7, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V

    .line 1679
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/bahai/BadiCalendar$Transformer;->transform(Lnet/time4j/calendar/bahai/BadiCalendar;)J

    move-result-wide v4

    sub-long/2addr p1, v4

    add-long/2addr p1, v2

    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p1

    invoke-static {v0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$700(Lnet/time4j/calendar/bahai/BadiCalendar;I)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1

    .line 1681
    :cond_2
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$500()[I

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v4

    :goto_0
    if-gt v1, v0, :cond_4

    .line 1682
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$500()[I

    move-result-object v4

    add-int/lit8 v6, v1, 0x1

    aget v4, v4, v6

    int-to-long v7, v4

    cmp-long v4, p1, v7

    if-gez v4, :cond_3

    .line 1683
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$500()[I

    move-result-object v0

    aget v0, v0, v1

    int-to-long v6, v0

    sub-long/2addr p1, v6

    add-long/2addr p1, v2

    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p1

    add-int/lit16 v1, v1, 0x7df

    add-int/lit16 v1, v1, -0x733

    add-int/lit8 p2, v1, -0x1

    const/16 v0, 0x169

    .line 1685
    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v2, v7, -0x1

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 1686
    invoke-static {v1, v5}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    .line 1687
    invoke-static {p2, v5}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result p2

    add-int/lit8 v9, p2, 0x1

    .line 1688
    new-instance p2, Lnet/time4j/calendar/bahai/BadiCalendar;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v6, p2

    invoke-direct/range {v6 .. v12}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V

    .line 1689
    invoke-static {p2, p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$700(Lnet/time4j/calendar/bahai/BadiCalendar;I)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1

    :cond_3
    move v1, v6

    goto :goto_0

    .line 1692
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1668
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not defined before Bahai era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
