.class public final Lnet/time4j/MachineTime;
.super Ljava/lang/Object;
.source "MachineTime.java"

# interfaces
.implements Lnet/time4j/engine/TimeSpan;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/MachineTime$Metric;,
        Lnet/time4j/MachineTime$Normalized;,
        Lnet/time4j/MachineTime$Formatter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/TimeSpan<",
        "TU;>;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/MachineTime<",
        "TU;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final MRD:I = 0x3b9aca00

.field public static final ON_POSIX_SCALE:Lnet/time4j/engine/TimeMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeMetric<",
            "Ljava/util/concurrent/TimeUnit;",
            "Lnet/time4j/MachineTime<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final ON_UTC_SCALE:Lnet/time4j/engine/TimeMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeMetric<",
            "Ljava/util/concurrent/TimeUnit;",
            "Lnet/time4j/MachineTime<",
            "Lnet/time4j/SI;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final POSIX_ZERO:Lnet/time4j/MachineTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/MachineTime<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final UTC_ZERO:Lnet/time4j/MachineTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/MachineTime<",
            "Lnet/time4j/SI;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x3998cc6bfd724fd5L


# instance fields
.field private final transient nanos:I

.field private final transient scale:Lnet/time4j/scale/TimeScale;

.field private final transient seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 98
    new-instance v0, Lnet/time4j/MachineTime;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lnet/time4j/MachineTime;-><init>(JILnet/time4j/scale/TimeScale;)V

    sput-object v0, Lnet/time4j/MachineTime;->POSIX_ZERO:Lnet/time4j/MachineTime;

    .line 100
    new-instance v0, Lnet/time4j/MachineTime;

    sget-object v1, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v2, v3, v4, v1}, Lnet/time4j/MachineTime;-><init>(JILnet/time4j/scale/TimeScale;)V

    sput-object v0, Lnet/time4j/MachineTime;->UTC_ZERO:Lnet/time4j/MachineTime;

    .line 113
    new-instance v0, Lnet/time4j/MachineTime$Metric;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/MachineTime$Metric;-><init>(Lnet/time4j/scale/TimeScale;Lnet/time4j/MachineTime$1;)V

    sput-object v0, Lnet/time4j/MachineTime;->ON_POSIX_SCALE:Lnet/time4j/engine/TimeMetric;

    .line 130
    new-instance v0, Lnet/time4j/MachineTime$Metric;

    sget-object v1, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v1, v2}, Lnet/time4j/MachineTime$Metric;-><init>(Lnet/time4j/scale/TimeScale;Lnet/time4j/MachineTime$1;)V

    sput-object v0, Lnet/time4j/MachineTime;->ON_UTC_SCALE:Lnet/time4j/engine/TimeMetric;

    return-void
.end method

.method private constructor <init>(JILnet/time4j/scale/TimeScale;)V
    .locals 5

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :goto_0
    const-wide/16 v0, 0x1

    const v2, 0x3b9aca00

    if-gez p3, :cond_0

    add-int/2addr p3, v2

    .line 152
    invoke-static {p1, p2, v0, v1}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    :goto_1
    if-lt p3, v2, :cond_1

    sub-int/2addr p3, v2

    .line 157
    invoke-static {p1, p2, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_2

    if-lez p3, :cond_2

    add-long/2addr p1, v0

    sub-int/2addr p3, v2

    .line 165
    :cond_2
    iput-wide p1, p0, Lnet/time4j/MachineTime;->seconds:J

    .line 166
    iput p3, p0, Lnet/time4j/MachineTime;->nanos:I

    .line 167
    iput-object p4, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    return-void
.end method

.method synthetic constructor <init>(JILnet/time4j/scale/TimeScale;Lnet/time4j/MachineTime$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/MachineTime;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-void
.end method

.method private static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method

.method private createNumber(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1099
    invoke-virtual {p0}, Lnet/time4j/MachineTime;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    .line 1100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1101
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1103
    :cond_0
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1106
    :goto_0
    iget v0, p0, Lnet/time4j/MachineTime;->nanos:I

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    .line 1107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1108
    iget v0, p0, Lnet/time4j/MachineTime;->nanos:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x9

    :goto_1
    if-lez v1, :cond_1

    const/16 v2, 0x30

    .line 1110
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1112
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private static negateExact(J)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    neg-long p0, p0

    return-wide p0

    .line 1126
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Long overflow."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static of(JLjava/util/concurrent/TimeUnit;)Lnet/time4j/MachineTime;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lnet/time4j/MachineTime<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation

    .line 196
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const-wide/16 v1, 0x1

    if-ltz v0, :cond_0

    .line 197
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 200
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 198
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p0

    const/4 p2, 0x0

    .line 201
    invoke-static {p0, p1, p2}, Lnet/time4j/MachineTime;->ofPosixUnits(JI)Lnet/time4j/MachineTime;

    move-result-object p0

    return-object p0

    .line 204
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 207
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 205
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p0

    const p2, 0x3b9aca00

    .line 208
    invoke-static {p0, p1, p2}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    .line 209
    invoke-static {p0, p1, p2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p0

    .line 210
    invoke-static {v0, v1, p0}, Lnet/time4j/MachineTime;->ofPosixUnits(JI)Lnet/time4j/MachineTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(JLnet/time4j/SI;)Lnet/time4j/MachineTime;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lnet/time4j/SI;",
            ")",
            "Lnet/time4j/MachineTime<",
            "Lnet/time4j/SI;",
            ">;"
        }
    .end annotation

    .line 235
    sget-object v0, Lnet/time4j/MachineTime$1;->$SwitchMap$net$time4j$SI:[I

    invoke-virtual {p2}, Lnet/time4j/SI;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const p2, 0x3b9aca00

    .line 239
    invoke-static {p0, p1, p2}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    .line 240
    invoke-static {p0, p1, p2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p0

    .line 241
    invoke-static {v0, v1, p0}, Lnet/time4j/MachineTime;->ofSIUnits(JI)Lnet/time4j/MachineTime;

    move-result-object p0

    return-object p0

    .line 243
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Lnet/time4j/SI;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p2, 0x0

    .line 237
    invoke-static {p0, p1, p2}, Lnet/time4j/MachineTime;->ofSIUnits(JI)Lnet/time4j/MachineTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofPosixSeconds(D)Lnet/time4j/MachineTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lnet/time4j/MachineTime<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation

    .line 330
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    long-to-double v2, v0

    sub-double/2addr p0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr p0, v2

    double-to-int p0, p0

    .line 336
    invoke-static {v0, v1, p0}, Lnet/time4j/MachineTime;->ofPosixUnits(JI)Lnet/time4j/MachineTime;

    move-result-object p0

    return-object p0

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofPosixSeconds(Ljava/math/BigDecimal;)Lnet/time4j/MachineTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigDecimal;",
            ")",
            "Lnet/time4j/MachineTime<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation

    .line 358
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 360
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-wide/32 v2, 0x3b9aca00

    .line 361
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 362
    invoke-virtual {p0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 363
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p0

    .line 364
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lnet/time4j/MachineTime;->ofPosixUnits(JI)Lnet/time4j/MachineTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofPosixUnits(JI)Lnet/time4j/MachineTime;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lnet/time4j/MachineTime<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 272
    sget-object p0, Lnet/time4j/MachineTime;->POSIX_ZERO:Lnet/time4j/MachineTime;

    return-object p0

    .line 275
    :cond_0
    new-instance v0, Lnet/time4j/MachineTime;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, p0, p1, p2, v1}, Lnet/time4j/MachineTime;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public static ofSISeconds(D)Lnet/time4j/MachineTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lnet/time4j/MachineTime<",
            "Lnet/time4j/SI;",
            ">;"
        }
    .end annotation

    .line 388
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    long-to-double v2, v0

    sub-double/2addr p0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr p0, v2

    double-to-int p0, p0

    .line 394
    invoke-static {v0, v1, p0}, Lnet/time4j/MachineTime;->ofSIUnits(JI)Lnet/time4j/MachineTime;

    move-result-object p0

    return-object p0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofSISeconds(Ljava/math/BigDecimal;)Lnet/time4j/MachineTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigDecimal;",
            ")",
            "Lnet/time4j/MachineTime<",
            "Lnet/time4j/SI;",
            ">;"
        }
    .end annotation

    .line 416
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 418
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-wide/32 v2, 0x3b9aca00

    .line 419
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 420
    invoke-virtual {p0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 421
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p0

    .line 422
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lnet/time4j/MachineTime;->ofSIUnits(JI)Lnet/time4j/MachineTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofSIUnits(JI)Lnet/time4j/MachineTime;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lnet/time4j/MachineTime<",
            "Lnet/time4j/SI;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 303
    sget-object p0, Lnet/time4j/MachineTime;->UTC_ZERO:Lnet/time4j/MachineTime;

    return-object p0

    .line 306
    :cond_0
    new-instance v0, Lnet/time4j/MachineTime;

    sget-object v1, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, p0, p1, p2, v1}, Lnet/time4j/MachineTime;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1171
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1159
    new-instance v0, Lnet/time4j/SPX;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lnet/time4j/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public abs()Lnet/time4j/MachineTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/MachineTime<",
            "TU;>;"
        }
    .end annotation

    .line 753
    invoke-virtual {p0}, Lnet/time4j/MachineTime;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    new-instance v0, Lnet/time4j/MachineTime;

    iget-wide v1, p0, Lnet/time4j/MachineTime;->seconds:J

    invoke-static {v1, v2}, Lnet/time4j/MachineTime;->negateExact(J)J

    move-result-wide v1

    iget v3, p0, Lnet/time4j/MachineTime;->nanos:I

    neg-int v3, v3

    iget-object v4, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/MachineTime;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public addTo(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne v0, v1, :cond_0

    .line 915
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 916
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 918
    :cond_0
    sget-object v0, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    .line 919
    sget-object v1, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    .line 922
    :goto_0
    iget-wide v2, p0, Lnet/time4j/MachineTime;->seconds:J

    invoke-virtual {p1, v2, v3, v0}, Lnet/time4j/engine/TimePoint;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    iget v0, p0, Lnet/time4j/MachineTime;->nanos:I

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3, v1}, Lnet/time4j/engine/TimePoint;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 91
    check-cast p1, Lnet/time4j/MachineTime;

    invoke-virtual {p0, p1}, Lnet/time4j/MachineTime;->compareTo(Lnet/time4j/MachineTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/MachineTime;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/MachineTime<",
            "TU;>;)I"
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    iget-object v1, p1, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    if-ne v0, v1, :cond_2

    .line 1016
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    iget-wide v2, p1, Lnet/time4j/MachineTime;->seconds:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1021
    :cond_1
    iget v0, p0, Lnet/time4j/MachineTime;->nanos:I

    iget p1, p1, Lnet/time4j/MachineTime;->nanos:I

    sub-int/2addr v0, p1

    return v0

    .line 1024
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Different time scales."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6

    .line 525
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 526
    invoke-virtual {v0, p1}, Ljava/util/concurrent/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v1, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    if-ne v0, v1, :cond_3

    sget-object v0, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    .line 527
    invoke-virtual {v0, p1}, Lnet/time4j/SI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    :cond_1
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 530
    :cond_3
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne v0, v1, :cond_4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 531
    invoke-virtual {v0, p1}, Ljava/util/concurrent/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v1, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    if-ne v0, v1, :cond_7

    sget-object v0, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    .line 532
    invoke-virtual {v0, p1}, Lnet/time4j/SI;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 534
    :cond_5
    iget p1, p0, Lnet/time4j/MachineTime;->nanos:I

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    return v2

    :cond_7
    return v3
.end method

.method public dividedBy(JLjava/math/RoundingMode;)Lnet/time4j/MachineTime;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/RoundingMode;",
            ")",
            "Lnet/time4j/MachineTime<",
            "TU;>;"
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    .line 895
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/MachineTime;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    const/16 v1, 0x9

    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v0, v1, p3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 898
    iget-object p2, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object p3, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne p2, p3, :cond_1

    .line 899
    invoke-static {p1}, Lnet/time4j/MachineTime;->ofPosixSeconds(Ljava/math/BigDecimal;)Lnet/time4j/MachineTime;

    move-result-object p1

    goto :goto_0

    .line 901
    :cond_1
    invoke-static {p1}, Lnet/time4j/MachineTime;->ofSISeconds(Ljava/math/BigDecimal;)Lnet/time4j/MachineTime;

    move-result-object p1

    .line 904
    :goto_0
    invoke-static {p1}, Lnet/time4j/MachineTime;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/MachineTime;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1034
    :cond_0
    instance-of v1, p1, Lnet/time4j/MachineTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1035
    check-cast p1, Lnet/time4j/MachineTime;

    .line 1036
    iget-wide v3, p0, Lnet/time4j/MachineTime;->seconds:J

    iget-wide v5, p1, Lnet/time4j/MachineTime;->seconds:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lnet/time4j/MachineTime;->nanos:I

    iget v3, p1, Lnet/time4j/MachineTime;->nanos:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    iget-object p1, p1, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getFraction()I
    .locals 2

    .line 472
    iget v0, p0, Lnet/time4j/MachineTime;->nanos:I

    if-gez v0, :cond_0

    const v1, 0x3b9aca00

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getPartialAmount(Ljava/lang/Object;)J
    .locals 2

    .line 544
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 545
    invoke-virtual {v0, p1}, Ljava/util/concurrent/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v1, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    if-ne v0, v1, :cond_2

    sget-object v0, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    .line 546
    invoke-virtual {v0, p1}, Lnet/time4j/SI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    :cond_1
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0

    .line 549
    :cond_2
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne v0, v1, :cond_3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 550
    invoke-virtual {v0, p1}, Ljava/util/concurrent/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v1, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    if-ne v0, v1, :cond_5

    sget-object v0, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    .line 551
    invoke-virtual {v0, p1}, Lnet/time4j/SI;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 553
    :cond_4
    iget p1, p0, Lnet/time4j/MachineTime;->nanos:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_5
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getScale()Lnet/time4j/scale/TimeScale;
    .locals 1

    .line 496
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    return-object v0
.end method

.method public getSeconds()J
    .locals 4

    .line 448
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    .line 450
    iget v2, p0, Lnet/time4j/MachineTime;->nanos:I

    if-gez v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getTotalLength()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;"
        }
    .end annotation

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    iget-wide v1, p0, Lnet/time4j/MachineTime;->seconds:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 506
    iget-object v1, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    if-ne v1, v2, :cond_0

    sget-object v1, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 507
    :goto_0
    invoke-static {v1}, Lnet/time4j/MachineTime;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 508
    iget-wide v2, p0, Lnet/time4j/MachineTime;->seconds:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_1
    iget v1, p0, Lnet/time4j/MachineTime;->nanos:I

    if-eqz v1, :cond_3

    .line 512
    iget-object v1, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    if-ne v1, v2, :cond_2

    sget-object v1, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 514
    :goto_1
    invoke-static {v1}, Lnet/time4j/MachineTime;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 515
    iget v2, p0, Lnet/time4j/MachineTime;->nanos:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, v1}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1050
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0xa1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x17

    .line 1051
    iget v0, p0, Lnet/time4j/MachineTime;->nanos:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x17

    .line 1052
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    invoke-virtual {v0}, Lnet/time4j/scale/TimeScale;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public inverse()Lnet/time4j/MachineTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/MachineTime<",
            "TU;>;"
        }
    .end annotation

    .line 778
    invoke-virtual {p0}, Lnet/time4j/MachineTime;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 782
    :cond_0
    new-instance v0, Lnet/time4j/MachineTime;

    iget-wide v1, p0, Lnet/time4j/MachineTime;->seconds:J

    invoke-static {v1, v2}, Lnet/time4j/MachineTime;->negateExact(J)J

    move-result-wide v1

    iget v3, p0, Lnet/time4j/MachineTime;->nanos:I

    neg-int v3, v3

    iget-object v4, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/MachineTime;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 577
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lnet/time4j/MachineTime;->nanos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLongerThan(Lnet/time4j/MachineTime;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/MachineTime<",
            "TU;>;)Z"
        }
    .end annotation

    .line 988
    invoke-virtual {p0}, Lnet/time4j/MachineTime;->abs()Lnet/time4j/MachineTime;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/MachineTime;->abs()Lnet/time4j/MachineTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/MachineTime;->compareTo(Lnet/time4j/MachineTime;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNegative()Z
    .locals 4

    .line 563
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lnet/time4j/MachineTime;->nanos:I

    if-gez v0, :cond_0

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

.method public isPositive()Z
    .locals 4

    .line 570
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lnet/time4j/MachineTime;->nanos:I

    if-lez v0, :cond_0

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

.method public isShorterThan(Lnet/time4j/MachineTime;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/MachineTime<",
            "TU;>;)Z"
        }
    .end annotation

    .line 964
    invoke-virtual {p0}, Lnet/time4j/MachineTime;->abs()Lnet/time4j/MachineTime;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/MachineTime;->abs()Lnet/time4j/MachineTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/MachineTime;->compareTo(Lnet/time4j/MachineTime;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minus(JLjava/lang/Object;)Lnet/time4j/MachineTime;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTU;)",
            "Lnet/time4j/MachineTime<",
            "TU;>;"
        }
    .end annotation

    .line 702
    invoke-static {p1, p2}, Lnet/time4j/MachineTime;->negateExact(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/MachineTime;->plus(JLjava/lang/Object;)Lnet/time4j/MachineTime;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lnet/time4j/MachineTime;)Lnet/time4j/MachineTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/MachineTime<",
            "TU;>;)",
            "Lnet/time4j/MachineTime<",
            "TU;>;"
        }
    .end annotation

    .line 725
    invoke-virtual {p1}, Lnet/time4j/MachineTime;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 727
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/MachineTime;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    invoke-virtual {p1}, Lnet/time4j/MachineTime;->inverse()Lnet/time4j/MachineTime;

    move-result-object p1

    return-object p1

    .line 731
    :cond_1
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    iget-wide v2, p1, Lnet/time4j/MachineTime;->seconds:J

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    .line 732
    iget v2, p0, Lnet/time4j/MachineTime;->nanos:I

    iget p1, p1, Lnet/time4j/MachineTime;->nanos:I

    sub-int/2addr v2, p1

    .line 733
    new-instance p1, Lnet/time4j/MachineTime;

    iget-object v3, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    invoke-direct {p1, v0, v1, v2, v3}, Lnet/time4j/MachineTime;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-object p1
.end method

.method public multipliedBy(D)Lnet/time4j/MachineTime;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lnet/time4j/MachineTime<",
            "TU;>;"
        }
    .end annotation

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_2

    .line 849
    iget-object p1, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object p2, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne p1, p2, :cond_1

    .line 850
    sget-object p1, Lnet/time4j/MachineTime;->POSIX_ZERO:Lnet/time4j/MachineTime;

    invoke-static {p1}, Lnet/time4j/MachineTime;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/MachineTime;

    return-object p1

    .line 852
    :cond_1
    sget-object p1, Lnet/time4j/MachineTime;->UTC_ZERO:Lnet/time4j/MachineTime;

    invoke-static {p1}, Lnet/time4j/MachineTime;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/MachineTime;

    return-object p1

    .line 854
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    .line 855
    invoke-virtual {p0}, Lnet/time4j/MachineTime;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, p1

    .line 857
    iget-object p1, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object p2, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne p1, p2, :cond_3

    .line 858
    invoke-static {v0, v1}, Lnet/time4j/MachineTime;->ofPosixSeconds(D)Lnet/time4j/MachineTime;

    move-result-object p1

    goto :goto_0

    .line 860
    :cond_3
    invoke-static {v0, v1}, Lnet/time4j/MachineTime;->ofSISeconds(D)Lnet/time4j/MachineTime;

    move-result-object p1

    .line 862
    :goto_0
    invoke-static {p1}, Lnet/time4j/MachineTime;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/MachineTime;

    return-object p1

    .line 864
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not finite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multipliedBy(J)Lnet/time4j/MachineTime;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lnet/time4j/MachineTime<",
            "TU;>;"
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 803
    iget-object p1, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object p2, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne p1, p2, :cond_1

    .line 804
    sget-object p1, Lnet/time4j/MachineTime;->POSIX_ZERO:Lnet/time4j/MachineTime;

    invoke-static {p1}, Lnet/time4j/MachineTime;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/MachineTime;

    return-object p1

    .line 806
    :cond_1
    sget-object p1, Lnet/time4j/MachineTime;->UTC_ZERO:Lnet/time4j/MachineTime;

    invoke-static {p1}, Lnet/time4j/MachineTime;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/MachineTime;

    return-object p1

    .line 811
    :cond_2
    invoke-virtual {p0}, Lnet/time4j/MachineTime;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 814
    iget-object p2, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v0, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne p2, v0, :cond_3

    .line 815
    invoke-static {p1}, Lnet/time4j/MachineTime;->ofPosixSeconds(Ljava/math/BigDecimal;)Lnet/time4j/MachineTime;

    move-result-object p1

    goto :goto_0

    .line 817
    :cond_3
    invoke-static {p1}, Lnet/time4j/MachineTime;->ofSISeconds(Ljava/math/BigDecimal;)Lnet/time4j/MachineTime;

    move-result-object p1

    .line 820
    :goto_0
    invoke-static {p1}, Lnet/time4j/MachineTime;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/MachineTime;

    return-object p1
.end method

.method public plus(JLjava/lang/Object;)Lnet/time4j/MachineTime;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTU;)",
            "Lnet/time4j/MachineTime<",
            "TU;>;"
        }
    .end annotation

    .line 604
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    .line 605
    iget v2, p0, Lnet/time4j/MachineTime;->nanos:I

    .line 607
    iget-object v3, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v4, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    const v5, 0x3b9aca00

    if-ne v3, v4, :cond_1

    .line 608
    const-class v3, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/TimeUnit;

    .line 610
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v3}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const-wide/16 v6, 0x1

    if-ltz v3, :cond_0

    .line 611
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 616
    invoke-virtual {v3, v6, v7, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 614
    invoke-static {p1, p2, v3, v4}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p1

    .line 612
    invoke-static {v0, v1, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    goto :goto_1

    :cond_0
    int-to-long v2, v2

    .line 619
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 624
    invoke-virtual {v4, v6, v7, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 622
    invoke-static {p1, p2, v6, v7}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p1

    .line 620
    invoke-static {v2, v3, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 626
    invoke-static {p1, p2, v5}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 627
    invoke-static {p1, p2, v5}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v2

    goto :goto_0

    .line 630
    :cond_1
    sget-object v3, Lnet/time4j/MachineTime$1;->$SwitchMap$net$time4j$SI:[I

    const-class v4, Lnet/time4j/SI;

    invoke-virtual {v4, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/SI;

    invoke-virtual {v4}, Lnet/time4j/SI;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    int-to-long v2, v2

    .line 635
    invoke-static {v2, v3, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 636
    invoke-static {p1, p2, v5}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 637
    invoke-static {p1, p2, v5}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v2

    :goto_0
    move-wide p1, v0

    goto :goto_1

    .line 640
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 632
    :cond_3
    invoke-static {v0, v1, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 644
    :goto_1
    new-instance p3, Lnet/time4j/MachineTime;

    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    invoke-direct {p3, p1, p2, v2, v0}, Lnet/time4j/MachineTime;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-object p3
.end method

.method public plus(Lnet/time4j/MachineTime;)Lnet/time4j/MachineTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/MachineTime<",
            "TU;>;)",
            "Lnet/time4j/MachineTime<",
            "TU;>;"
        }
    .end annotation

    .line 666
    invoke-virtual {p1}, Lnet/time4j/MachineTime;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 668
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/MachineTime;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 672
    :cond_1
    iget-wide v0, p0, Lnet/time4j/MachineTime;->seconds:J

    iget-wide v2, p1, Lnet/time4j/MachineTime;->seconds:J

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 673
    iget v2, p0, Lnet/time4j/MachineTime;->nanos:I

    iget p1, p1, Lnet/time4j/MachineTime;->nanos:I

    add-int/2addr v2, p1

    .line 674
    new-instance p1, Lnet/time4j/MachineTime;

    iget-object v3, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    invoke-direct {p1, v0, v1, v2, v3}, Lnet/time4j/MachineTime;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-object p1
.end method

.method public subtractFrom(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne v0, v1, :cond_0

    .line 933
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 934
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 936
    :cond_0
    sget-object v0, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    .line 937
    sget-object v1, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    .line 940
    :goto_0
    iget-wide v2, p0, Lnet/time4j/MachineTime;->seconds:J

    invoke-virtual {p1, v2, v3, v0}, Lnet/time4j/engine/TimePoint;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    iget v0, p0, Lnet/time4j/MachineTime;->nanos:I

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3, v1}, Lnet/time4j/engine/TimePoint;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1092
    invoke-direct {p0, v0}, Lnet/time4j/MachineTime;->createNumber(Ljava/lang/StringBuilder;)V

    .line 1093
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    invoke-direct {p0, v0}, Lnet/time4j/MachineTime;->createNumber(Ljava/lang/StringBuilder;)V

    const-string v1, "s ["

    .line 1072
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    iget-object v1, p0, Lnet/time4j/MachineTime;->scale:Lnet/time4j/scale/TimeScale;

    invoke-virtual {v1}, Lnet/time4j/scale/TimeScale;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 1074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
