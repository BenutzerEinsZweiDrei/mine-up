.class public final enum Lnet/time4j/calendar/astro/MoonPhase;
.super Ljava/lang/Enum;
.source "MoonPhase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/astro/MoonPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/astro/MoonPhase;

.field private static final FACTORS:[I

.field public static final enum FIRST_QUARTER:Lnet/time4j/calendar/astro/MoonPhase;

.field public static final enum FULL_MOON:Lnet/time4j/calendar/astro/MoonPhase;

.field public static final enum LAST_QUARTER:Lnet/time4j/calendar/astro/MoonPhase;

.field private static final MEAN_SYNODIC_MONTH:D = 29.530588861

.field public static final enum NEW_MOON:Lnet/time4j/calendar/astro/MoonPhase;

.field private static final V_FULL:[D

.field private static final V_NEW:[D

.field private static final V_QUARTER:[D

.field private static final W_NEW_FULL:[I

.field private static final W_QUARTER:[I

.field private static final X_NEW_FULL:[I

.field private static final X_QUARTER:[I

.field private static final Y_NEW_FULL:[I

.field private static final Y_QUARTER:[I

.field private static final ZERO_REF:Lnet/time4j/Moment;

.field private static final Z_NEW_FULL:[I

.field private static final Z_QUARTER:[I


# instance fields
.field private final transient phase:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 51
    new-instance v0, Lnet/time4j/calendar/astro/MoonPhase;

    const-string v1, "NEW_MOON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/time4j/calendar/astro/MoonPhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/time4j/calendar/astro/MoonPhase;->NEW_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    .line 59
    new-instance v1, Lnet/time4j/calendar/astro/MoonPhase;

    const-string v3, "FIRST_QUARTER"

    const/4 v4, 0x1

    const/16 v5, 0x5a

    invoke-direct {v1, v3, v4, v5}, Lnet/time4j/calendar/astro/MoonPhase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/time4j/calendar/astro/MoonPhase;->FIRST_QUARTER:Lnet/time4j/calendar/astro/MoonPhase;

    .line 67
    new-instance v3, Lnet/time4j/calendar/astro/MoonPhase;

    const-string v5, "FULL_MOON"

    const/4 v6, 0x2

    const/16 v7, 0xb4

    invoke-direct {v3, v5, v6, v7}, Lnet/time4j/calendar/astro/MoonPhase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/time4j/calendar/astro/MoonPhase;->FULL_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    .line 75
    new-instance v5, Lnet/time4j/calendar/astro/MoonPhase;

    const-string v7, "LAST_QUARTER"

    const/4 v8, 0x3

    const/16 v9, 0x10e

    invoke-direct {v5, v7, v8, v9}, Lnet/time4j/calendar/astro/MoonPhase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/time4j/calendar/astro/MoonPhase;->LAST_QUARTER:Lnet/time4j/calendar/astro/MoonPhase;

    const/4 v7, 0x4

    new-array v9, v7, [Lnet/time4j/calendar/astro/MoonPhase;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    .line 41
    sput-object v9, Lnet/time4j/calendar/astro/MoonPhase;->$VALUES:[Lnet/time4j/calendar/astro/MoonPhase;

    new-array v0, v7, [I

    .line 77
    fill-array-data v0, :array_0

    sput-object v0, Lnet/time4j/calendar/astro/MoonPhase;->FACTORS:[I

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    const/4 v3, 0x6

    const/16 v4, 0x12

    const/16 v5, 0xd

    const/16 v6, 0x2a

    .line 79
    invoke-static/range {v1 .. v6}, Lnet/time4j/PlainTimestamp;->of(IIIIII)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->atUTC()Lnet/time4j/Moment;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/astro/MoonPhase;->ZERO_REF:Lnet/time4j/Moment;

    const/16 v0, 0x18

    new-array v1, v0, [I

    .line 81
    fill-array-data v1, :array_1

    sput-object v1, Lnet/time4j/calendar/astro/MoonPhase;->W_NEW_FULL:[I

    new-array v1, v0, [I

    .line 84
    fill-array-data v1, :array_2

    sput-object v1, Lnet/time4j/calendar/astro/MoonPhase;->W_QUARTER:[I

    new-array v1, v0, [I

    .line 88
    fill-array-data v1, :array_3

    sput-object v1, Lnet/time4j/calendar/astro/MoonPhase;->X_NEW_FULL:[I

    new-array v1, v0, [I

    .line 91
    fill-array-data v1, :array_4

    sput-object v1, Lnet/time4j/calendar/astro/MoonPhase;->X_QUARTER:[I

    new-array v1, v0, [I

    .line 95
    fill-array-data v1, :array_5

    sput-object v1, Lnet/time4j/calendar/astro/MoonPhase;->Y_NEW_FULL:[I

    new-array v1, v0, [I

    .line 98
    fill-array-data v1, :array_6

    sput-object v1, Lnet/time4j/calendar/astro/MoonPhase;->Y_QUARTER:[I

    new-array v1, v0, [I

    .line 102
    fill-array-data v1, :array_7

    sput-object v1, Lnet/time4j/calendar/astro/MoonPhase;->Z_NEW_FULL:[I

    new-array v1, v0, [I

    .line 105
    fill-array-data v1, :array_8

    sput-object v1, Lnet/time4j/calendar/astro/MoonPhase;->Z_QUARTER:[I

    new-array v1, v0, [D

    .line 109
    fill-array-data v1, :array_9

    sput-object v1, Lnet/time4j/calendar/astro/MoonPhase;->V_NEW:[D

    new-array v1, v0, [D

    .line 113
    fill-array-data v1, :array_a

    sput-object v1, Lnet/time4j/calendar/astro/MoonPhase;->V_FULL:[D

    new-array v0, v0, [D

    .line 117
    fill-array-data v0, :array_b

    sput-object v0, Lnet/time4j/calendar/astro/MoonPhase;->V_QUARTER:[D

    return-void

    :array_0
    .array-data 4
        0x64
        0x3e8
        0x2710
        0x186a0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x1
        0x1
        0x2
        0x0
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x2
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        -0x1
        0x1
        0x2
        0x0
        0x0
        0x1
        0x0
        0x1
        0x1
        -0x1
        0x2
        0x0
        0x3
        0x1
        0x0
        0x1
        -0x1
        -0x1
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        0x0
        -0x1
        0x2
        0x0
        0x0
        0x0
        -0x1
        0x1
        0x1
        0x2
        0x1
        -0x1
        0x0
        0x1
        -0x2
        0x1
        0x3
        0x0
        -0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
        0x2
        0x0
        0x1
        0x1
        0x0
        0x1
        0x1
        0x2
        0x3
        0x0
        0x0
        0x2
        0x1
        0x2
        0x0
        0x1
        0x2
        0x1
        0x1
        0x1
        0x3
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x0
        0x1
        0x2
        0x0
        0x1
        0x0
        0x1
        0x1
        0x3
        0x2
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x1
        0x1
        0x1
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        -0x2
        0x2
        0x0
        0x0
        0x2
        -0x2
        0x0
        0x0
        -0x2
        0x0
        -0x2
        0x2
        0x2
        0x2
        -0x2
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        -0x2
        0x2
        0x0
        0x0
        0x2
        -0x2
        0x0
        0x0
        -0x2
        0x2
        0x2
        0x0
        -0x2
        0x0
        -0x2
        0x2
        0x0
    .end array-data

    :array_9
    .array-data 8
        -0x4025f06f69446738L    # -0.4072
        0x3fc61187e7c06e1aL    # 0.17241
        0x3f907746887a8d65L    # 0.01608
        0x3f85475a31a4bdbaL    # 0.01039
        0x3f7e44fa05143bf7L    # 0.00739
        -0x408af251c193b3a7L    # -0.00514
        0x3f610a137f38c543L    # 0.00208
        -0x40add052934acaffL    # -0.00111
        -0x40bd527e5215768aL    # -5.7E-4
        0x3f42599ed7c6fbd2L    # 5.6E-4
        -0x40c47991bc558644L    # -4.2E-4
        0x3f3b866e43aa79bcL    # 4.2E-4
        0x3f38e757928e0c9eL    # 3.8E-4
        -0x40d08aefb2aae297L    # -2.4E-4
        -0x40eda6612839042eL    # -7.0E-5
        0x3f04f8b588e368f1L    # 4.0E-5
        0x3f04f8b588e368f1L    # 4.0E-5
        0x3eff75104d551d69L    # 3.0E-5
        0x3eff75104d551d69L    # 3.0E-5
        -0x41008aefb2aae297L    # -3.0E-5
        0x3eff75104d551d69L    # 3.0E-5
        -0x410b074a771c970fL    # -2.0E-5
        -0x410b074a771c970fL    # -2.0E-5
        0x3ef4f8b588e368f1L    # 2.0E-5
    .end array-data

    :array_a
    .array-data 8
        -0x402601cd5f99c38bL    # -0.40614
        0x3fc62584f4c6e6daL    # 0.17302
        0x3f90870110a137f4L    # 0.01614
        0x3f855c52e72da123L    # 0.01043
        0x3f7e108c3f3e0371L    # 0.00734
        -0x408ae7d566cf41f2L    # -0.00515
        0x3f611f0c34c1a8acL    # 0.00209
        -0x40add052934acaffL    # -0.00111
        -0x40bd527e5215768aL    # -5.7E-4
        0x3f42599ed7c6fbd2L    # 5.6E-4
        -0x40c47991bc558644L    # -4.2E-4
        0x3f3b866e43aa79bcL    # 4.2E-4
        0x3f38e757928e0c9eL    # 3.8E-4
        -0x40d08aefb2aae297L    # -2.4E-4
        -0x40eda6612839042eL    # -7.0E-5
        0x3f04f8b588e368f1L    # 4.0E-5
        0x3f04f8b588e368f1L    # 4.0E-5
        0x3eff75104d551d69L    # 3.0E-5
        0x3eff75104d551d69L    # 3.0E-5
        -0x41008aefb2aae297L    # -3.0E-5
        0x3eff75104d551d69L    # 3.0E-5
        -0x410b074a771c970fL    # -2.0E-5
        -0x410b074a771c970fL    # -2.0E-5
        0x3ef4f8b588e368f1L    # 2.0E-5
    .end array-data

    :array_b
    .array-data 8
        -0x401be757928e0c9eL    # -0.62801
        0x3fc5faebc408d8edL    # 0.17172
        -0x4077c5ac471b4784L    # -0.01183
        0x3f81a75cd0bb6ed6L    # 0.00862
        0x3f807746887a8d65L    # 0.00804
        0x3f729888f861a60dL    # 0.00454
        0x3f60b630a91537a0L    # 0.00204
        -0x40a28240b780346eL    # -0.0018
        -0x40b90ff972474539L    # -7.0E-4
        -0x40c5c91d14e3bcd3L    # -4.0E-4
        -0x40c9b7bf1e8e6080L    # -3.4E-4
        0x3f34f8b588e368f1L    # 3.2E-4
        0x3f34f8b588e368f1L    # 3.2E-4
        -0x40cda6612839042eL    # -2.8E-4
        0x3f31b1d92b7fe08bL    # 2.7E-4
        -0x40f5c91d14e3bcd3L    # -5.0E-5
        0x3f04f8b588e368f1L    # 4.0E-5
        -0x40fb074a771c970fL    # -4.0E-5
        0x3f04f8b588e368f1L    # 4.0E-5
        0x3eff75104d551d69L    # 3.0E-5
        0x3eff75104d551d69L    # 3.0E-5
        0x3ef4f8b588e368f1L    # 2.0E-5
        0x3ef4f8b588e368f1L    # 2.0E-5
        -0x410b074a771c970fL    # -2.0E-5
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lnet/time4j/calendar/astro/MoonPhase;->phase:I

    return-void
.end method

.method private static corrQuarter(DDDD)D
    .locals 4

    const-wide v0, 0x3f38e757928e0c9eL    # 3.8E-4

    mul-double/2addr p0, v0

    .line 534
    invoke-static {p2, p3}, Lnet/time4j/calendar/astro/MoonPhase;->cos(D)D

    move-result-wide v0

    mul-double/2addr p0, v0

    const-wide v0, 0x3f691148fd9fd36fL    # 0.00306

    sub-double/2addr v0, p0

    .line 535
    invoke-static {p4, p5}, Lnet/time4j/calendar/astro/MoonPhase;->cos(D)D

    move-result-wide p0

    const-wide v2, 0x3f310a137f38c543L    # 2.6E-4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    sub-double p0, p4, p2

    .line 536
    invoke-static {p0, p1}, Lnet/time4j/calendar/astro/MoonPhase;->cos(D)D

    move-result-wide p0

    const-wide v2, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr p0, v2

    sub-double/2addr v0, p0

    add-double/2addr p4, p2

    .line 537
    invoke-static {p4, p5}, Lnet/time4j/calendar/astro/MoonPhase;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    mul-double/2addr p6, p0

    .line 538
    invoke-static {p6, p7}, Lnet/time4j/calendar/astro/MoonPhase;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static cos(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    .line 550
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private getEstimatedLunations(Lnet/time4j/Moment;)I
    .locals 6

    .line 493
    sget-object v0, Lnet/time4j/calendar/astro/MoonPhase;->ZERO_REF:Lnet/time4j/Moment;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 494
    invoke-virtual {v0, p1, v1}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x403d87d4abed9decL    # 29.530588861

    div-double/2addr v0, v2

    iget p1, p0, Lnet/time4j/calendar/astro/MoonPhase;->phase:I

    int-to-double v2, p1

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 493
    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p1

    return p1
.end method

.method public static getIllumination(Lnet/time4j/Moment;)D
    .locals 2

    const/4 v0, 0x0

    .line 422
    invoke-static {p0, v0}, Lnet/time4j/calendar/astro/MoonPhase;->getIllumination(Lnet/time4j/Moment;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getIllumination(Lnet/time4j/Moment;I)D
    .locals 14

    .line 460
    invoke-static {p0}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/calendar/astro/JulianDay;->getCenturyJ2000()D

    move-result-wide v0

    .line 463
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanElongation(D)D

    move-result-wide v2

    .line 466
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanAnomalyOfSun(D)D

    move-result-wide v4

    .line 469
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanAnomalyOfMoon(D)D

    move-result-wide v0

    const-wide v6, 0x4066800000000000L    # 180.0

    sub-double/2addr v6, v2

    .line 473
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPhase;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x401927ef9db22d0eL    # 6.289

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    .line 474
    invoke-static {v4, v5}, Lnet/time4j/calendar/astro/MoonPhase;->sin(D)D

    move-result-wide v4

    const-wide v8, 0x4000cccccccccccdL    # 2.1

    mul-double/2addr v4, v8

    add-double/2addr v6, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v8, v2, v4

    sub-double v10, v8, v0

    .line 475
    invoke-static {v10, v11}, Lnet/time4j/calendar/astro/MoonPhase;->sin(D)D

    move-result-wide v10

    const-wide v12, 0x3ff4624dd2f1a9fcL    # 1.274

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    .line 476
    invoke-static {v8, v9}, Lnet/time4j/calendar/astro/MoonPhase;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x3fe50e5604189375L    # 0.658

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v0, v4

    .line 477
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPhase;->sin(D)D

    move-result-wide v0

    const-wide v8, 0x3fcb645a1cac0831L    # 0.214

    mul-double/2addr v0, v8

    sub-double/2addr v6, v0

    .line 478
    invoke-static {v2, v3}, Lnet/time4j/calendar/astro/MoonPhase;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double/2addr v0, v2

    sub-double/2addr v6, v0

    .line 480
    invoke-static {v6, v7}, Lnet/time4j/calendar/astro/MoonPhase;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    div-double/2addr v0, v4

    .line 481
    sget-object p0, Lnet/time4j/calendar/astro/MoonPhase;->FACTORS:[I

    aget p0, p0, p1

    int-to-double p0, p0

    mul-double/2addr v0, p0

    sub-double v4, p0, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    return-wide v2

    .line 486
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static maxLunation()I
    .locals 1

    const/16 v0, 0x305b

    return v0
.end method

.method public static minLunation()I
    .locals 1

    const v0, -0xc141

    return v0
.end method

.method private periodic24(DDDD)D
    .locals 15

    move-object v0, p0

    .line 505
    sget-object v1, Lnet/time4j/calendar/astro/MoonPhase;->NEW_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    if-ne v0, v1, :cond_0

    sget-object v2, Lnet/time4j/calendar/astro/MoonPhase;->V_NEW:[D

    goto :goto_0

    :cond_0
    sget-object v2, Lnet/time4j/calendar/astro/MoonPhase;->FULL_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    if-ne v0, v2, :cond_1

    sget-object v2, Lnet/time4j/calendar/astro/MoonPhase;->V_FULL:[D

    goto :goto_0

    :cond_1
    sget-object v2, Lnet/time4j/calendar/astro/MoonPhase;->V_QUARTER:[D

    :goto_0
    if-eq v0, v1, :cond_3

    .line 506
    sget-object v3, Lnet/time4j/calendar/astro/MoonPhase;->FULL_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Lnet/time4j/calendar/astro/MoonPhase;->W_QUARTER:[I

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v3, Lnet/time4j/calendar/astro/MoonPhase;->W_NEW_FULL:[I

    :goto_2
    if-eq v0, v1, :cond_5

    .line 507
    sget-object v4, Lnet/time4j/calendar/astro/MoonPhase;->FULL_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    if-ne v0, v4, :cond_4

    goto :goto_3

    :cond_4
    sget-object v4, Lnet/time4j/calendar/astro/MoonPhase;->X_QUARTER:[I

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v4, Lnet/time4j/calendar/astro/MoonPhase;->X_NEW_FULL:[I

    :goto_4
    if-eq v0, v1, :cond_7

    .line 508
    sget-object v5, Lnet/time4j/calendar/astro/MoonPhase;->FULL_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    if-ne v0, v5, :cond_6

    goto :goto_5

    :cond_6
    sget-object v5, Lnet/time4j/calendar/astro/MoonPhase;->Y_QUARTER:[I

    goto :goto_6

    :cond_7
    :goto_5
    sget-object v5, Lnet/time4j/calendar/astro/MoonPhase;->Y_NEW_FULL:[I

    :goto_6
    if-eq v0, v1, :cond_9

    .line 509
    sget-object v1, Lnet/time4j/calendar/astro/MoonPhase;->FULL_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    if-ne v0, v1, :cond_8

    goto :goto_7

    :cond_8
    sget-object v1, Lnet/time4j/calendar/astro/MoonPhase;->Z_QUARTER:[I

    goto :goto_8

    :cond_9
    :goto_7
    sget-object v1, Lnet/time4j/calendar/astro/MoonPhase;->Z_NEW_FULL:[I

    :goto_8
    const-wide/16 v6, 0x0

    const/16 v8, 0x17

    :goto_9
    if-ltz v8, :cond_c

    .line 513
    aget-wide v9, v2, v8

    .line 514
    aget v11, v3, v8

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    :goto_a
    mul-double v9, v9, p1

    goto :goto_b

    .line 516
    :cond_a
    aget v11, v3, v8

    const/4 v12, 0x2

    if-ne v11, v12, :cond_b

    mul-double v9, v9, p1

    goto :goto_a

    .line 519
    :cond_b
    :goto_b
    aget v11, v4, v8

    int-to-double v11, v11

    mul-double v11, v11, p3

    aget v13, v5, v8

    int-to-double v13, v13

    mul-double v13, v13, p5

    add-double/2addr v11, v13

    aget v13, v1, v8

    int-to-double v13, v13

    mul-double v13, v13, p7

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Lnet/time4j/calendar/astro/MoonPhase;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    :cond_c
    return-wide v6
.end method

.method private static sin(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    .line 544
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/astro/MoonPhase;
    .locals 1

    .line 41
    const-class v0, Lnet/time4j/calendar/astro/MoonPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/astro/MoonPhase;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/astro/MoonPhase;
    .locals 1

    .line 41
    sget-object v0, Lnet/time4j/calendar/astro/MoonPhase;->$VALUES:[Lnet/time4j/calendar/astro/MoonPhase;

    invoke-virtual {v0}, [Lnet/time4j/calendar/astro/MoonPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/astro/MoonPhase;

    return-object v0
.end method


# virtual methods
.method public after(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 4

    .line 150
    invoke-direct {p0, p1}, Lnet/time4j/calendar/astro/MoonPhase;->getEstimatedLunations(Lnet/time4j/Moment;)I

    move-result v0

    .line 151
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/astro/MoonPhase;->atLunation(I)Lnet/time4j/Moment;

    move-result-object v1

    move v2, v0

    .line 154
    :goto_0
    invoke-virtual {v1, p1}, Lnet/time4j/Moment;->isAfter(Lnet/time4j/scale/UniversalTime;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 156
    invoke-virtual {p0, v2}, Lnet/time4j/calendar/astro/MoonPhase;->atLunation(I)Lnet/time4j/Moment;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-gt v2, v0, :cond_1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 162
    invoke-virtual {p0, v2}, Lnet/time4j/calendar/astro/MoonPhase;->atLunation(I)Lnet/time4j/Moment;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->isAfter(Lnet/time4j/scale/UniversalTime;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public atLunation(I)Lnet/time4j/Moment;
    .locals 24

    move-object/from16 v9, p0

    move/from16 v0, p1

    int-to-double v0, v0

    .line 330
    iget v2, v9, Lnet/time4j/calendar/astro/MoonPhase;->phase:I

    int-to-double v2, v2

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    add-double v10, v0, v2

    const-wide v0, 0x4093536666666666L    # 1236.85

    div-double v0, v10, v0

    mul-double v12, v0, v0

    const-wide v2, 0x403d87d4abed9decL    # 29.530588861

    mul-double/2addr v2, v10

    const-wide v4, 0x4142b42f0c801f75L    # 2451550.09766

    add-double/2addr v2, v4

    const-wide v4, 0x3e091525dd2e76baL    # 7.3E-10

    mul-double/2addr v4, v0

    const-wide v6, -0x417bde0a0bf27c8aL    # -1.5E-7

    add-double/2addr v4, v6

    mul-double/2addr v4, v0

    const-wide v6, 0x3f243bcc33f5a5dfL    # 1.5437E-4

    add-double/2addr v4, v6

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    const-wide v4, 0x3ff90524e2b87176L    # 1.56375588

    mul-double/2addr v4, v10

    const-wide v6, 0x405f31930be0ded3L    # 124.7746

    sub-double/2addr v6, v4

    const-wide v4, 0x3ec20916fff6c5c5L    # 2.15E-6

    mul-double/2addr v4, v0

    const-wide v14, 0x3f60ef3b8c9e0894L    # 0.0020672

    add-double/2addr v4, v14

    mul-double/2addr v4, v12

    add-double/2addr v6, v4

    .line 341
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x3f264840e1719f80L    # 1.7E-4

    mul-double/2addr v4, v6

    sub-double v14, v2, v4

    const-wide v2, 0x3edf09b082ea2aacL    # 7.4E-6

    mul-double/2addr v2, v0

    const-wide v4, 0x3f649c6f36ef8056L    # 0.002516

    add-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v16, v4, v2

    const-wide v2, 0x403d1af8a81cea1cL    # 29.1053567

    mul-double/2addr v2, v10

    const-wide v4, 0x40046d5cfaacd9e8L    # 2.5534

    add-double/2addr v2, v4

    const-wide v4, 0x3e7d87247702c0d0L    # 1.1E-7

    mul-double/2addr v4, v0

    const-wide v6, 0x3eb77cf44765195fL    # 1.4E-6

    add-double/2addr v4, v6

    mul-double/2addr v4, v12

    sub-double v18, v2, v4

    const-wide v2, 0x40781d122aba68c7L    # 385.81693528

    mul-double/2addr v2, v10

    const-wide v4, 0x4069320ebedfa440L    # 201.5643

    add-double/2addr v2, v4

    const-wide v4, 0x3e6f237594c664eeL    # 5.8E-8

    mul-double/2addr v4, v0

    const-wide v6, 0x3ee9f6763e75b188L    # 1.238E-5

    sub-double/2addr v6, v4

    mul-double/2addr v6, v0

    const-wide v4, 0x3f860865294f84a3L    # 0.0107582

    add-double/2addr v6, v4

    mul-double/2addr v6, v12

    add-double v20, v2, v6

    const-wide v2, 0x40786aba612f9acdL    # 390.67050284

    mul-double/2addr v2, v10

    const-wide v4, 0x406416bedfa43fe6L    # 160.7108

    add-double/2addr v2, v4

    const-wide v4, 0x3e479f505f35670cL    # 1.1E-8

    mul-double/2addr v4, v0

    const-wide v6, -0x413cf5364d6ef3a9L    # -2.27E-6

    add-double/2addr v4, v6

    mul-double/2addr v4, v0

    const-wide v0, -0x40a5979eed9670f0L    # -0.0016118

    add-double/2addr v4, v0

    mul-double/2addr v4, v12

    add-double v22, v2, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, v18

    move-wide/from16 v5, v20

    move-wide/from16 v7, v22

    .line 358
    invoke-direct/range {v0 .. v8}, Lnet/time4j/calendar/astro/MoonPhase;->periodic24(DDDD)D

    move-result-wide v0

    add-double/2addr v14, v0

    .line 360
    sget-object v0, Lnet/time4j/calendar/astro/MoonPhase;->FIRST_QUARTER:Lnet/time4j/calendar/astro/MoonPhase;

    if-ne v9, v0, :cond_0

    .line 361
    invoke-static/range {v16 .. v23}, Lnet/time4j/calendar/astro/MoonPhase;->corrQuarter(DDDD)D

    move-result-wide v0

    add-double/2addr v14, v0

    goto :goto_0

    .line 362
    :cond_0
    sget-object v0, Lnet/time4j/calendar/astro/MoonPhase;->LAST_QUARTER:Lnet/time4j/calendar/astro/MoonPhase;

    if-ne v9, v0, :cond_1

    .line 363
    invoke-static/range {v16 .. v23}, Lnet/time4j/calendar/astro/MoonPhase;->corrQuarter(DDDD)D

    move-result-wide v0

    sub-double/2addr v14, v0

    :cond_1
    :goto_0
    const/16 v0, 0x1c

    new-array v1, v0, [D

    const-wide v2, 0x4072bc51eb851eb8L    # 299.77

    const-wide v4, 0x3fbb7f1737542a24L    # 0.107408

    mul-double/2addr v4, v10

    add-double/2addr v4, v2

    const-wide v2, 0x3f82c94b380cb6c8L    # 0.009173

    mul-double/2addr v12, v2

    sub-double/2addr v4, v12

    const/4 v2, 0x0

    aput-wide v4, v1, v2

    const-wide v3, 0x3f354c985f06f694L    # 3.25E-4

    const/4 v5, 0x1

    aput-wide v3, v1, v5

    const-wide v3, 0x406f7c28f5c28f5cL    # 251.88

    const-wide v5, 0x3f90b673c4f3ba77L    # 0.016321

    mul-double/2addr v5, v10

    add-double/2addr v5, v3

    const/4 v3, 0x2

    aput-wide v5, v1, v3

    const/4 v3, 0x3

    const-wide v4, 0x3f25a07b352a8438L    # 1.65E-4

    aput-wide v4, v1, v3

    const/4 v3, 0x4

    const-wide v4, 0x406f7a8f5c28f5c3L    # 251.83

    const-wide v6, 0x403aa6e2003ab863L    # 26.651886

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    aput-wide v6, v1, v3

    const/4 v3, 0x5

    const-wide v4, 0x3f257eed45e9185dL    # 1.64E-4

    aput-wide v4, v1, v3

    const/4 v3, 0x6

    const-wide v4, 0x4075d6b851eb851fL    # 349.42

    const-wide v6, 0x404234cc144028e5L    # 36.412478

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    aput-wide v6, v1, v3

    const/4 v3, 0x7

    const-wide v4, 0x3f2083dbc23315d7L    # 1.26E-4

    aput-wide v4, v1, v3

    const/16 v3, 0x8

    const-wide v4, 0x40552a3d70a3d70aL    # 84.66

    const-wide v6, 0x403234cc144028e5L    # 18.206239

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    aput-wide v6, v1, v3

    const/16 v3, 0x9

    const-wide v4, 0x3f1cd5f99c38b04bL    # 1.1E-4

    aput-wide v4, v1, v3

    const/16 v3, 0xa

    const-wide v4, 0x4061b7ae147ae148L    # 141.74

    const-wide v6, 0x404aa6e1f7d73c92L    # 53.303771

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    aput-wide v6, v1, v3

    const/16 v3, 0xb

    const-wide v4, 0x3f1040bfe3b03e21L    # 6.2E-5

    aput-wide v4, v1, v3

    const/16 v3, 0xc

    const-wide v4, 0x4069e47ae147ae14L    # 207.14

    const-wide v6, 0x4003a13e3e29307bL    # 2.453732

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    aput-wide v6, v1, v3

    const/16 v3, 0xd

    const-wide v4, 0x3f0f75104d551d69L    # 6.0E-5

    aput-wide v4, v1, v3

    const/16 v3, 0xe

    const-wide v4, 0x40635ae147ae147bL    # 154.84

    const-wide v6, 0x401d3a398201cd60L    # 7.30686

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    aput-wide v6, v1, v3

    const/16 v3, 0xf

    const-wide v4, 0x3f0d5c31593e5fb7L    # 5.6E-5

    aput-wide v4, v1, v3

    const/16 v3, 0x10

    const-wide v4, 0x4041428f5c28f5c3L    # 34.52

    const-wide v6, 0x403b42e08f217093L    # 27.261239

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    aput-wide v6, v1, v3

    const/16 v3, 0x11

    const-wide v4, 0x3f08a43bb40b34e7L    # 4.7E-5

    aput-wide v4, v1, v3

    const/16 v3, 0x12

    const-wide v4, 0x4069e6147ae147aeL    # 207.19

    const-wide v6, 0x3fbf2fdb8fde2ef5L    # 0.121824

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    aput-wide v6, v1, v3

    const/16 v3, 0x13

    const-wide v4, 0x3f06052502eec7c9L    # 4.2E-5

    aput-wide v4, v1, v3

    const/16 v3, 0x14

    const-wide v4, 0x40723570a3d70a3dL    # 291.34

    const-wide v6, 0x3ffd82938de6ddf0L    # 1.844379

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    aput-wide v6, v1, v3

    const/16 v3, 0x15

    const-wide v4, 0x3f04f8b588e368f1L    # 4.0E-5

    aput-wide v4, v1, v3

    const/16 v3, 0x16

    const-wide v4, 0x4064370a3d70a3d7L    # 161.72

    const-wide v6, 0x403832ba38759253L    # 24.198154

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    aput-wide v6, v1, v3

    const/16 v3, 0x17

    const-wide v4, 0x3f03660e51d25aabL    # 3.7E-5

    aput-wide v4, v1, v3

    const/16 v3, 0x18

    const-wide v4, 0x406df1eb851eb852L    # 239.56

    const-wide v6, 0x4039835a74c09c3dL    # 25.513099

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    aput-wide v6, v1, v3

    const/16 v3, 0x19

    const-wide v4, 0x3f02599ed7c6fbd2L    # 3.5E-5

    aput-wide v4, v1, v3

    const/16 v3, 0x1a

    const-wide v4, 0x4074b8cccccccccdL    # 331.55

    const-wide v6, 0x400cbd7a13c254a4L    # 3.592518

    mul-double/2addr v10, v6

    add-double/2addr v10, v4

    aput-wide v10, v1, v3

    const/16 v3, 0x1b

    const-wide v4, 0x3ef81e03f705857bL    # 2.3E-5

    aput-wide v4, v1, v3

    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 397
    aget-wide v3, v1, v3

    aget-wide v5, v1, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v14, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 400
    :cond_2
    invoke-static {v14, v15}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(D)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/astro/JulianDay;->toMoment()Lnet/time4j/Moment;

    move-result-object v0

    sget-object v1, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/Moment;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    return-object v0
.end method

.method public atOrAfter(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 4

    .line 193
    invoke-direct {p0, p1}, Lnet/time4j/calendar/astro/MoonPhase;->getEstimatedLunations(Lnet/time4j/Moment;)I

    move-result v0

    .line 194
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/astro/MoonPhase;->atLunation(I)Lnet/time4j/Moment;

    move-result-object v1

    move v2, v0

    .line 197
    :goto_0
    invoke-virtual {v1, p1}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 199
    invoke-virtual {p0, v2}, Lnet/time4j/calendar/astro/MoonPhase;->atLunation(I)Lnet/time4j/Moment;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-gt v2, v0, :cond_1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 205
    invoke-virtual {p0, v2}, Lnet/time4j/calendar/astro/MoonPhase;->atLunation(I)Lnet/time4j/Moment;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public before(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 5

    .line 234
    invoke-direct {p0, p1}, Lnet/time4j/calendar/astro/MoonPhase;->getEstimatedLunations(Lnet/time4j/Moment;)I

    move-result v0

    .line 235
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/astro/MoonPhase;->atLunation(I)Lnet/time4j/Moment;

    move-result-object v1

    move v2, v0

    .line 238
    :goto_0
    invoke-virtual {v1, p1}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 240
    invoke-virtual {p0, v2}, Lnet/time4j/calendar/astro/MoonPhase;->atLunation(I)Lnet/time4j/Moment;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-lt v2, v0, :cond_1

    :goto_1
    const-wide/16 v3, 0x1d

    .line 244
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v0}, Lnet/time4j/Moment;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 246
    invoke-virtual {p0, v2}, Lnet/time4j/calendar/astro/MoonPhase;->atLunation(I)Lnet/time4j/Moment;

    move-result-object v0

    .line 247
    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    return-object v1
.end method
