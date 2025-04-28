.class Lnet/time4j/calendar/EthiopianCalendar$Transformer;
.super Ljava/lang/Object;
.source "EthiopianCalendar.java"

# interfaces
.implements Lnet/time4j/calendar/EraYearMonthDaySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EthiopianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/calendar/EraYearMonthDaySystem<",
        "Lnet/time4j/calendar/EthiopianCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/EthiopianCalendar$1;)V
    .locals 0

    .line 1004
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianCalendar$Transformer;-><init>()V

    return-void
.end method

.method private static checkEra(Lnet/time4j/engine/CalendarEra;)V
    .locals 3

    .line 1145
    instance-of v0, p0, Lnet/time4j/calendar/EthiopianEra;

    if-eqz v0, :cond_0

    return-void

    .line 1146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEras()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 1137
    sget-object v0, Lnet/time4j/calendar/EthiopianEra;->AMETE_ALEM:Lnet/time4j/calendar/EthiopianEra;

    .line 1138
    sget-object v1, Lnet/time4j/calendar/EthiopianEra;->AMETE_MIHRET:Lnet/time4j/calendar/EthiopianEra;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/time4j/engine/CalendarEra;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 1139
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I
    .locals 3

    .line 1036
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar$Transformer;->checkEra(Lnet/time4j/engine/CalendarEra;)V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    .line 1038
    sget-object v1, Lnet/time4j/calendar/EthiopianEra;->AMETE_ALEM:Lnet/time4j/calendar/EthiopianEra;

    .line 1040
    invoke-virtual {v1, p1}, Lnet/time4j/calendar/EthiopianEra;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3c8b

    goto :goto_0

    :cond_0
    const/16 v1, 0x270f

    :goto_0
    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_3

    const/16 v0, 0xd

    if-gt p3, v0, :cond_3

    const/16 p1, 0xc

    if-gt p3, p1, :cond_1

    const/16 p1, 0x1e

    return p1

    .line 1047
    :cond_1
    rem-int/lit8 p2, p2, 0x4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    const/4 p1, 0x6

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    :goto_1
    return p1

    .line 1051
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of bounds: era="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", year="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", month="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I
    .locals 3

    .line 1062
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar$Transformer;->checkEra(Lnet/time4j/engine/CalendarEra;)V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    .line 1064
    sget-object v0, Lnet/time4j/calendar/EthiopianEra;->AMETE_ALEM:Lnet/time4j/calendar/EthiopianEra;

    .line 1066
    invoke-virtual {v0, p1}, Lnet/time4j/calendar/EthiopianEra;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c8b

    goto :goto_0

    :cond_0
    const/16 v0, 0x270f

    :goto_0
    if-gt p2, v0, :cond_2

    .line 1068
    rem-int/lit8 p2, p2, 0x4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    const/16 p1, 0x16e

    goto :goto_1

    :cond_1
    const/16 p1, 0x16d

    :goto_1
    return p1

    .line 1071
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of bounds: era="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", year="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaximumSinceUTC()J
    .locals 5

    .line 1128
    new-instance v0, Lnet/time4j/calendar/EthiopianCalendar;

    const/16 v1, 0x270f

    const/16 v2, 0xd

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/EthiopianCalendar;-><init>(IIILnet/time4j/calendar/EthiopianCalendar$1;)V

    .line 1129
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/EthiopianCalendar$Transformer;->transform(Lnet/time4j/calendar/EthiopianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 4

    .line 1120
    new-instance v0, Lnet/time4j/calendar/EthiopianCalendar;

    const/16 v1, -0x157b

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lnet/time4j/calendar/EthiopianCalendar;-><init>(IIILnet/time4j/calendar/EthiopianCalendar$1;)V

    .line 1121
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/EthiopianCalendar$Transformer;->transform(Lnet/time4j/calendar/EthiopianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid(Lnet/time4j/engine/CalendarEra;III)Z
    .locals 2

    .line 1017
    instance-of v0, p1, Lnet/time4j/calendar/EthiopianEra;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-lt p2, v1, :cond_1

    sget-object v0, Lnet/time4j/calendar/EthiopianEra;->AMETE_ALEM:Lnet/time4j/calendar/EthiopianEra;

    .line 1020
    invoke-virtual {v0, p1}, Lnet/time4j/calendar/EthiopianEra;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c8b

    goto :goto_0

    :cond_0
    const/16 v0, 0x270f

    :goto_0
    if-gt p2, v0, :cond_1

    if-lt p3, v1, :cond_1

    const/16 v0, 0xd

    if-gt p3, v0, :cond_1

    if-lt p4, v1, :cond_1

    .line 1024
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianCalendar$Transformer;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p1

    if-gt p4, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 1004
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$Transformer;->transform(Lnet/time4j/calendar/EthiopianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/EthiopianCalendar;)J
    .locals 4

    .line 1111
    invoke-static {}, Lnet/time4j/calendar/EthiopianCalendar;->access$700()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 1112
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$900(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit16 v2, v2, 0x16d

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$900(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1113
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$1000(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x1e

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$1100(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 1004
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EthiopianCalendar$Transformer;->transform(J)Lnet/time4j/calendar/EthiopianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/EthiopianCalendar;
    .locals 6

    const-wide/16 v0, 0x4

    .line 1085
    :try_start_0
    invoke-static {}, Lnet/time4j/calendar/EthiopianCalendar;->access$700()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v2

    .line 1083
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x5b7

    .line 1082
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    const/16 v2, 0x5b5

    .line 1081
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    .line 1080
    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v0

    .line 1089
    new-instance v1, Lnet/time4j/calendar/EthiopianCalendar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3, v3, v2}, Lnet/time4j/calendar/EthiopianCalendar;-><init>(IIILnet/time4j/calendar/EthiopianCalendar$1;)V

    invoke-virtual {p0, v1}, Lnet/time4j/calendar/EthiopianCalendar$Transformer;->transform(Lnet/time4j/calendar/EthiopianCalendar;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v1

    int-to-long v4, v1

    sub-long v4, p1, v4

    const/16 v1, 0x1e

    .line 1090
    invoke-static {v4, v5, v1}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v1

    add-int/2addr v1, v3

    .line 1091
    new-instance v4, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-direct {v4, v0, v1, v3, v2}, Lnet/time4j/calendar/EthiopianCalendar;-><init>(IIILnet/time4j/calendar/EthiopianCalendar$1;)V

    invoke-virtual {p0, v4}, Lnet/time4j/calendar/EthiopianCalendar$Transformer;->transform(Lnet/time4j/calendar/EthiopianCalendar;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v2

    int-to-long v4, v2

    .line 1092
    invoke-static {p1, p2, v4, v5}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p1

    add-int/2addr p1, v3

    .line 1093
    sget-object p2, Lnet/time4j/calendar/EthiopianEra;->AMETE_MIHRET:Lnet/time4j/calendar/EthiopianEra;

    if-ge v0, v3, :cond_0

    add-int/lit16 v0, v0, 0x157c

    .line 1097
    sget-object p2, Lnet/time4j/calendar/EthiopianEra;->AMETE_ALEM:Lnet/time4j/calendar/EthiopianEra;

    .line 1100
    :cond_0
    invoke-static {p2, v0, v1, p1}, Lnet/time4j/calendar/EthiopianCalendar;->of(Lnet/time4j/calendar/EthiopianEra;III)Lnet/time4j/calendar/EthiopianCalendar;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1102
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
