.class final Lnet/time4j/calendar/astro/SkyPosition;
.super Ljava/lang/Object;
.source "SkyPosition.java"

# interfaces
.implements Lnet/time4j/calendar/astro/EquatorialCoordinates;


# instance fields
.field private final dec:D

.field private final ra:D


# direct methods
.method constructor <init>(DD)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iput-wide p1, p0, Lnet/time4j/calendar/astro/SkyPosition;->ra:D

    .line 50
    iput-wide p3, p0, Lnet/time4j/calendar/astro/SkyPosition;->dec:D

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not finite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 72
    instance-of v0, p1, Lnet/time4j/calendar/astro/SkyPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lnet/time4j/calendar/astro/SkyPosition;

    .line 74
    iget-wide v2, p0, Lnet/time4j/calendar/astro/SkyPosition;->ra:D

    iget-wide v4, p1, Lnet/time4j/calendar/astro/SkyPosition;->ra:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lnet/time4j/calendar/astro/SkyPosition;->dec:D

    iget-wide v4, p1, Lnet/time4j/calendar/astro/SkyPosition;->dec:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDeclination()D
    .locals 2

    .line 65
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SkyPosition;->dec:D

    return-wide v0
.end method

.method public getRightAscension()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SkyPosition;->ra:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 84
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SkyPosition;->ra:D

    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/AstroUtils;->hashCode(D)I

    move-result v0

    iget-wide v1, p0, Lnet/time4j/calendar/astro/SkyPosition;->dec:D

    invoke-static {v1, v2}, Lnet/time4j/calendar/astro/AstroUtils;->hashCode(D)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RA/Dec=["

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-wide v1, p0, Lnet/time4j/calendar/astro/SkyPosition;->ra:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    iget-wide v1, p0, Lnet/time4j/calendar/astro/SkyPosition;->dec:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
