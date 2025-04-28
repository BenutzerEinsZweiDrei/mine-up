.class Lnet/time4j/calendar/JapaneseCalendar$Transformer;
.super Ljava/lang/Object;
.source "JapaneseCalendar.java"

# interfaces
.implements Lnet/time4j/engine/CalendarSystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JapaneseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/CalendarSystem<",
        "Lnet/time4j/calendar/JapaneseCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/JapaneseCalendar$1;)V
    .locals 0

    .line 1729
    invoke-direct {p0}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;-><init>()V

    return-void
.end method


# virtual methods
.method check(J)V
    .locals 2

    .line 1801
    invoke-virtual {p0}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;->getMinimumSinceUTC()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;->getMaximumSinceUTC()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    return-void

    .line 1802
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Japanese calendar out of supported range."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEras()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 1794
    invoke-static {}, Lnet/time4j/calendar/Nengo;->list()Ljava/util/List;

    move-result-object v0

    .line 1795
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v0
.end method

.method public getMaximumSinceUTC()J
    .locals 2

    const-wide v0, 0x550a1b461dL

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 3

    .line 1779
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$900()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 1729
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;->transform(Lnet/time4j/calendar/JapaneseCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/JapaneseCalendar;)J
    .locals 2

    .line 1772
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1200(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    invoke-static {v0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->transform(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 1729
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;->transform(J)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 9

    const-wide/32 v0, -0x8d3e

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 1738
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {p1, p2, v0}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 1739
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v4

    .line 1740
    invoke-static {v1, v4, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$600(ZIJ)Lnet/time4j/calendar/Nengo;

    move-result-object v3

    .line 1742
    new-instance p1, Lnet/time4j/calendar/JapaneseCalendar;

    .line 1745
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result v5

    .line 1746
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getMonth()I

    move-result p2

    invoke-static {p2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v6

    .line 1747
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lnet/time4j/calendar/JapaneseCalendar;-><init>(Lnet/time4j/calendar/Nengo;IILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/calendar/JapaneseCalendar$1;)V

    return-object p1

    .line 1751
    :cond_0
    invoke-static {p1, p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$800(J)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit16 v2, v0, 0x2bd

    .line 1758
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$900()[J

    move-result-object v3

    aget-wide v4, v3, v0

    sub-long v3, p1, v4

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    long-to-int v0, v3

    .line 1759
    invoke-static {v1, v2, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$600(ZIJ)Lnet/time4j/calendar/Nengo;

    move-result-object p1

    .line 1761
    new-instance p2, Lnet/time4j/calendar/JapaneseCalendar;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v2, v0, v1}, Lnet/time4j/calendar/JapaneseCalendar;-><init>(Lnet/time4j/calendar/Nengo;IILnet/time4j/calendar/JapaneseCalendar$1;)V

    return-object p2

    .line 1754
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
