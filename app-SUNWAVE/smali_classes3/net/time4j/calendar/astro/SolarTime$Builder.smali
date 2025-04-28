.class public Lnet/time4j/calendar/astro/SolarTime$Builder;
.super Ljava/lang/Object;
.source "SolarTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/astro/SolarTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private altitude:I

.field private calculator:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private observerZoneID:Lnet/time4j/tz/TZID;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 1521
    iput-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->latitude:D

    .line 1522
    iput-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->longitude:D

    const/4 v0, 0x0

    .line 1523
    iput v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->altitude:I

    .line 1524
    invoke-static {}, Lnet/time4j/calendar/astro/SolarTime;->access$1100()Lnet/time4j/calendar/astro/SolarTime$Calculator;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->calculator:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1525
    iput-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->observerZoneID:Lnet/time4j/tz/TZID;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/astro/SolarTime$1;)V
    .locals 0

    .line 1517
    invoke-direct {p0}, Lnet/time4j/calendar/astro/SolarTime$Builder;-><init>()V

    return-void
.end method

.method private static check(IIDI)V
    .locals 6

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    if-ltz p0, :cond_4

    if-gt p0, p4, :cond_4

    const-wide/16 v2, 0x0

    if-ne p0, p4, :cond_0

    const/16 v4, 0xb3

    if-eq p4, v4, :cond_0

    if-gtz p1, :cond_4

    .line 1863
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p4

    if-gtz p4, :cond_4

    :cond_0
    if-ltz p1, :cond_3

    const/16 p0, 0x3c

    if-ge p1, p0, :cond_3

    .line 1869
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1871
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-ltz p0, :cond_1

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_1

    return-void

    .line 1872
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Arc seconds out of range: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1870
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arc seconds must be finite."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1868
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Arc minutes out of range: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    int-to-double v2, p0

    int-to-double v4, p1

    div-double/2addr v4, v0

    add-double/2addr v2, v4

    const-wide v0, 0x40ac200000000000L    # 3600.0

    div-double/2addr p2, v0

    add-double/2addr v2, p2

    .line 1866
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Degrees out of range: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " (decimal="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public atAltitude(I)Lnet/time4j/calendar/astro/SolarTime$Builder;
    .locals 3

    int-to-double v0, p1

    .line 1730
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0x2af8

    if-ge p1, v0, :cond_0

    .line 1736
    iput p1, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->altitude:I

    return-object p0

    .line 1733
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meters out of range 0 <= altitude < +11,000: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1731
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Altitude must be finite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lnet/time4j/calendar/astro/SolarTime;
    .locals 10

    .line 1843
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1845
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1849
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime;

    iget-wide v2, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->latitude:D

    iget-wide v4, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->longitude:D

    iget v6, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->altitude:I

    iget-object v7, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->calculator:Ljava/lang/String;

    iget-object v8, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->observerZoneID:Lnet/time4j/tz/TZID;

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lnet/time4j/calendar/astro/SolarTime;-><init>(DDILjava/lang/String;Lnet/time4j/tz/TZID;Lnet/time4j/calendar/astro/SolarTime$1;)V

    return-object v0

    .line 1846
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Longitude was not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1844
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Latitude was not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public easternLongitude(IID)Lnet/time4j/calendar/astro/SolarTime$Builder;
    .locals 4

    const/16 v0, 0xb3

    .line 1642
    invoke-static {p1, p2, p3, p4, v0}, Lnet/time4j/calendar/astro/SolarTime$Builder;->check(IIDI)V

    .line 1644
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-double v0, p1

    int-to-double p1, p2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr p1, v2

    add-double/2addr v0, p1

    const-wide p1, 0x40ac200000000000L    # 3600.0

    div-double/2addr p3, p1

    add-double/2addr v0, p3

    .line 1645
    iput-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->longitude:D

    return-object p0

    .line 1648
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Longitude has already been set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/calendar/astro/SolarTime$Builder;
    .locals 1

    const-string v0, "Missing timezone identifier."

    .line 1821
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1824
    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->observerZoneID:Lnet/time4j/tz/TZID;

    return-object p0
.end method

.method public northernLatitude(IID)Lnet/time4j/calendar/astro/SolarTime$Builder;
    .locals 4

    const/16 v0, 0x5a

    .line 1564
    invoke-static {p1, p2, p3, p4, v0}, Lnet/time4j/calendar/astro/SolarTime$Builder;->check(IIDI)V

    .line 1566
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-double v0, p1

    int-to-double p1, p2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr p1, v2

    add-double/2addr v0, p1

    const-wide p1, 0x40ac200000000000L    # 3600.0

    div-double/2addr p3, p1

    add-double/2addr v0, p3

    .line 1567
    iput-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->latitude:D

    return-object p0

    .line 1570
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Latitude has already been set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public southernLatitude(IID)Lnet/time4j/calendar/astro/SolarTime$Builder;
    .locals 6

    const/16 v0, 0x5a

    .line 1603
    invoke-static {p1, p2, p3, p4, v0}, Lnet/time4j/calendar/astro/SolarTime$Builder;->check(IIDI)V

    .line 1605
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    int-to-double v2, p1

    int-to-double p1, p2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr p1, v4

    add-double/2addr v2, p1

    const-wide p1, 0x40ac200000000000L    # 3600.0

    div-double/2addr p3, p1

    add-double/2addr v2, p3

    mul-double/2addr v2, v0

    .line 1606
    iput-wide v2, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->latitude:D

    return-object p0

    .line 1609
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Latitude has already been set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public usingCalculator(Ljava/lang/String;)Lnet/time4j/calendar/astro/SolarTime$Builder;
    .locals 3

    .line 1757
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1759
    invoke-static {}, Lnet/time4j/calendar/astro/SolarTime;->access$1200()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->calculator:Ljava/lang/String;

    return-object p0

    .line 1760
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown calculator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1758
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing calculator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public usingCalculator(Lnet/time4j/calendar/astro/SolarTime$Calculator;)Lnet/time4j/calendar/astro/SolarTime$Builder;
    .locals 2

    .line 1784
    invoke-static {}, Lnet/time4j/calendar/astro/SolarTime;->access$1200()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {p1}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    invoke-interface {p1}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->calculator:Ljava/lang/String;

    return-object p0
.end method

.method public westernLongitude(IID)Lnet/time4j/calendar/astro/SolarTime$Builder;
    .locals 6

    const/16 v0, 0xb4

    .line 1681
    invoke-static {p1, p2, p3, p4, v0}, Lnet/time4j/calendar/astro/SolarTime$Builder;->check(IIDI)V

    .line 1683
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    int-to-double v2, p1

    int-to-double p1, p2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr p1, v4

    add-double/2addr v2, p1

    const-wide p1, 0x40ac200000000000L    # 3600.0

    div-double/2addr p3, p1

    add-double/2addr v2, p3

    mul-double/2addr v2, v0

    .line 1684
    iput-wide v2, p0, Lnet/time4j/calendar/astro/SolarTime$Builder;->longitude:D

    return-object p0

    .line 1687
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Longitude has already been set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
