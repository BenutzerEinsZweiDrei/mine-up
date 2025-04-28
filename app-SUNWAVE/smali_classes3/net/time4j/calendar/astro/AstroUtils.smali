.class Lnet/time4j/calendar/astro/AstroUtils;
.super Ljava/lang/Object;
.source "AstroUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRefraction(D)D
    .locals 4

    const-wide v0, 0x401470a3d70a3d71L    # 5.11

    add-double/2addr v0, p0

    const-wide v2, 0x402499999999999aL    # 10.3

    div-double/2addr v2, v0

    add-double/2addr v2, p0

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide v0, 0x3ff051eb851eb852L    # 1.02

    div-double/2addr v0, p0

    const-wide p0, 0x3f5f9632dccc1e51L    # 0.0019279

    add-double/2addr v0, p0

    return-wide v0
.end method

.method static gmst(D)D
    .locals 10

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double v2, p0, v0

    const-wide v4, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v2, v4

    const-wide v6, 0x40e92b1000000000L    # 51544.5

    sub-double/2addr v0, v6

    const-wide v8, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v8

    sub-double/2addr p0, v6

    div-double/2addr p0, v8

    const-wide v6, 0x41607ad71a02ff8fL    # 8640184.812866

    mul-double/2addr v0, v6

    const-wide v6, 0x40d78ba3192641b3L    # 24110.54841

    add-double/2addr v0, v6

    const-wide v6, 0x3ff00b36e7ee7256L    # 1.0027379093

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x3eda013305e6c9ceL    # 6.2E-6

    mul-double/2addr v2, p0

    const-wide v6, 0x3fb7d5a9eb2074ebL    # 0.093104

    sub-double/2addr v6, v2

    mul-double/2addr v6, p0

    mul-double/2addr v6, p0

    add-double/2addr v0, v6

    div-double/2addr v0, v4

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p0

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method static hashCode(D)I
    .locals 2

    .line 109
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method static refractionFactorOfStdAtmosphere(I)D
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x3f7a9fbe76c8b439L    # 0.0065

    mul-double/2addr v0, v2

    const-wide v2, 0x4072026666666666L    # 288.15

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide v0, 0x4011051eb851eb85L    # 4.255

    .line 78
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static toRange_0_360(D)D
    .locals 3

    :goto_0
    const-wide/16 v0, 0x0

    .line 91
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const-wide v1, 0x4076800000000000L    # 360.0

    if-lez v0, :cond_0

    add-double/2addr p0, v1

    goto :goto_0

    .line 94
    :cond_0
    :goto_1
    invoke-static {p0, p1, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_1

    sub-double/2addr p0, v1

    goto :goto_1

    :cond_1
    return-wide p0
.end method
