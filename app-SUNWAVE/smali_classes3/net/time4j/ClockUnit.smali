.class public abstract enum Lnet/time4j/ClockUnit;
.super Ljava/lang/Enum;
.source "ClockUnit.java"

# interfaces
.implements Lnet/time4j/IsoTimeUnit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/ClockUnit;",
        ">;",
        "Lnet/time4j/IsoTimeUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/ClockUnit;

.field private static final FACTORS:[J

.field public static final enum HOURS:Lnet/time4j/ClockUnit;

.field public static final enum MICROS:Lnet/time4j/ClockUnit;

.field public static final enum MILLIS:Lnet/time4j/ClockUnit;

.field public static final enum MINUTES:Lnet/time4j/ClockUnit;

.field public static final enum NANOS:Lnet/time4j/ClockUnit;

.field public static final enum SECONDS:Lnet/time4j/ClockUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 48
    new-instance v0, Lnet/time4j/ClockUnit$1;

    const-string v1, "HOURS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/ClockUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    .line 61
    new-instance v1, Lnet/time4j/ClockUnit$2;

    const-string v3, "MINUTES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/ClockUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    .line 88
    new-instance v3, Lnet/time4j/ClockUnit$3;

    const-string v5, "SECONDS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/ClockUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    .line 101
    new-instance v5, Lnet/time4j/ClockUnit$4;

    const-string v7, "MILLIS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/ClockUnit$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    .line 114
    new-instance v7, Lnet/time4j/ClockUnit$5;

    const-string v9, "MICROS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/ClockUnit$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    .line 127
    new-instance v9, Lnet/time4j/ClockUnit$6;

    const-string v11, "NANOS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/time4j/ClockUnit$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    const/4 v11, 0x6

    new-array v13, v11, [Lnet/time4j/ClockUnit;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    .line 41
    sput-object v13, Lnet/time4j/ClockUnit;->$VALUES:[Lnet/time4j/ClockUnit;

    new-array v0, v11, [J

    .line 139
    fill-array-data v0, :array_0

    sput-object v0, Lnet/time4j/ClockUnit;->FACTORS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1
        0x3c
        0xe10
        0x36ee80
        0xd693a400L
        0x34630b8a000L
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/time4j/ClockUnit$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lnet/time4j/ClockUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/ClockUnit;
    .locals 1

    .line 41
    const-class v0, Lnet/time4j/ClockUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/ClockUnit;

    return-object p0
.end method

.method public static values()[Lnet/time4j/ClockUnit;
    .locals 1

    .line 41
    sget-object v0, Lnet/time4j/ClockUnit;->$VALUES:[Lnet/time4j/ClockUnit;

    invoke-virtual {v0}, [Lnet/time4j/ClockUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/ClockUnit;

    return-object v0
.end method


# virtual methods
.method public between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-",
            "Lnet/time4j/ClockUnit;",
            "TT;>;>(TT;TT;)J"
        }
    .end annotation

    .line 168
    invoke-virtual {p1, p2, p0}, Lnet/time4j/engine/TimePoint;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method

.method public convert(JLnet/time4j/ClockUnit;)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v0

    .line 224
    invoke-virtual {p3}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result p3

    if-ne v0, p3, :cond_1

    return-wide p1

    :cond_1
    if-le v0, p3, :cond_2

    .line 229
    sget-object v1, Lnet/time4j/ClockUnit;->FACTORS:[J

    aget-wide v2, v1, v0

    aget-wide v0, v1, p3

    div-long/2addr v2, v0

    invoke-static {p1, p2, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p1

    return-wide p1

    .line 234
    :cond_2
    sget-object v1, Lnet/time4j/ClockUnit;->FACTORS:[J

    aget-wide v2, v1, p3

    aget-wide v0, v1, v0

    div-long/2addr v2, v0

    .line 235
    div-long/2addr p1, v2

    return-wide p1
.end method

.method public convert(Lnet/time4j/engine/TimeSpan;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "+",
            "Lnet/time4j/ClockUnit;",
            ">;)J"
        }
    .end annotation

    .line 258
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    .line 265
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 267
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/TimeSpan$Item;

    .line 268
    invoke-virtual {v4}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/ClockUnit;

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {v4}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v0

    move-wide v1, v0

    move-object v0, v5

    goto :goto_1

    .line 277
    :cond_1
    invoke-virtual {v4}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v5}, Lnet/time4j/ClockUnit;->convert(JLnet/time4j/ClockUnit;)J

    move-result-wide v4

    .line 275
    invoke-static {v1, v2, v4, v5}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v1

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 281
    :cond_2
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 282
    invoke-static {v1, v2}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v1

    .line 285
    :cond_3
    invoke-virtual {p0, v1, v2, v0}, Lnet/time4j/ClockUnit;->convert(JLnet/time4j/ClockUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public only()Lnet/time4j/engine/Normalizer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Normalizer<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    .line 307
    invoke-static {p0}, Lnet/time4j/ClockNormalizer;->ofOnlyMode(Lnet/time4j/ClockUnit;)Lnet/time4j/ClockNormalizer;

    move-result-object v0

    return-object v0
.end method

.method public rounded()Lnet/time4j/engine/Normalizer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Normalizer<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    .line 371
    invoke-static {p0}, Lnet/time4j/ClockNormalizer;->ofRoundingMode(Lnet/time4j/ClockUnit;)Lnet/time4j/ClockNormalizer;

    move-result-object v0

    return-object v0
.end method

.method public truncated()Lnet/time4j/engine/Normalizer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Normalizer<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    .line 330
    invoke-static {p0}, Lnet/time4j/ClockNormalizer;->ofTruncateMode(Lnet/time4j/ClockUnit;)Lnet/time4j/ClockNormalizer;

    move-result-object v0

    return-object v0
.end method
