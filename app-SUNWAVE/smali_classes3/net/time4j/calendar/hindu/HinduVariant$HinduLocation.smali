.class Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;
.super Ljava/lang/Object;
.source "HinduVariant.java"

# interfaces
.implements Lnet/time4j/calendar/astro/GeoLocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/hindu/HinduVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HinduLocation"
.end annotation


# instance fields
.field private final altitude:I

.field private final latitude:D

.field private final longitude:D


# direct methods
.method constructor <init>(DDI)V
    .locals 2

    .line 1500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1502
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1504
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 1506
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gtz v0, :cond_2

    const-wide v0, -0x3fa9800000000000L    # -90.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_2

    const-wide v0, 0x4066800000000000L    # 180.0

    .line 1508
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gez v0, :cond_1

    const-wide v0, -0x3f99800000000000L    # -180.0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_1

    if-ltz p5, :cond_0

    const/16 v0, 0x2af8

    if-ge p5, v0, :cond_0

    .line 1514
    iput-wide p1, p0, Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;->latitude:D

    .line 1515
    iput-wide p3, p0, Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;->longitude:D

    .line 1516
    iput p5, p0, Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;->altitude:I

    return-void

    .line 1511
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Meters out of range 0 <= altitude < +11,000: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1509
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Degrees out of range -180.0 <= longitude < +180.0: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1507
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Degrees out of range -90.0 <= latitude <= +90.0: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1505
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Longitude must be a finite value: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1503
    :cond_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Latitude must be a finite value: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public getAltitude()I
    .locals 1

    .line 1493
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;->altitude:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1483
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1488
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;->longitude:D

    return-wide v0
.end method
