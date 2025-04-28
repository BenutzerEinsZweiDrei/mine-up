.class Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;
.super Lnet/time4j/calendar/hindu/HinduCS;
.source "HinduVariant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/hindu/HinduVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModernHinduCS"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANOMALISTIC_MONTH:D = 27.554597974680476

.field private static final ANOMALISTIC_YEAR:D = 365.25878920258134

.field private static final CC:Z = false

.field private static final CREATION:D = -7.14403429586E11

.field private static final EPSILON:D

.field private static final MAX_YEAR:I = 0x176f

.field private static final MEAN_SIDEREAL_YEAR:D = 365.25636

.field private static final MEAN_SYNODIC_MONTH:D = 29.530588861

.field private static final MIN_YEAR:I = 0x4b0

.field private static final RISING_SIGN_FACTORS:[D

.field private static final SIDEREAL_MONTH:D = 27.321674162683866

.field static final SIDEREAL_START:D = 336.1360765905204

.field static final SIDEREAL_YEAR:D = 365.2587564814815

.field private static final SYNODIC_MONTH:D = 29.53058794607172


# instance fields
.field private volatile max:J

.field private volatile min:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 763
    const-class v0, Lnet/time4j/calendar/hindu/HinduVariant;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide v2, -0x3f70c00000000000L    # -1000.0

    .line 778
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->EPSILON:D

    const/4 v0, 0x6

    new-array v0, v0, [D

    .line 789
    fill-array-data v0, :array_0

    .line 796
    sput-object v0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->RISING_SIGN_FACTORS:[D

    return-void

    :array_0
    .array-data 8
        0x3fedb05b05b05b06L    # 0.9277777777777778
        0x3fefe93e93e93e94L    # 0.9972222222222222
        0x3ff1333333333333L    # 1.075
        0x3ff1333333333333L    # 1.075
        0x3fefe93e93e93e94L    # 0.9972222222222222
        0x3fedb05b05b05b06L    # 0.9277777777777778
    .end array-data
.end method

.method constructor <init>(Lnet/time4j/calendar/hindu/HinduVariant;)V
    .locals 2

    .line 807
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/HinduCS;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 801
    iput-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->min:J

    const-wide v0, 0x7fffffffffffffffL

    .line 802
    iput-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->max:J

    return-void
.end method

.method static synthetic access$200(DLnet/time4j/calendar/hindu/HinduVariant;)D
    .locals 0

    .line 764
    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSunrise(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(DLnet/time4j/calendar/hindu/HinduVariant;)D
    .locals 0

    .line 764
    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSunset(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(DLnet/time4j/calendar/hindu/HinduVariant;)D
    .locals 0

    .line 764
    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hStandardFromSundial(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static binarySearchLunarPhase(DD)D
    .locals 6

    add-double v0, p0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 1115
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hZodiac(D)I

    move-result v2

    invoke-static {p2, p3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hZodiac(D)I

    move-result v3

    if-eq v2, v3, :cond_2

    sub-double v2, p2, p0

    sget-wide v4, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->EPSILON:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    .line 1119
    :cond_0
    invoke-static {v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hLunarPhase(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 1120
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->binarySearchLunarPhase(DD)D

    move-result-wide p0

    return-wide p0

    .line 1122
    :cond_1
    invoke-static {v0, v1, p2, p3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->binarySearchLunarPhase(DD)D

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method private createNewYear(I)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 2

    .line 951
    sget-object v0, Lnet/time4j/calendar/IndianMonth;->AGRAHAYANA:Lnet/time4j/calendar/IndianMonth;

    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->of(Lnet/time4j/calendar/IndianMonth;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1
.end method

.method private getRule()Lnet/time4j/calendar/hindu/HinduRule;
    .locals 1

    .line 955
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->access$000(Lnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object v0

    return-object v0
.end method

.method private static hArcSin(D)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    neg-double p0, p0

    .line 987
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hArcSin(D)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-double v1, v0

    .line 990
    invoke-static {v1, v2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSineTable(D)D

    move-result-wide v3

    cmpl-double v3, p0, v3

    if-lez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    int-to-double v3, v0

    .line 993
    invoke-static {v3, v4}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSineTable(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x400e000000000000L    # 3.75

    sub-double/2addr p0, v5

    .line 994
    invoke-static {v1, v2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSineTable(D)D

    move-result-wide v0

    sub-double/2addr v0, v5

    div-double/2addr p0, v0

    add-double/2addr v3, p0

    mul-double/2addr v3, v7

    return-wide v3
.end method

.method private static hAscensionalDifference(DLnet/time4j/calendar/astro/GeoLocation;)D
    .locals 8

    .line 1355
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hTropicalLongitude(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSine(D)D

    move-result-wide p0

    const-wide v0, 0x3fda017d3eb26924L    # 0.4063408958696917

    mul-double/2addr p0, v0

    .line 1356
    invoke-interface {p2}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v0

    .line 1357
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hArcSin(D)D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSine(D)D

    move-result-wide v2

    .line 1358
    invoke-static {v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSine(D)D

    move-result-wide v6

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSine(D)D

    move-result-wide v0

    div-double/2addr v6, v0

    mul-double/2addr p0, v6

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    mul-double/2addr p0, v0

    div-double/2addr p0, v2

    .line 1359
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hArcSin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static hCalendarYear(DLnet/time4j/calendar/hindu/HinduVariant;)I
    .locals 8

    .line 1130
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->access$100(Lnet/time4j/calendar/hindu/HinduVariant;)Z

    move-result p2

    const-wide v0, 0x4076800000000000L    # 360.0

    const-wide v2, -0x3eceb66100000000L    # -1132959.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-eqz p2, :cond_0

    sub-double v2, p0, v2

    const-wide v6, 0x4076d41a0cf1800aL    # 365.25636

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    .line 1132
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSiderealSolarLongitude(D)D

    move-result-wide p0

    div-double/2addr p0, v0

    sub-double/2addr v2, p0

    .line 1131
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_0
    double-to-int p0, p0

    return p0

    :cond_0
    sub-double v2, p0, v2

    const-wide v6, 0x4076d423ddd61975L    # 365.2587564814815

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    .line 1135
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSolarLongitude(D)D

    move-result-wide p0

    div-double/2addr p0, v0

    sub-double/2addr v2, p0

    .line 1134
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    goto :goto_0
.end method

.method private static hCritical(Lnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduVariant$LongFunction;
    .locals 2

    .line 1205
    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant$1;->$SwitchMap$net$time4j$calendar$hindu$HinduRule:[I

    invoke-static {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->access$000(Lnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1207
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS$1;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS$1;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;)V

    return-object v0

    .line 1235
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1214
    :cond_1
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS$2;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS$2;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;)V

    return-object v0

    .line 1221
    :cond_2
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS$3;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS$3;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;)V

    return-object v0

    .line 1228
    :cond_3
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS$4;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS$4;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;)V

    return-object v0
.end method

.method private static hDailyMotion(D)D
    .locals 6

    const-wide v0, 0x4076d42400259a51L    # 365.25878920258134

    .line 1379
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hMeanPosition(DD)D

    move-result-wide p0

    .line 1380
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSine(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f4e573ac901e574L    # 9.25925925925926E-4

    mul-double/2addr v0, v2

    const-wide v2, 0x3fa3e93e93e93e94L    # 0.03888888888888889

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x400e000000000000L    # 3.75

    div-double/2addr p0, v0

    .line 1381
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v4, p0, v0

    .line 1382
    invoke-static {v4, v5}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSineTable(D)D

    move-result-wide v4

    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSineTable(D)D

    move-result-wide p0

    sub-double/2addr v4, p0

    const-wide p0, 0x402e8f5c28f5c28fL    # 15.28

    mul-double/2addr v4, p0

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    const-wide p0, 0x3fef8a0e9409ed81L    # 0.9856026545889308

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private static hEquationOfTime(D)D
    .locals 6

    const-wide v0, 0x4076d42400259a51L    # 365.25878920258134

    .line 1367
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hMeanPosition(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSine(D)D

    move-result-wide v0

    const-wide v2, 0x404ca66666666666L    # 57.3

    mul-double/2addr v2, v0

    .line 1368
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x4090e00000000000L    # 1080.0

    div-double/2addr v0, v4

    const-wide v4, 0x3fa3e93e93e93e94L    # 0.03888888888888889

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    .line 1369
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hDailyMotion(D)D

    move-result-wide p0

    const-wide v0, 0x4076800000000000L    # 360.0

    div-double/2addr p0, v0

    div-double/2addr v2, v0

    mul-double/2addr p0, v2

    const-wide v0, 0x4076d423ddd61975L    # 365.2587564814815

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static hFixedFromLunar(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;Lnet/time4j/calendar/hindu/HinduVariant;)J
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p3

    .line 1298
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v2

    .line 1301
    invoke-static/range {p3 .. p3}, Lnet/time4j/calendar/hindu/HinduVariant;->access$100(Lnet/time4j/calendar/hindu/HinduVariant;)Z

    move-result v3

    const-wide v4, 0x4076d423ddd61975L    # 365.2587564814815

    const-wide v6, -0x3eceb66100000000L    # -1132959.0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    if-eqz v3, :cond_0

    const-wide v10, 0x4076d41a0cf1800aL    # 365.25636

    int-to-double v12, v0

    add-int/lit8 v0, v2, -0x1

    int-to-double v14, v0

    div-double/2addr v14, v8

    add-double/2addr v12, v14

    mul-double/2addr v12, v10

    add-double/2addr v12, v6

    .line 1303
    invoke-static {v12, v13}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSiderealSolarLongitude(D)D

    move-result-wide v6

    goto :goto_0

    :cond_0
    int-to-double v10, v0

    add-int/lit8 v0, v2, -0x1

    int-to-double v12, v0

    div-double/2addr v12, v8

    add-double/2addr v10, v12

    mul-double/2addr v10, v4

    add-double v12, v10, v6

    .line 1306
    invoke-static {v12, v13}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSolarLongitude(D)D

    move-result-wide v6

    :goto_0
    const-wide v10, 0x4076800000000000L    # 360.0

    div-double/2addr v6, v10

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double/2addr v2, v8

    sub-double/2addr v6, v2

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1310
    invoke-static {v6, v7, v8, v9}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v6

    add-double/2addr v6, v2

    mul-double/2addr v6, v4

    sub-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    long-to-double v4, v2

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    add-double/2addr v4, v6

    .line 1311
    invoke-static {v4, v5, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hLunarDayFromMoment(DLnet/time4j/calendar/hindu/HinduVariant;)I

    move-result v0

    .line 1312
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v4

    const/4 v5, 0x3

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    if-le v0, v5, :cond_1

    const/16 v5, 0x1b

    if-ge v0, v5, :cond_1

    goto :goto_2

    .line 1318
    :cond_1
    sget-object v5, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    const-wide/16 v10, 0xf

    sub-long v10, v2, v10

    sget-object v12, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v5, v10, v11, v12}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v10

    invoke-static {v10, v11, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hLunarFromFixed(JLnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v5

    .line 1320
    invoke-virtual {v5}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMonth()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v10

    invoke-virtual {v10}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v11

    if-ne v10, v11, :cond_3

    .line 1321
    invoke-virtual {v5}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMonth()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v5

    invoke-virtual {v5}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0xf

    int-to-double v10, v0

    .line 1325
    invoke-static {v10, v11, v8, v9}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v10

    double-to-int v0, v10

    add-int/lit8 v0, v0, 0xf

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0xf

    int-to-double v10, v0

    .line 1323
    invoke-static {v10, v11, v8, v9}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v10

    double-to-int v0, v10

    add-int/lit8 v0, v0, -0xf

    :goto_2
    int-to-long v10, v4

    add-long/2addr v2, v10

    int-to-long v10, v0

    sub-long/2addr v2, v10

    const-wide/16 v10, 0xe

    add-long/2addr v10, v2

    long-to-double v2, v2

    add-double/2addr v2, v6

    .line 1330
    invoke-static {v2, v3, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hLunarDayFromMoment(DLnet/time4j/calendar/hindu/HinduVariant;)I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0xf

    int-to-double v2, v0

    invoke-static {v2, v3, v8, v9}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-long v2, v0

    sub-long/2addr v10, v2

    :goto_3
    long-to-double v2, v10

    .line 1333
    invoke-static {v2, v3, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSunrise(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hLunarDayFromMoment(DLnet/time4j/calendar/hindu/HinduVariant;)I

    move-result v0

    add-int/lit8 v2, v4, 0x1

    int-to-double v2, v2

    .line 1334
    invoke-static {v2, v3, v8, v9}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v2

    double-to-int v2, v2

    if-nez v2, :cond_4

    const/16 v2, 0x1e

    :cond_4
    const-wide/16 v5, 0x1

    if-eq v0, v4, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_4

    :cond_5
    add-long/2addr v10, v5

    goto :goto_3

    .line 1344
    :cond_6
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/calendar/hindu/HinduDay;->isLeap()Z

    move-result v0

    if-eqz v0, :cond_7

    add-long/2addr v10, v5

    .line 1348
    :cond_7
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    sget-object v1, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v10, v11, v1}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static hFixedFromSolar(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;Lnet/time4j/calendar/hindu/HinduVariant;)J
    .locals 11

    .line 1186
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->getRasi()I

    move-result p1

    .line 1187
    invoke-static {p3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hCritical(Lnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduVariant$LongFunction;

    move-result-object v0

    .line 1188
    invoke-static {p3}, Lnet/time4j/calendar/hindu/HinduVariant;->access$100(Lnet/time4j/calendar/hindu/HinduVariant;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v1, 0x4076d41a0cf1800aL    # 365.25636

    goto :goto_0

    :cond_0
    const-wide v1, 0x4076d423ddd61975L    # 365.2587564814815

    :goto_0
    const-wide/32 v3, -0x1149a2

    int-to-double v5, p0

    add-int/lit8 p0, p1, -0x1

    int-to-double v7, p0

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    mul-double/2addr v1, v5

    .line 1189
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-long v1, v1

    add-long/2addr v1, v3

    .line 1191
    invoke-static {p3}, Lnet/time4j/calendar/hindu/HinduVariant;->access$100(Lnet/time4j/calendar/hindu/HinduVariant;)Z

    move-result p0

    const-wide/16 v3, 0x1

    if-eqz p0, :cond_1

    .line 1192
    :goto_1
    invoke-interface {v0, v1, v2}, Lnet/time4j/calendar/hindu/HinduVariant$LongFunction;->apply(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSiderealZodiac(D)I

    move-result p0

    if-eq p0, p1, :cond_2

    add-long/2addr v1, v3

    goto :goto_1

    .line 1196
    :cond_1
    :goto_2
    invoke-interface {v0, v1, v2}, Lnet/time4j/calendar/hindu/HinduVariant$LongFunction;->apply(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hZodiac(D)I

    move-result p0

    if-eq p0, p1, :cond_2

    add-long/2addr v1, v3

    goto :goto_2

    .line 1201
    :cond_2
    sget-object p0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long p1, p1

    add-long/2addr p1, v1

    sget-object p3, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static hLunarDayFromMoment(DLnet/time4j/calendar/hindu/HinduVariant;)I
    .locals 10

    .line 1085
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->access$100(Lnet/time4j/calendar/hindu/HinduVariant;)Z

    move-result p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p2, :cond_0

    .line 1086
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->toJDE(D)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/calendar/astro/JulianDay;->getValue()D

    move-result-wide v2

    .line 1087
    sget-object p2, Lnet/time4j/calendar/astro/StdSolarCalculator;->CC:Lnet/time4j/calendar/astro/StdSolarCalculator;

    const-string v4, "solar-longitude"

    invoke-virtual {p2, v2, v3, v4}, Lnet/time4j/calendar/astro/StdSolarCalculator;->getFeature(DLjava/lang/String;)D

    move-result-wide v4

    .line 1088
    sget-object p2, Lnet/time4j/calendar/astro/StdSolarCalculator;->CC:Lnet/time4j/calendar/astro/StdSolarCalculator;

    const-string v6, "lunar-longitude"

    invoke-virtual {p2, v2, v3, v6}, Lnet/time4j/calendar/astro/StdSolarCalculator;->getFeature(DLjava/lang/String;)D

    move-result-wide v2

    sub-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    .line 1089
    invoke-static {v2, v3, v4, v5}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v2

    const/4 p2, 0x0

    .line 1090
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->nthNewMoon(I)D

    move-result-wide v6

    sub-double v6, p0, v6

    const-wide v8, 0x403d87d4abed9decL    # 29.530588861

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int p2, v6

    .line 1091
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->nthNewMoon(I)D

    move-result-wide v6

    sub-double/2addr p0, v6

    div-double/2addr p0, v8

    invoke-static {p0, p1, v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide p0

    mul-double/2addr p0, v4

    sub-double v4, v2, p0

    .line 1092
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double p2, v4, v6

    if-lez p2, :cond_1

    move-wide v2, p0

    goto :goto_0

    .line 1094
    :cond_0
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hLunarPhase(D)D

    move-result-wide v2

    :cond_1
    :goto_0
    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    div-double/2addr v2, p0

    .line 1097
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private static hLunarFromFixed(JLnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 13

    .line 1245
    sget-object v0, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, p0, p1, v2}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v2

    long-to-double v7, v2

    .line 1246
    invoke-static {v7, v8, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSunrise(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide v9

    .line 1247
    invoke-static {v9, v10, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hLunarDayFromMoment(DLnet/time4j/calendar/hindu/HinduVariant;)I

    move-result v0

    .line 1248
    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v4

    const-wide/16 v11, 0x1

    sub-long/2addr v2, v11

    long-to-double v2, v2

    .line 1250
    invoke-static {v2, v3, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSunrise(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hLunarDayFromMoment(DLnet/time4j/calendar/hindu/HinduVariant;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1251
    invoke-virtual {v4}, Lnet/time4j/calendar/hindu/HinduDay;->withLeap()Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v0

    move-object v4, v0

    .line 1259
    :cond_0
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->access$100(Lnet/time4j/calendar/hindu/HinduVariant;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1260
    invoke-static {v9, v10}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->toJDE(D)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/astro/JulianDay;->toMoment()Lnet/time4j/Moment;

    move-result-object v0

    .line 1261
    sget-object v2, Lnet/time4j/calendar/astro/MoonPhase;->NEW_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    invoke-virtual {v2, v0}, Lnet/time4j/calendar/astro/MoonPhase;->before(Lnet/time4j/Moment;)Lnet/time4j/Moment;

    move-result-object v2

    invoke-static {v2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->toRataDie(Lnet/time4j/Moment;)D

    move-result-wide v2

    .line 1262
    sget-object v9, Lnet/time4j/calendar/astro/MoonPhase;->NEW_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    invoke-virtual {v9, v0}, Lnet/time4j/calendar/astro/MoonPhase;->atOrAfter(Lnet/time4j/Moment;)Lnet/time4j/Moment;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->toRataDie(Lnet/time4j/Moment;)D

    move-result-wide v9

    .line 1263
    invoke-static {v2, v3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSiderealZodiac(D)I

    move-result v0

    .line 1264
    invoke-static {v9, v10}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSiderealZodiac(D)I

    move-result v2

    goto :goto_0

    .line 1266
    :cond_1
    invoke-static {v9, v10}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hNewMoonBefore(D)D

    move-result-wide v2

    .line 1267
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    const-wide v11, 0x4041800000000000L    # 35.0

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hNewMoonBefore(D)D

    move-result-wide v9

    .line 1268
    invoke-static {v2, v3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hZodiac(D)I

    move-result v0

    .line 1269
    invoke-static {v9, v10}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hZodiac(D)I

    move-result v2

    :goto_0
    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 1273
    :goto_1
    invoke-static {v3}, Lnet/time4j/calendar/hindu/HinduMonth;->ofLunisolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v9

    if-ne v2, v0, :cond_3

    .line 1276
    invoke-virtual {v9}, Lnet/time4j/calendar/hindu/HinduMonth;->withLeap()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    move-object v9, v0

    :cond_3
    const/4 v0, 0x2

    if-gt v3, v0, :cond_4

    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v7, v2

    .line 1279
    :cond_4
    invoke-static {v7, v8, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hCalendarYear(DLnet/time4j/calendar/hindu/HinduVariant;)I

    move-result v2

    .line 1281
    new-instance v7, Lnet/time4j/calendar/hindu/HinduCalendar;

    move-object v0, v7

    move-object v1, p2

    move-object v3, v9

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/hindu/HinduCalendar;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;J)V

    return-object v7
.end method

.method private static hLunarLongitude(D)D
    .locals 10

    const-wide v2, 0x403b52593ce8b205L    # 27.321674162683866

    const-wide v4, 0x3fb6c16c16c16c17L    # 0.08888888888888889

    const-wide v6, 0x403b8dfa2203ae34L    # 27.554597974680476

    const-wide v8, 0x3f85555555555555L    # 0.010416666666666666

    move-wide v0, p0

    .line 1072
    invoke-static/range {v0 .. v9}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hTruePosition(DDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static hLunarPhase(D)D
    .locals 2

    .line 1076
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hLunarLongitude(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSolarLongitude(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    invoke-static {v0, v1, p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static hMeanPosition(DD)D
    .locals 2

    const-wide v0, -0x3d9b35479865c000L    # -7.14403429586E11

    sub-double/2addr p0, v0

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 1002
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide p0

    const-wide p2, 0x4076800000000000L    # 360.0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private static hNewMoonBefore(D)D
    .locals 6

    .line 1105
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hLunarPhase(D)D

    move-result-wide v0

    const-wide v2, 0x403d87d49c9407a4L    # 29.53058794607172

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    sub-double v0, p0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v2

    add-double/2addr v0, v2

    .line 1106
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {v4, v5, p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->binarySearchLunarPhase(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static hPrecession(D)D
    .locals 10

    .line 1033
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->toJDE(D)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/calendar/astro/JulianDay;->getCenturyJ2000()D

    move-result-wide p0

    const-wide v0, 0x3e51e54c672874dbL    # 1.6666666666666667E-8

    mul-double/2addr v0, p0

    const-wide v2, -0x411cc3b36073ae65L    # -9.172222222222223E-6

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide v2, 0x3f8abd4b1fd0df51L    # 0.01305636111111111

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide v2, 0x4076800000000000L    # 360.0

    .line 1037
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v0

    const-wide v4, 0x3ee49943f167e682L    # 9.822222222222223E-6

    mul-double/2addr v4, p0

    const-wide v6, -0x403112ce5ca82feeL    # -0.24161358333333333

    add-double/2addr v4, v6

    mul-double/2addr v4, p0

    const-wide v6, 0x4065dc0b5675579bL    # 174.876384

    add-double/2addr v4, v6

    .line 1040
    invoke-static {v4, v5, v2, v3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v4

    const/4 v6, -0x1

    int-to-double v6, v6

    const-wide v8, 0x3ed92a737110e454L    # 6.0E-6

    mul-double/2addr v6, v8

    const-wide v8, 0x40ac200000000000L    # 3600.0

    div-double/2addr v6, v8

    mul-double/2addr v6, p0

    const-wide v8, 0x3f343a3db9b6cf05L    # 3.0864722222222223E-4

    add-double/2addr v6, v8

    mul-double/2addr v6, p0

    const-wide v8, 0x3ff659fe8df81c35L    # 1.3969712777777776

    add-double/2addr v6, v8

    mul-double/2addr v6, p0

    .line 1043
    invoke-static {v6, v7, v2, v3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide p0

    .line 1048
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    .line 1049
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 1050
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    add-double/2addr p0, v4

    sub-double/2addr p0, v0

    .line 1051
    invoke-static {p0, p1, v2, v3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static hRisingSign(D)D
    .locals 4

    .line 1388
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hTropicalLongitude(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 1389
    sget-object p1, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->RISING_SIGN_FACTORS:[D

    int-to-double v0, p0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v0

    double-to-int p0, v0

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method private static hSiderealSolarLongitude(D)D
    .locals 4

    .line 1020
    sget-object v0, Lnet/time4j/calendar/astro/StdSolarCalculator;->CC:Lnet/time4j/calendar/astro/StdSolarCalculator;

    .line 1021
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->toJDE(D)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/astro/JulianDay;->getValue()D

    move-result-wide v1

    const-string v3, "solar-longitude"

    invoke-virtual {v0, v1, v2, v3}, Lnet/time4j/calendar/astro/StdSolarCalculator;->getFeature(DLjava/lang/String;)D

    move-result-wide v0

    .line 1022
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hPrecession(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide p0, 0x4075022d5ea5a095L    # 336.1360765905204

    add-double/2addr v0, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    .line 1020
    invoke-static {v0, v1, p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static hSiderealZodiac(D)I
    .locals 2

    .line 1068
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSiderealSolarLongitude(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private static hSine(D)D
    .locals 6

    const-wide/high16 v0, 0x400e000000000000L    # 3.75

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 981
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v2

    .line 982
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSineTable(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    sub-double/2addr v0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSineTable(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    add-double/2addr v4, v0

    return-wide v4
.end method

.method private static hSineTable(D)D
    .locals 8

    const-wide/high16 v0, 0x400e000000000000L    # 3.75

    mul-double/2addr p0, v0

    .line 974
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide v0, 0x40aadc0000000000L    # 3438.0

    mul-double/2addr p0, v0

    .line 975
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    const-wide v4, 0x3fcb851eb851eb85L    # 0.215

    mul-double/2addr v2, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x409ad00000000000L    # 1716.0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr p0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v2

    .line 976
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static hSolarFromFixed(JLnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 16

    .line 1145
    invoke-static/range {p2 .. p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hCritical(Lnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduVariant$LongFunction;

    move-result-object v0

    .line 1146
    sget-object v1, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    move-wide/from16 v8, p0

    invoke-virtual {v1, v8, v9, v2}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v1

    .line 1147
    invoke-interface {v0, v1, v2}, Lnet/time4j/calendar/hindu/HinduVariant$LongFunction;->apply(J)D

    move-result-wide v3

    move-object/from16 v5, p2

    .line 1148
    invoke-static {v3, v4, v5}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hCalendarYear(DLnet/time4j/calendar/hindu/HinduVariant;)I

    move-result v6

    .line 1153
    invoke-static/range {p2 .. p2}, Lnet/time4j/calendar/hindu/HinduVariant;->access$100(Lnet/time4j/calendar/hindu/HinduVariant;)Z

    move-result v7

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide/16 v12, 0x3

    const-wide/16 v14, 0x1

    if-eqz v7, :cond_0

    .line 1154
    invoke-static {v3, v4}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSiderealZodiac(D)I

    move-result v7

    sub-long v12, v1, v12

    .line 1155
    invoke-static {v3, v4}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSiderealSolarLongitude(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    invoke-static {v3, v4, v10, v11}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-long v3, v3

    sub-long/2addr v12, v3

    .line 1157
    :goto_0
    invoke-interface {v0, v12, v13}, Lnet/time4j/calendar/hindu/HinduVariant$LongFunction;->apply(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSiderealZodiac(D)I

    move-result v3

    if-eq v3, v7, :cond_1

    add-long/2addr v12, v14

    goto :goto_0

    .line 1161
    :cond_0
    invoke-static {v3, v4}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hZodiac(D)I

    move-result v7

    sub-long v12, v1, v12

    .line 1162
    invoke-static {v3, v4}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSolarLongitude(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    invoke-static {v3, v4, v10, v11}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-long v3, v3

    sub-long/2addr v12, v3

    .line 1164
    :goto_1
    invoke-interface {v0, v12, v13}, Lnet/time4j/calendar/hindu/HinduVariant$LongFunction;->apply(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hZodiac(D)I

    move-result v3

    if-eq v3, v7, :cond_1

    add-long/2addr v12, v14

    goto :goto_1

    .line 1169
    :cond_1
    new-instance v0, Lnet/time4j/calendar/hindu/HinduCalendar;

    .line 1172
    invoke-static {v7}, Lnet/time4j/calendar/hindu/HinduMonth;->ofSolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v7

    sub-long/2addr v1, v12

    add-long/2addr v1, v14

    long-to-int v1, v1

    .line 1173
    invoke-static {v1}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v1

    move-object v3, v0

    move-object/from16 v4, p2

    move v5, v6

    move-object v6, v7

    move-object v7, v1

    move-wide/from16 v8, p0

    invoke-direct/range {v3 .. v9}, Lnet/time4j/calendar/hindu/HinduCalendar;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;J)V

    return-object v0
.end method

.method static hSolarLongitude(D)D
    .locals 10

    const-wide v2, 0x4076d423ddd61975L    # 365.2587564814815

    const-wide v4, 0x3fa3e93e93e93e94L    # 0.03888888888888889

    const-wide v6, 0x4076d42400259a51L    # 365.25878920258134

    const-wide v8, 0x3f98618618618618L    # 0.023809523809523808

    move-wide v0, p0

    .line 1028
    invoke-static/range {v0 .. v9}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hTruePosition(DDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static hSolarSiderealDifference(D)D
    .locals 2

    .line 1363
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hDailyMotion(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hRisingSign(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private static hStandardFromSundial(DLnet/time4j/calendar/hindu/HinduVariant;)D
    .locals 10

    .line 1446
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double/2addr p0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, p0

    .line 1448
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_0

    sub-double v2, v0, v3

    .line 1452
    invoke-static {v2, v3, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSunset(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide v2

    .line 1453
    invoke-static {v0, v1, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSunrise(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide v0

    const-wide/high16 v4, -0x4030000000000000L    # -0.25

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    .line 1456
    invoke-static {v0, v1, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSunset(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide v5

    add-double/2addr v0, v3

    .line 1457
    invoke-static {v0, v1, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSunrise(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    move-wide v8, v2

    move-wide v2, v5

    move-wide v4, v8

    goto :goto_0

    .line 1460
    :cond_1
    invoke-static {v0, v1, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSunrise(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide v2

    .line 1461
    invoke-static {v0, v1, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSunset(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide v0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    :goto_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v2

    mul-double/2addr v0, v6

    sub-double/2addr p0, v4

    mul-double/2addr v0, p0

    add-double/2addr v2, v0

    return-wide v2
.end method

.method private static hSunrise(DLnet/time4j/calendar/hindu/HinduVariant;)D
    .locals 10

    .line 1396
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->access$100(Lnet/time4j/calendar/hindu/HinduVariant;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->getLocation()Lnet/time4j/calendar/astro/GeoLocation;

    move-result-object v0

    .line 1398
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    sget-object v1, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    invoke-static {p0, p1, v1}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v3

    .line 1399
    sget-object v2, Lnet/time4j/calendar/astro/StdSolarCalculator;->CC:Lnet/time4j/calendar/astro/StdSolarCalculator;

    .line 1402
    invoke-interface {v0}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v4

    .line 1403
    invoke-interface {v0}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v6

    const-wide p0, 0x4056800000000000L    # 90.0

    .line 1404
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->access$500(Lnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide v0

    add-double v8, v0, p0

    .line 1400
    invoke-virtual/range {v2 .. v9}, Lnet/time4j/calendar/astro/StdSolarCalculator;->sunrise(Lnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;

    move-result-object p0

    .line 1406
    invoke-virtual {p0}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v0, 0x40d1c2199999999aL    # 18184.4

    add-double/2addr p0, v0

    const-wide v0, 0x40f5180000000000L    # 86400.0

    div-double/2addr p0, v0

    .line 1407
    sget-object p2, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    sget-object v2, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p2, v0, v1, v2}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    long-to-double v0, v0

    add-double/2addr v0, p0

    .line 1408
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    add-double v2, p0, v0

    .line 1410
    sget-object v4, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v4}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->getLocation()Lnet/time4j/calendar/astro/GeoLocation;

    move-result-object v6

    invoke-interface {v6}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 1411
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->getLocation()Lnet/time4j/calendar/astro/GeoLocation;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hAscensionalDifference(DLnet/time4j/calendar/astro/GeoLocation;)D

    move-result-wide v4

    .line 1412
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSolarSiderealDifference(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    add-double/2addr v6, v4

    .line 1413
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hEquationOfTime(D)D

    move-result-wide p0

    sub-double/2addr v2, p0

    const-wide p0, 0x3f66b1845af38709L    # 0.002770193582919304

    mul-double/2addr v6, p0

    add-double/2addr v2, v6

    return-wide v2
.end method

.method private static hSunset(DLnet/time4j/calendar/hindu/HinduVariant;)D
    .locals 10

    .line 1421
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->access$100(Lnet/time4j/calendar/hindu/HinduVariant;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->getLocation()Lnet/time4j/calendar/astro/GeoLocation;

    move-result-object v0

    .line 1423
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    sget-object v1, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    invoke-static {p0, p1, v1}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v3

    .line 1424
    sget-object v2, Lnet/time4j/calendar/astro/StdSolarCalculator;->CC:Lnet/time4j/calendar/astro/StdSolarCalculator;

    .line 1427
    invoke-interface {v0}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v4

    .line 1428
    invoke-interface {v0}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v6

    const-wide p0, 0x4056800000000000L    # 90.0

    .line 1429
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->access$500(Lnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide v0

    add-double v8, v0, p0

    .line 1425
    invoke-virtual/range {v2 .. v9}, Lnet/time4j/calendar/astro/StdSolarCalculator;->sunset(Lnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;

    move-result-object p0

    .line 1431
    invoke-virtual {p0}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v0, 0x40d1c2199999999aL    # 18184.4

    add-double/2addr p0, v0

    const-wide v0, 0x40f5180000000000L    # 86400.0

    div-double/2addr p0, v0

    .line 1432
    sget-object p2, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    sget-object v2, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p2, v0, v1, v2}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    long-to-double v0, v0

    add-double/2addr v0, p0

    .line 1433
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    add-double v2, p0, v0

    .line 1435
    sget-object v4, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v4}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->getLocation()Lnet/time4j/calendar/astro/GeoLocation;

    move-result-object v6

    invoke-interface {v6}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 1436
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->getLocation()Lnet/time4j/calendar/astro/GeoLocation;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hAscensionalDifference(DLnet/time4j/calendar/astro/GeoLocation;)D

    move-result-wide v4

    .line 1437
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSolarSiderealDifference(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    sub-double/2addr v6, v4

    .line 1438
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hEquationOfTime(D)D

    move-result-wide p0

    sub-double/2addr v2, p0

    const-wide p0, 0x3f66b1845af38709L    # 0.002770193582919304

    mul-double/2addr v6, p0

    add-double/2addr v2, v6

    return-wide v2
.end method

.method private static hTropicalLongitude(D)D
    .locals 4

    const-wide v0, -0x3eceb66100000000L    # -1132959.0

    sub-double v0, p0, v0

    const-wide v2, 0x3e99849c1daa06d5L    # 3.80247937727211E-7

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1374
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide v0

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405b000000000000L    # 108.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x403b000000000000L    # 27.0

    sub-double/2addr v2, v0

    .line 1375
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSolarLongitude(D)D

    move-result-wide p0

    sub-double/2addr p0, v2

    const-wide v0, 0x4076800000000000L    # 360.0

    invoke-static {p0, p1, v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static hTruePosition(DDDDD)D
    .locals 0

    .line 1012
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hMeanPosition(DD)D

    move-result-wide p2

    .line 1013
    invoke-static {p0, p1, p6, p7}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hMeanPosition(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSine(D)D

    move-result-wide p0

    .line 1014
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p6

    mul-double/2addr p6, p8

    mul-double/2addr p6, p4

    sub-double/2addr p4, p6

    mul-double/2addr p0, p4

    .line 1015
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hArcSin(D)D

    move-result-wide p0

    sub-double/2addr p2, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    .line 1016
    invoke-static {p2, p3, p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->modulo(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static hZodiac(D)I
    .locals 2

    .line 1064
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSolarLongitude(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private static nthNewMoon(I)D
    .locals 2

    .line 1101
    sget-object v0, Lnet/time4j/calendar/astro/MoonPhase;->NEW_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    add-int/lit16 p0, p0, -0x6094

    invoke-virtual {v0, p0}, Lnet/time4j/calendar/astro/MoonPhase;->atLunation(I)Lnet/time4j/Moment;

    move-result-object p0

    invoke-static {p0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->toRataDie(Lnet/time4j/Moment;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static prevMonth(Lnet/time4j/calendar/hindu/HinduMonth;I)Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 0

    .line 962
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result p0

    sub-int/2addr p0, p1

    if-gtz p0, :cond_0

    add-int/lit8 p0, p0, 0xc

    .line 968
    :cond_0
    invoke-static {p0}, Lnet/time4j/calendar/hindu/HinduMonth;->ofLunisolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p0

    return-object p0
.end method

.method private static toJDE(D)Lnet/time4j/calendar/astro/JulianDay;
    .locals 2

    const-wide v0, 0x413a445000000000L    # 1721424.0

    add-double/2addr p0, v0

    const-wide v0, 0x41429ec580000000L    # 2440587.0

    sub-double/2addr p0, v0

    const-wide v0, 0x40f5180000000000L    # 86400.0

    mul-double/2addr p0, v0

    .line 1055
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    .line 1056
    sget-object v0, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {p0, p1, v0}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p0

    invoke-static {p0}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object p0

    return-object p0
.end method

.method private static toRataDie(Lnet/time4j/Moment;)D
    .locals 4

    .line 1060
    invoke-virtual {p0}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x40f5180000000000L    # 86400.0

    div-double/2addr v0, v2

    const-wide v2, 0x41429ec580000000L    # 2440587.0

    add-double/2addr v0, v2

    const-wide v2, 0x413a445000000000L    # 1721424.0

    sub-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 8

    .line 858
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    .line 861
    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant$1;->$SwitchMap$net$time4j$calendar$hindu$HinduRule:[I

    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->getRule()Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 891
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->getRule()Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduRule;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 881
    :pswitch_0
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v0

    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->toAmanta()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->prevMonth(Lnet/time4j/calendar/hindu/HinduMonth;I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lnet/time4j/calendar/hindu/HinduCS;->isExpunged(ILnet/time4j/calendar/hindu/HinduMonth;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 884
    invoke-static {p2, v0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->prevMonth(Lnet/time4j/calendar/hindu/HinduMonth;I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    goto :goto_1

    .line 886
    :cond_1
    invoke-static {p2, v2}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->prevMonth(Lnet/time4j/calendar/hindu/HinduMonth;I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, p2

    .line 888
    :goto_1
    invoke-static {p1, v0, p3, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hFixedFromLunar(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;Lnet/time4j/calendar/hindu/HinduVariant;)J

    move-result-wide v2

    goto :goto_2

    .line 869
    :pswitch_1
    invoke-static {p1, p2, p3, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hFixedFromLunar(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;Lnet/time4j/calendar/hindu/HinduVariant;)J

    move-result-wide v2

    goto :goto_2

    .line 866
    :pswitch_2
    invoke-static {p1, p2, p3, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hFixedFromSolar(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;Lnet/time4j/calendar/hindu/HinduVariant;)J

    move-result-wide v2

    :goto_2
    move-wide v5, v2

    .line 894
    new-instance v7, Lnet/time4j/calendar/hindu/HinduCalendar;

    move-object v0, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/hindu/HinduCalendar;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;J)V

    return-object v7

    .line 874
    :pswitch_3
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v0

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->getFirstMonthOfYear()I

    move-result v2

    if-ge v0, v2, :cond_3

    add-int/lit8 v0, p1, 0x1

    goto :goto_3

    :cond_3
    move v0, p1

    .line 877
    :goto_3
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->toAmanta()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 878
    new-instance v7, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v5

    move-object v0, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/hindu/HinduCalendar;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;J)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method create(J)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 8

    .line 814
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    .line 816
    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant$1;->$SwitchMap$net$time4j$calendar$hindu$HinduRule:[I

    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->getRule()Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 852
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->getRule()Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduRule;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 833
    :pswitch_0
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->toAmanta()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    .line 834
    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v2

    .line 837
    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDayOfMonth()Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    const-wide/16 v3, 0x14

    add-long/2addr v3, p1

    .line 838
    invoke-virtual {v0, v3, v4}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMonth()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v0

    goto :goto_0

    .line 839
    :cond_0
    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMonth()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v0

    .line 836
    :goto_0
    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->ofLunisolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    .line 841
    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMonth()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 842
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->withLeap()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    :cond_1
    move-object v3, v0

    .line 844
    new-instance v7, Lnet/time4j/calendar/hindu/HinduCalendar;

    .line 846
    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduCalendar;->getExpiredYearOfKaliYuga()I

    move-result v4

    .line 848
    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDayOfMonth()Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v5

    move-object v0, v7

    move v2, v4

    move-object v4, v5

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/hindu/HinduCalendar;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;J)V

    return-object v7

    .line 823
    :pswitch_1
    invoke-static {p1, p2, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hLunarFromFixed(JLnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1

    .line 821
    :pswitch_2
    invoke-static {p1, p2, v1}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hSolarFromFixed(JLnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1

    .line 826
    :pswitch_3
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->toAmanta()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getExpiredYearOfKaliYuga()I

    move-result v2

    .line 828
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMonth()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v3

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->getFirstMonthOfYear()I

    move-result v4

    if-ge v3, v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 831
    :cond_2
    new-instance v7, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMonth()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v3

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDayOfMonth()Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v4

    move-object v0, v7

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/hindu/HinduCalendar;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;J)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaximumSinceUTC()J
    .locals 4

    .line 939
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->max:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/16 v0, 0x1770

    .line 940
    invoke-direct {p0, v0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->createNewYear(I)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 941
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->isPurnimanta()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withFirstDayOfMonth()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 944
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->max:J

    .line 946
    :cond_1
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->max:J

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 4

    .line 925
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->min:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 927
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isPurnimanta()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b1

    .line 928
    invoke-direct {p0, v0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->createNewYear(I)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withFirstDayOfMonth()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b0

    .line 930
    invoke-direct {p0, v0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->createNewYear(I)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 932
    :goto_0
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->min:J

    .line 934
    :cond_1
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->min:J

    return-wide v0
.end method

.method isValid(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x4b0

    if-lt p1, v1, :cond_7

    const/16 v1, 0x176f

    if-gt p1, v1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto :goto_2

    .line 904
    :cond_0
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->isSolar()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Lnet/time4j/calendar/hindu/HinduDay;->isLeap()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v0

    .line 906
    :cond_2
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->isLunisolar()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_3

    return v0

    .line 911
    :cond_3
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->getRule()Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object v0

    .line 913
    sget-object v1, Lnet/time4j/calendar/hindu/HinduRule;->AMANTA_ASHADHA:Lnet/time4j/calendar/hindu/HinduRule;

    if-eq v0, v1, :cond_5

    sget-object v1, Lnet/time4j/calendar/hindu/HinduRule;->AMANTA_KARTIKA:Lnet/time4j/calendar/hindu/HinduRule;

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, p0

    goto :goto_1

    .line 914
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v0

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->getFirstMonthOfYear()I

    move-result v1

    if-ge v0, v1, :cond_6

    add-int/lit8 p1, p1, 0x1

    .line 917
    :cond_6
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->toAmanta()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    .line 920
    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCS;->isExpunged(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_7
    :goto_2
    return v0
.end method
