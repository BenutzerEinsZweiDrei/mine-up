.class public final Lnet/time4j/calendar/hindu/HinduVariant;
.super Ljava/lang/Object;
.source "HinduVariant.java"

# interfaces
.implements Lnet/time4j/engine/VariantSource;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;,
        Lnet/time4j/calendar/hindu/HinduVariant$LongFunction;,
        Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;
    }
.end annotation


# static fields
.field private static final RULES:[Lnet/time4j/calendar/hindu/HinduRule;

.field private static final TYPE_OLD_LUNAR:I = -0x2

.field private static final TYPE_OLD_SOLAR:I = -0x1

.field static final UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

.field private static final U_OFFSET:D = 18184.4

.field static final VAR_OLD_LUNAR:Lnet/time4j/calendar/hindu/HinduVariant;

.field static final VAR_OLD_SOLAR:Lnet/time4j/calendar/hindu/HinduVariant;


# instance fields
.field private final transient defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

.field private final transient depressionAngle:D

.field private final transient elapsedMode:Z

.field private final transient location:Lnet/time4j/calendar/astro/GeoLocation;

.field private final transient type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 59
    new-instance v6, Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;

    const-wide v1, 0x4037266666666666L    # 23.15

    const-wide v3, 0x4052f12c5f92c5f9L    # 75.76833333333333

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;-><init>(DDI)V

    sput-object v6, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    .line 67
    invoke-static {}, Lnet/time4j/calendar/hindu/HinduRule;->values()[Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/hindu/HinduVariant;->RULES:[Lnet/time4j/calendar/hindu/HinduRule;

    .line 72
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant;

    sget-object v1, Lnet/time4j/calendar/hindu/AryaSiddhanta;->SOLAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

    invoke-direct {v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(Lnet/time4j/calendar/hindu/AryaSiddhanta;)V

    sput-object v0, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_SOLAR:Lnet/time4j/calendar/hindu/HinduVariant;

    .line 73
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant;

    sget-object v1, Lnet/time4j/calendar/hindu/AryaSiddhanta;->LUNAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

    invoke-direct {v0, v1}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(Lnet/time4j/calendar/hindu/AryaSiddhanta;)V

    sput-object v0, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_LUNAR:Lnet/time4j/calendar/hindu/HinduVariant;

    return-void
.end method

.method private constructor <init>(ILnet/time4j/calendar/hindu/HinduEra;ZDLnet/time4j/calendar/astro/GeoLocation;)V
    .locals 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    if-lt p1, v0, :cond_3

    .line 119
    invoke-static {}, Lnet/time4j/calendar/hindu/HinduRule;->values()[Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_3

    const-string v0, "Missing default Hindu era."

    .line 122
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Missing geographical location."

    .line 124
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    invoke-static {p4, p5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Depression angle is too big: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_1
    :goto_0
    iput p1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    .line 132
    iput-object p2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    .line 133
    iput-boolean p3, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    .line 134
    iput-wide p4, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    .line 135
    iput-object p6, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    return-void

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Infinite depression angle."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Undefined Hindu rule."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lnet/time4j/calendar/hindu/AryaSiddhanta;)V
    .locals 7

    .line 100
    sget-object v0, Lnet/time4j/calendar/hindu/AryaSiddhanta;->SOLAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    move v1, p1

    sget-object v2, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    const/4 v3, 0x1

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    sget-object v6, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(ILnet/time4j/calendar/hindu/HinduEra;ZDLnet/time4j/calendar/astro/GeoLocation;)V

    return-void
.end method

.method constructor <init>(Lnet/time4j/calendar/hindu/HinduRule;Lnet/time4j/calendar/hindu/HinduEra;)V
    .locals 7

    .line 90
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result v1

    .line 92
    invoke-static {p2, p1}, Lnet/time4j/calendar/hindu/HinduVariant;->useStandardElapsedMode(Lnet/time4j/calendar/hindu/HinduEra;Lnet/time4j/calendar/hindu/HinduRule;)Z

    move-result v3

    sget-object v6, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    move-object v0, p0

    move-object v2, p2

    .line 89
    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(ILnet/time4j/calendar/hindu/HinduEra;ZDLnet/time4j/calendar/astro/GeoLocation;)V

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduRule;
    .locals 0

    .line 53
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->getRule()Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lnet/time4j/calendar/hindu/HinduVariant;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->useModernAstronomy()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lnet/time4j/calendar/hindu/HinduVariant;)D
    .locals 2

    .line 53
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    return-wide v0
.end method

.method private static equals(DD)Z
    .locals 2

    .line 728
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0

    .line 730
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    cmpl-double p0, p0, p2

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static from(Ljava/lang/String;)Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "AryaSiddhanta@"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "Invalid variant: "

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    .line 168
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/calendar/hindu/AryaSiddhanta;->valueOf(Ljava/lang/String;)Lnet/time4j/calendar/hindu/AryaSiddhanta;

    move-result-object v0

    .line 169
    sget-object v3, Lnet/time4j/calendar/hindu/AryaSiddhanta;->SOLAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

    if-ne v0, v3, :cond_0

    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_SOLAR:Lnet/time4j/calendar/hindu/HinduVariant;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_LUNAR:Lnet/time4j/calendar/hindu/HinduVariant;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 171
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 175
    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, "|"

    invoke-direct {v0, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const-wide/high16 v5, 0x7ff8000000000000L    # NaN

    .line 181
    sget-object v7, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v7}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v8

    .line 182
    invoke-interface {v7}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v10

    .line 183
    invoke-interface {v7}, Lnet/time4j/calendar/astro/GeoLocation;->getAltitude()I

    move-result v7

    const/4 v12, 0x0

    const/4 v13, 0x1

    move v15, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    move-wide v4, v8

    move v3, v12

    move v9, v13

    move/from16 v17, v9

    move v8, v7

    move-wide v6, v10

    .line 186
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/2addr v3, v13

    .line 188
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    packed-switch v3, :pswitch_data_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :pswitch_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v9, :cond_3

    if-nez v8, :cond_3

    :goto_2
    move v9, v13

    goto :goto_1

    :cond_3
    move v9, v12

    goto :goto_1

    .line 209
    :pswitch_1
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    if-eqz v9, :cond_3

    .line 210
    sget-object v9, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v9}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v9

    cmpl-double v9, v6, v9

    if-nez v9, :cond_3

    goto :goto_2

    .line 205
    :pswitch_2
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 206
    sget-object v9, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v9}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v9

    cmpl-double v9, v4, v9

    if-nez v9, :cond_3

    goto :goto_2

    :pswitch_3
    const-string v11, "oldstyle"

    .line 200
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "alt"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "std"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 201
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-wide/from16 v18, v10

    goto :goto_1

    :pswitch_4
    const-string v11, "elapsed"

    .line 197
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    goto/16 :goto_1

    .line 194
    :pswitch_5
    invoke-static {v10}, Lnet/time4j/calendar/hindu/HinduEra;->valueOf(Ljava/lang/String;)Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object v10

    move-object/from16 v16, v10

    goto/16 :goto_1

    .line 191
    :pswitch_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v15, v10

    goto/16 :goto_1

    :cond_4
    if-ltz v15, :cond_6

    .line 226
    :try_start_1
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant;

    if-eqz v9, :cond_5

    sget-object v3, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    move-object/from16 v20, v3

    goto :goto_3

    :cond_5
    new-instance v9, Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lnet/time4j/calendar/hindu/HinduVariant$HinduLocation;-><init>(DDI)V

    move-object/from16 v20, v9

    :goto_3
    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(ILnet/time4j/calendar/hindu/HinduEra;ZDLnet/time4j/calendar/astro/GeoLocation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 234
    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRule()Lnet/time4j/calendar/hindu/HinduRule;
    .locals 2

    .line 738
    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant;->RULES:[Lnet/time4j/calendar/hindu/HinduRule;

    iget v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private useModernAstronomy()Z
    .locals 2

    .line 700
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static useStandardElapsedMode(Lnet/time4j/calendar/hindu/HinduEra;Lnet/time4j/calendar/hindu/HinduRule;)Z
    .locals 2

    .line 707
    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant$1;->$SwitchMap$net$time4j$calendar$hindu$HinduEra:[I

    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduEra;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    return v1

    :cond_0
    return v0

    .line 709
    :cond_1
    sget-object p0, Lnet/time4j/calendar/hindu/HinduVariant$1;->$SwitchMap$net$time4j$calendar$hindu$HinduRule:[I

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 749
    new-instance v0, Lnet/time4j/calendar/hindu/SPX;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1}, Lnet/time4j/calendar/hindu/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 386
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/hindu/HinduVariant;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 387
    check-cast p1, Lnet/time4j/calendar/hindu/HinduVariant;

    .line 388
    iget v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    iget v3, p1, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    iget-object v3, p1, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    iget-boolean v3, p1, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    iget-wide v5, p1, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    .line 392
    invoke-static {v3, v4, v5, v6}, Lnet/time4j/calendar/hindu/HinduVariant;->equals(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    .line 393
    invoke-interface {v1}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v3

    iget-object v1, p1, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v1}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    .line 394
    invoke-interface {v1}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v3

    iget-object v1, p1, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v1}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    .line 395
    invoke-interface {v1}, Lnet/time4j/calendar/astro/GeoLocation;->getAltitude()I

    move-result v1

    iget-object p1, p1, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {p1}, Lnet/time4j/calendar/astro/GeoLocation;->getAltitude()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;
    .locals 2

    .line 656
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 662
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;)V

    return-object v0

    .line 658
    :cond_0
    sget-object v0, Lnet/time4j/calendar/hindu/AryaSiddhanta;->SOLAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/AryaSiddhanta;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    return-object v0

    .line 660
    :cond_1
    sget-object v0, Lnet/time4j/calendar/hindu/AryaSiddhanta;->LUNAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/AryaSiddhanta;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultEra()Lnet/time4j/calendar/hindu/HinduEra;
    .locals 1

    .line 250
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    return-object v0
.end method

.method getFirstMonthOfYear()I
    .locals 3

    .line 668
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 674
    :cond_0
    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant$1;->$SwitchMap$net$time4j$calendar$hindu$HinduRule:[I

    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->getRule()Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 682
    sget-object v0, Lnet/time4j/calendar/IndianMonth;->CHAITRA:Lnet/time4j/calendar/IndianMonth;

    goto :goto_0

    .line 679
    :cond_1
    sget-object v0, Lnet/time4j/calendar/IndianMonth;->KARTIKA:Lnet/time4j/calendar/IndianMonth;

    goto :goto_0

    .line 676
    :cond_2
    sget-object v0, Lnet/time4j/calendar/IndianMonth;->ASHADHA:Lnet/time4j/calendar/IndianMonth;

    .line 685
    :goto_0
    invoke-virtual {v0}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v0

    return v0
.end method

.method public getLocation()Lnet/time4j/calendar/astro/GeoLocation;
    .locals 1

    .line 264
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 4

    .line 453
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lnet/time4j/calendar/hindu/AryaSiddhanta;->SOLAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/calendar/hindu/AryaSiddhanta;->LUNAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

    .line 455
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AryaSiddhanta@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/AryaSiddhanta;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 458
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    iget v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    iget-object v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduEra;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    iget-boolean v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    if-eqz v2, :cond_2

    const-string v2, "elapsed"

    goto :goto_1

    :cond_2
    const-string v2, "current"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    iget-wide v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "oldstyle"

    goto :goto_2

    :cond_3
    iget-wide v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 466
    iget-object v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    sget-object v3, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    if-eq v2, v3, :cond_4

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    iget-object v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v2}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    iget-object v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v2}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 471
    iget-object v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v2}, Lnet/time4j/calendar/astro/GeoLocation;->getAltitude()I

    move-result v2

    if-eqz v2, :cond_4

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 403
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    .line 404
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduEra;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    add-int/2addr v0, v1

    iget-wide v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    .line 406
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const/16 v2, 0x64

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    double-to-int v1, v3

    mul-int/2addr v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public isAmanta()Z
    .locals 3

    .line 318
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    return v1

    .line 321
    :cond_0
    sget-object v2, Lnet/time4j/calendar/hindu/HinduRule;->AMANTA:Lnet/time4j/calendar/hindu/HinduRule;

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    sget-object v2, Lnet/time4j/calendar/hindu/HinduRule;->PURNIMANTA:Lnet/time4j/calendar/hindu/HinduRule;

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result v2

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLunisolar()Z
    .locals 1

    .line 300
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isAmanta()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isPurnimanta()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOld()Z
    .locals 1

    .line 355
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPurnimanta()Z
    .locals 2

    .line 340
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    sget-object v1, Lnet/time4j/calendar/hindu/HinduRule;->PURNIMANTA:Lnet/time4j/calendar/hindu/HinduRule;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSolar()Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isLunisolar()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUsingElapsedYears()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    return v0
.end method

.method prefersRasiNames()Z
    .locals 2

    .line 651
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    sget-object v1, Lnet/time4j/calendar/hindu/HinduRule;->MADRAS:Lnet/time4j/calendar/hindu/HinduRule;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    sget-object v1, Lnet/time4j/calendar/hindu/HinduRule;->MALAYALI:Lnet/time4j/calendar/hindu/HinduRule;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method toAmanta()Lnet/time4j/calendar/hindu/HinduCS;
    .locals 8

    .line 690
    new-instance v7, Lnet/time4j/calendar/hindu/HinduVariant;

    sget-object v0, Lnet/time4j/calendar/hindu/HinduRule;->AMANTA:Lnet/time4j/calendar/hindu/HinduRule;

    .line 691
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduRule;->ordinal()I

    move-result v1

    iget-object v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    iget-boolean v3, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    iget-wide v4, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    iget-object v6, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(ILnet/time4j/calendar/hindu/HinduEra;ZDLnet/time4j/calendar/astro/GeoLocation;)V

    .line 696
    invoke-virtual {v7}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hindu-variant=["

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 422
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->getRule()Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduRule;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "OLD-SOLAR"

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "OLD-LUNAR"

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :goto_0
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "|default-era="

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduEra;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    iget-boolean v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    if-eqz v1, :cond_2

    const-string v1, "elapsed-year-mode"

    goto :goto_1

    :cond_2
    const-string v1, "current-year-mode"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-wide v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "|depression-angle="

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-wide v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 434
    :cond_3
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    sget-object v2, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    if-eq v1, v2, :cond_4

    const-string v1, "|lat="

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v1}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",lng="

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v1}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 439
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v1}, Lnet/time4j/calendar/astro/GeoLocation;->getAltitude()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, ",alt="

    .line 441
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x5d

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/time4j/calendar/hindu/HinduEra;)Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 8

    .line 497
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/hindu/HinduEra;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant;

    iget v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    iget-boolean v4, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    iget-wide v5, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    iget-object v7, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(ILnet/time4j/calendar/hindu/HinduEra;ZDLnet/time4j/calendar/astro/GeoLocation;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withAlternativeHinduSunrise()Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public withAlternativeLocation(Lnet/time4j/calendar/astro/GeoLocation;)Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 9

    .line 632
    invoke-interface {p1}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 634
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 639
    :cond_0
    invoke-interface {p1}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v2}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 640
    invoke-interface {p1}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v0

    iget-object v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v2}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 641
    invoke-interface {p1}, Lnet/time4j/calendar/astro/GeoLocation;->getAltitude()I

    move-result v0

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    invoke-interface {v1}, Lnet/time4j/calendar/astro/GeoLocation;->getAltitude()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-object p0

    .line 646
    :cond_1
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant;

    iget v3, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    iget-object v4, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    iget-boolean v5, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    iget-wide v6, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    move-object v2, v0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(ILnet/time4j/calendar/hindu/HinduEra;ZDLnet/time4j/calendar/astro/GeoLocation;)V

    return-object v0

    .line 633
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Latitudes beyond +/-60\u00b0 degrees not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withCurrentYears()Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 8

    .line 550
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant;

    iget v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    iget-object v3, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    const/4 v4, 0x0

    iget-wide v5, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    iget-object v7, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(ILnet/time4j/calendar/hindu/HinduEra;ZDLnet/time4j/calendar/astro/GeoLocation;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withElapsedYears()Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 8

    .line 523
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant;

    iget v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    iget-object v3, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    const/4 v4, 0x1

    iget-wide v5, p0, Lnet/time4j/calendar/hindu/HinduVariant;->depressionAngle:D

    iget-object v7, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(ILnet/time4j/calendar/hindu/HinduEra;ZDLnet/time4j/calendar/astro/GeoLocation;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withModernAstronomy(D)Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 8

    .line 600
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 606
    :cond_0
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant;

    iget v2, p0, Lnet/time4j/calendar/hindu/HinduVariant;->type:I

    iget-object v3, p0, Lnet/time4j/calendar/hindu/HinduVariant;->defaultEra:Lnet/time4j/calendar/hindu/HinduEra;

    iget-boolean v4, p0, Lnet/time4j/calendar/hindu/HinduVariant;->elapsedMode:Z

    iget-object v7, p0, Lnet/time4j/calendar/hindu/HinduVariant;->location:Lnet/time4j/calendar/astro/GeoLocation;

    move-object v1, v0

    move-wide v5, p1

    invoke-direct/range {v1 .. v7}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(ILnet/time4j/calendar/hindu/HinduEra;ZDLnet/time4j/calendar/astro/GeoLocation;)V

    return-object v0

    .line 601
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Depression angle must be a finite number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
