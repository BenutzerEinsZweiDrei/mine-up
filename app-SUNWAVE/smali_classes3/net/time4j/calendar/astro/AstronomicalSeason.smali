.class public final enum Lnet/time4j/calendar/astro/AstronomicalSeason;
.super Ljava/lang/Enum;
.source "AstronomicalSeason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/astro/AstronomicalSeason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/astro/AstronomicalSeason;

.field private static final A:[I

.field public static final enum AUTUMNAL_EQUINOX:Lnet/time4j/calendar/astro/AstronomicalSeason;

.field private static final B:[D

.field private static final C:[D

.field public static final enum SUMMER_SOLSTICE:Lnet/time4j/calendar/astro/AstronomicalSeason;

.field public static final enum VERNAL_EQUINOX:Lnet/time4j/calendar/astro/AstronomicalSeason;

.field public static final enum WINTER_SOLSTICE:Lnet/time4j/calendar/astro/AstronomicalSeason;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 58
    new-instance v0, Lnet/time4j/calendar/astro/AstronomicalSeason;

    const-string v1, "VERNAL_EQUINOX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/astro/AstronomicalSeason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/astro/AstronomicalSeason;->VERNAL_EQUINOX:Lnet/time4j/calendar/astro/AstronomicalSeason;

    .line 67
    new-instance v1, Lnet/time4j/calendar/astro/AstronomicalSeason;

    const-string v3, "SUMMER_SOLSTICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/astro/AstronomicalSeason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/astro/AstronomicalSeason;->SUMMER_SOLSTICE:Lnet/time4j/calendar/astro/AstronomicalSeason;

    .line 76
    new-instance v3, Lnet/time4j/calendar/astro/AstronomicalSeason;

    const-string v5, "AUTUMNAL_EQUINOX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/calendar/astro/AstronomicalSeason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/calendar/astro/AstronomicalSeason;->AUTUMNAL_EQUINOX:Lnet/time4j/calendar/astro/AstronomicalSeason;

    .line 85
    new-instance v5, Lnet/time4j/calendar/astro/AstronomicalSeason;

    const-string v7, "WINTER_SOLSTICE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/calendar/astro/AstronomicalSeason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/calendar/astro/AstronomicalSeason;->WINTER_SOLSTICE:Lnet/time4j/calendar/astro/AstronomicalSeason;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/time4j/calendar/astro/AstronomicalSeason;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 47
    sput-object v7, Lnet/time4j/calendar/astro/AstronomicalSeason;->$VALUES:[Lnet/time4j/calendar/astro/AstronomicalSeason;

    const/16 v0, 0x18

    new-array v1, v0, [I

    .line 329
    fill-array-data v1, :array_0

    sput-object v1, Lnet/time4j/calendar/astro/AstronomicalSeason;->A:[I

    new-array v1, v0, [D

    .line 334
    fill-array-data v1, :array_1

    sput-object v1, Lnet/time4j/calendar/astro/AstronomicalSeason;->B:[D

    new-array v0, v0, [D

    .line 340
    fill-array-data v0, :array_2

    sput-object v0, Lnet/time4j/calendar/astro/AstronomicalSeason;->C:[D

    return-void

    nop

    :array_0
    .array-data 4
        0x1e5
        0xcb
        0xc7
        0xb6
        0x9c
        0x88
        0x4d
        0x4a
        0x46
        0x3a
        0x34
        0x32
        0x2d
        0x2c
        0x1d
        0x12
        0x11
        0x10
        0xe
        0xc
        0xc
        0xc
        0x9
        0x8
    .end array-data

    :array_1
    .array-data 8
        0x40744f5c28f5c28fL    # 324.96
        0x407513ae147ae148L    # 337.23
        0x40756147ae147ae1L    # 342.08
        0x403bd9999999999aL    # 27.85
        0x405248f5c28f5c29L    # 73.14
        0x406570a3d70a3d71L    # 171.52
        0x406bd147ae147ae1L    # 222.54
        0x40728b851eb851ecL    # 296.72
        0x406e728f5c28f5c3L    # 243.58
        0x405df3d70a3d70a4L    # 119.81
        0x407292b851eb851fL    # 297.17
        0x4035051eb851eb85L    # 21.02
        0x406ef147ae147ae1L    # 247.54
        0x4074526666666666L    # 325.15
        0x404e770a3d70a3d7L    # 60.93
        0x406363d70a3d70a4L    # 155.12
        0x40720ca3d70a3d71L    # 288.79
        0x4068c147ae147ae1L    # 198.04
        0x4068f851eb851eb8L    # 199.76
        0x4057d8f5c28f5c29L    # 95.39
        0x4071f1c28f5c28f6L    # 287.11
        0x40740cf5c28f5c29L    # 320.81
        0x406c775c28f5c28fL    # 227.73
        0x402ee66666666666L    # 15.45
    .end array-data

    :array_2
    .array-data 8
        0x409e388b43958106L    # 1934.136
        0x40e0188ef1a9fbe7L    # 32964.467
        0x40342f9db22d0e56L    # 20.186
        0x411b2d4c72b020c5L    # 445267.112
        0x40e5fd9c5a1cac08L    # 45036.886
        0x40d5fd9c5a1cac08L    # 22518.443
        0x40f0188ef1a9fbe7L    # 65928.934
        0x40a7b5cfdf3b645aL    # 3034.906
        0x40c1a6c1a9fbe76dL    # 9037.513
        0x40e076c4b4395810L    # 33718.147
        0x4062d5b22d0e5604L    # 150.678
        0x40a1d273b645a1cbL    # 2281.226
        0x40dd3a63f7ced917L    # 29929.562
        0x40ded0fd2f1a9fbeL    # 31555.956
        0x40b15b6ac083126fL    # 4443.417
        0x40f07e353f7ced91L    # 67555.328
        0x40b1d273b645a1cbL    # 4562.452
        0x40eeb5c0ed916873L    # 62894.029
        0x40deb33af1a9fbe7L    # 31436.921
        0x40cc78ec8b439581L    # 14577.848
        0x40df2ef0624dd2f2L    # 31931.756
        0x40e0fb2849ba5e35L    # 34777.259
        0x40931874bc6a7efaL    # 1222.114
        0x40d076c4bc6a7efaL    # 16859.074
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static checkYear(I)V
    .locals 3

    const/16 v0, -0x7d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0xbb8

    if-gt p0, v0, :cond_0

    return-void

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year out of supported range: -2000 <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " <= +3000"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static cos(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    .line 358
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private jdEphemerisDays(I)D
    .locals 10

    .line 273
    invoke-direct {p0, p1}, Lnet/time4j/calendar/astro/AstronomicalSeason;->jdMean(I)D

    move-result-wide v0

    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    sub-double v2, v0, v2

    const-wide v4, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v2, v4

    const-wide v4, 0x40e193ebef9db22dL    # 35999.373

    mul-double/2addr v4, v2

    const-wide v6, 0x4003c28f5c28f5c3L    # 2.47

    sub-double/2addr v4, v6

    .line 276
    invoke-static {v4, v5}, Lnet/time4j/calendar/astro/AstronomicalSeason;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x3fa119ce075f6fd2L    # 0.0334

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Lnet/time4j/calendar/astro/AstronomicalSeason;->cos(D)D

    move-result-wide v4

    const-wide v8, 0x3f46f0068db8bac7L    # 7.0E-4

    mul-double/2addr v4, v8

    add-double/2addr v6, v4

    .line 277
    invoke-static {v2, v3}, Lnet/time4j/calendar/astro/AstronomicalSeason;->periodic24(D)D

    move-result-wide v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private jdMean(I)D
    .locals 12

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-wide v4, 0x408f400000000000L    # 1000.0

    const/16 v6, 0x3e8

    if-ge p1, v6, :cond_4

    int-to-double v6, p1

    div-double/2addr v6, v4

    .line 287
    sget-object p1, Lnet/time4j/calendar/astro/AstronomicalSeason$1;->$SwitchMap$net$time4j$calendar$astro$AstronomicalSeason:[I

    invoke-virtual {p0}, Lnet/time4j/calendar/astro/AstronomicalSeason;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    const-wide v0, 0x413a4446665de15dL    # 1721414.39987

    const-wide v2, 0x41164aeb87c06e1aL    # 365242.88257

    const-wide v4, -0x4080807357e670e3L    # -0.00769

    const-wide v8, -0x407ce4649906cca3L    # -0.00933

    const-wide v10, 0x3f0f75104d551d69L    # 6.0E-5

    :goto_0
    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    mul-double/2addr v8, v6

    add-double/2addr v8, v4

    mul-double/2addr v8, v6

    add-double/2addr v8, v2

    mul-double/2addr v8, v6

    add-double/2addr v8, v0

    return-wide v8

    .line 302
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    const-wide v0, 0x413a43edb45d6388L    # 1721325.70455

    const-wide v2, 0x41164ae9fb7952d2L    # 365242.49558

    const-wide v4, -0x40421b5c7cd898b3L    # -0.11677

    const-wide v8, -0x4097ab7564302b41L    # -0.00297

    const-wide v10, 0x3f483f91e646f156L    # 7.4E-4

    :goto_1
    mul-double/2addr v10, v6

    add-double/2addr v10, v8

    mul-double/2addr v10, v6

    add-double/2addr v10, v4

    mul-double/2addr v10, v6

    add-double/2addr v10, v2

    mul-double/2addr v10, v6

    add-double/2addr v10, v0

    return-wide v10

    :cond_2
    const-wide v0, 0x413a43914106cca3L    # 1721233.25401

    const-wide v2, 0x41164ae6e708ede5L    # 365241.72562

    const-wide v4, -0x4054bf0995aaf790L    # -0.05323

    const-wide v8, 0x3f82934acaff6d33L    # 0.00907

    const-wide v10, 0x3f30624dd2f1a9fcL    # 2.5E-4

    goto :goto_1

    :cond_3
    const-wide v0, 0x413a43334ab94d94L    # 1721139.29189

    const-wide v2, 0x41164ae88cb295eaL    # 365242.1374

    const-wide v4, 0x3faf67f4dbdf8f47L    # 0.06134

    const-wide v8, 0x3f522fad6cb53501L    # 0.00111

    const-wide v10, 0x3f4743e963dc486bL    # 7.1E-4

    goto :goto_0

    :cond_4
    add-int/lit16 p1, p1, -0x7d0

    int-to-double v6, p1

    div-double/2addr v6, v4

    .line 307
    sget-object p1, Lnet/time4j/calendar/astro/AstronomicalSeason$1;->$SwitchMap$net$time4j$calendar$astro$AstronomicalSeason:[I

    invoke-virtual {p0}, Lnet/time4j/calendar/astro/AstronomicalSeason;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_5

    const-wide v0, 0x4142b4de079e59f3L    # 2451900.05952

    const-wide v2, 0x41164aeaf64302b4L    # 365242.74049

    const-wide v4, -0x40502363b256ffc1L    # -0.06223

    const-wide v8, -0x407f251c193b3a69L    # -0.00823

    const-wide v10, 0x3f34f8b588e368f1L    # 3.2E-4

    goto :goto_1

    .line 322
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_6
    const-wide v0, 0x4142b4b11bcb923aL    # 2451810.21715

    const-wide v2, 0x41164ae8121815a0L    # 365242.01767

    const-wide v4, -0x40425e353f7ced91L    # -0.11575

    const-wide v8, 0x3f6b9b66f9335d25L    # 0.00337

    const-wide v10, 0x3f498f1d3ed527e5L    # 7.8E-4

    goto/16 :goto_1

    :cond_7
    const-wide v0, 0x4142b48248a9691aL    # 2451716.56767

    const-wide v2, 0x41164ae6810e0221L    # 365241.62603

    const-wide v4, 0x3f6a9fbe76c8b439L    # 0.00325

    const-wide v8, 0x3f822fad6cb53501L    # 0.00888

    const-wide v10, 0x3f33a92a30553261L    # 3.0E-4

    goto/16 :goto_0

    :cond_8
    const-wide v0, 0x4142b453e7a8d64dL    # 2451623.80984

    const-wide v2, 0x41164ae97f04577eL    # 365242.37404

    const-wide v4, 0x3faa771c970f7b9eL    # 0.05169

    const-wide v8, -0x408f2a5a469d7343L    # -0.00411

    const-wide v10, 0x3f42ad81adea8976L    # 5.7E-4

    goto/16 :goto_0
.end method

.method public static of(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/AstronomicalSeason;
    .locals 4

    .line 114
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0, v0}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->getYear()I

    move-result v0

    .line 115
    invoke-static {v0}, Lnet/time4j/calendar/astro/AstronomicalSeason;->checkYear(I)V

    .line 118
    sget-object v1, Lnet/time4j/calendar/astro/AstronomicalSeason;->VERNAL_EQUINOX:Lnet/time4j/calendar/astro/AstronomicalSeason;

    invoke-virtual {v1, v0}, Lnet/time4j/calendar/astro/AstronomicalSeason;->inYear(I)Lnet/time4j/Moment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    sget-object p0, Lnet/time4j/calendar/astro/AstronomicalSeason;->WINTER_SOLSTICE:Lnet/time4j/calendar/astro/AstronomicalSeason;

    return-object p0

    .line 120
    :cond_0
    sget-object v2, Lnet/time4j/calendar/astro/AstronomicalSeason;->SUMMER_SOLSTICE:Lnet/time4j/calendar/astro/AstronomicalSeason;

    invoke-virtual {v2, v0}, Lnet/time4j/calendar/astro/AstronomicalSeason;->inYear(I)Lnet/time4j/Moment;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 122
    :cond_1
    sget-object v1, Lnet/time4j/calendar/astro/AstronomicalSeason;->AUTUMNAL_EQUINOX:Lnet/time4j/calendar/astro/AstronomicalSeason;

    invoke-virtual {v1, v0}, Lnet/time4j/calendar/astro/AstronomicalSeason;->inYear(I)Lnet/time4j/Moment;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 124
    :cond_2
    sget-object v2, Lnet/time4j/calendar/astro/AstronomicalSeason;->WINTER_SOLSTICE:Lnet/time4j/calendar/astro/AstronomicalSeason;

    invoke-virtual {v2, v0}, Lnet/time4j/calendar/astro/AstronomicalSeason;->inYear(I)Lnet/time4j/Moment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    return-object v2
.end method

.method private static periodic24(D)D
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 350
    sget-object v3, Lnet/time4j/calendar/astro/AstronomicalSeason;->A:[I

    aget v3, v3, v2

    int-to-double v3, v3

    sget-object v5, Lnet/time4j/calendar/astro/AstronomicalSeason;->B:[D

    aget-wide v6, v5, v2

    sget-object v5, Lnet/time4j/calendar/astro/AstronomicalSeason;->C:[D

    aget-wide v8, v5, v2

    mul-double/2addr v8, p0

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Lnet/time4j/calendar/astro/AstronomicalSeason;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/astro/AstronomicalSeason;
    .locals 1

    .line 47
    const-class v0, Lnet/time4j/calendar/astro/AstronomicalSeason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/astro/AstronomicalSeason;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/astro/AstronomicalSeason;
    .locals 1

    .line 47
    sget-object v0, Lnet/time4j/calendar/astro/AstronomicalSeason;->$VALUES:[Lnet/time4j/calendar/astro/AstronomicalSeason;

    invoke-virtual {v0}, [Lnet/time4j/calendar/astro/AstronomicalSeason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/astro/AstronomicalSeason;

    return-object v0
.end method


# virtual methods
.method public inYear(I)Lnet/time4j/Moment;
    .locals 7

    .line 155
    invoke-static {p1}, Lnet/time4j/calendar/astro/AstronomicalSeason;->checkYear(I)V

    .line 156
    invoke-direct {p0, p1}, Lnet/time4j/calendar/astro/AstronomicalSeason;->jdEphemerisDays(I)D

    move-result-wide v0

    const-wide v2, 0x4142a032c0000000L    # 2441317.5

    sub-double/2addr v0, v2

    const-wide v2, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v0, v2

    .line 157
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v3, 0x7b4

    if-ge p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide v3, 0x4045178d4fdf3b64L    # 42.184

    sub-double/2addr v0, v3

    .line 167
    sget-object p1, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    goto :goto_1

    .line 163
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/AstronomicalSeason;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x3

    invoke-static {p1, v3}, Lnet/time4j/scale/TimeScale;->deltaT(II)D

    move-result-wide v3

    sub-double/2addr v0, v3

    .line 164
    sget-object p1, Lnet/time4j/scale/TimeScale;->UT:Lnet/time4j/scale/TimeScale;

    .line 170
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    long-to-double v5, v3

    sub-double/2addr v0, v5

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, v5

    double-to-int v0, v0

    if-nez v2, :cond_2

    const-wide/32 v1, 0x3c26700

    add-long/2addr v3, v1

    .line 175
    sget-object p1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 178
    :cond_2
    invoke-static {v3, v4, v0, p1}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public julianDay(I)Lnet/time4j/calendar/astro/JulianDay;
    .locals 2

    .line 207
    invoke-static {p1}, Lnet/time4j/calendar/astro/AstronomicalSeason;->checkYear(I)V

    .line 208
    invoke-direct {p0, p1}, Lnet/time4j/calendar/astro/AstronomicalSeason;->jdEphemerisDays(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(D)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object p1

    return-object p1
.end method

.method public onNorthernHemisphere()Lnet/time4j/calendar/astro/AstronomicalSeason;
    .locals 0

    return-object p0
.end method

.method public onSouthernHemisphere()Lnet/time4j/calendar/astro/AstronomicalSeason;
    .locals 2

    .line 259
    invoke-static {}, Lnet/time4j/calendar/astro/AstronomicalSeason;->values()[Lnet/time4j/calendar/astro/AstronomicalSeason;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/calendar/astro/AstronomicalSeason;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    rem-int/lit8 v1, v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method
