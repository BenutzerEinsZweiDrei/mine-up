.class public Lnet/time4j/calendar/astro/LunarTime$Builder;
.super Ljava/lang/Object;
.source "LunarTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/astro/LunarTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private altitude:I

.field private latitude:D

.field private longitude:D

.field private final observerZoneID:Lnet/time4j/tz/TZID;


# direct methods
.method private constructor <init>(Lnet/time4j/tz/TZID;)V
    .locals 2

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 589
    iput-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->latitude:D

    .line 590
    iput-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->longitude:D

    const/4 v0, 0x0

    .line 591
    iput v0, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->altitude:I

    .line 599
    iput-object p1, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->observerZoneID:Lnet/time4j/tz/TZID;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/tz/TZID;Lnet/time4j/calendar/astro/LunarTime$1;)V
    .locals 0

    .line 585
    invoke-direct {p0, p1}, Lnet/time4j/calendar/astro/LunarTime$Builder;-><init>(Lnet/time4j/tz/TZID;)V

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

    .line 835
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p4

    if-gtz p4, :cond_4

    :cond_0
    if-ltz p1, :cond_3

    const/16 p0, 0x3c

    if-ge p1, p0, :cond_3

    .line 841
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_2

    .line 843
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-ltz p0, :cond_1

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_1

    return-void

    .line 844
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

    .line 842
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arc seconds must be finite."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 840
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

    .line 838
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
.method public atAltitude(I)Lnet/time4j/calendar/astro/LunarTime$Builder;
    .locals 3

    int-to-double v0, p1

    .line 788
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0x2af8

    if-ge p1, v0, :cond_0

    .line 794
    iput p1, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->altitude:I

    return-object p0

    .line 791
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

    .line 789
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

.method public build()Lnet/time4j/calendar/astro/LunarTime;
    .locals 9

    .line 815
    iget-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 817
    iget-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Lnet/time4j/calendar/astro/LunarTime;

    iget-wide v2, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->latitude:D

    iget-wide v4, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->longitude:D

    iget v6, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->altitude:I

    iget-object v7, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->observerZoneID:Lnet/time4j/tz/TZID;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lnet/time4j/calendar/astro/LunarTime;-><init>(DDILnet/time4j/tz/TZID;Lnet/time4j/calendar/astro/LunarTime$1;)V

    return-object v0

    .line 818
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Longitude was not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Latitude was not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public easternLongitude(IID)Lnet/time4j/calendar/astro/LunarTime$Builder;
    .locals 4

    const/16 v0, 0xb3

    .line 711
    invoke-static {p1, p2, p3, p4, v0}, Lnet/time4j/calendar/astro/LunarTime$Builder;->check(IIDI)V

    .line 713
    iget-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->longitude:D

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

    .line 714
    iput-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->longitude:D

    return-object p0

    .line 717
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Longitude has already been set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public northernLatitude(IID)Lnet/time4j/calendar/astro/LunarTime$Builder;
    .locals 4

    const/16 v0, 0x5a

    .line 633
    invoke-static {p1, p2, p3, p4, v0}, Lnet/time4j/calendar/astro/LunarTime$Builder;->check(IIDI)V

    .line 635
    iget-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->latitude:D

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

    .line 636
    iput-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->latitude:D

    return-object p0

    .line 639
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Latitude has already been set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public southernLatitude(IID)Lnet/time4j/calendar/astro/LunarTime$Builder;
    .locals 6

    const/16 v0, 0x5a

    .line 672
    invoke-static {p1, p2, p3, p4, v0}, Lnet/time4j/calendar/astro/LunarTime$Builder;->check(IIDI)V

    .line 674
    iget-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->latitude:D

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

    .line 675
    iput-wide v2, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->latitude:D

    return-object p0

    .line 678
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Latitude has already been set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public westernLongitude(IID)Lnet/time4j/calendar/astro/LunarTime$Builder;
    .locals 6

    const/16 v0, 0xb4

    .line 750
    invoke-static {p1, p2, p3, p4, v0}, Lnet/time4j/calendar/astro/LunarTime$Builder;->check(IIDI)V

    .line 752
    iget-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->longitude:D

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

    .line 753
    iput-wide v2, p0, Lnet/time4j/calendar/astro/LunarTime$Builder;->longitude:D

    return-object p0

    .line 756
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Longitude has already been set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
