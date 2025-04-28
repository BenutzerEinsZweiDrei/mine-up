.class Lnet/time4j/calendar/JulianCalendar$Transformer;
.super Ljava/lang/Object;
.source "JulianCalendar.java"

# interfaces
.implements Lnet/time4j/calendar/EraYearMonthDaySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JulianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/calendar/EraYearMonthDaySystem<",
        "Lnet/time4j/calendar/JulianCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/JulianCalendar$1;)V
    .locals 0

    .line 993
    invoke-direct {p0}, Lnet/time4j/calendar/JulianCalendar$Transformer;-><init>()V

    return-void
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

    .line 1153
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    .line 1154
    sget-object v1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/time4j/engine/CalendarEra;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 1155
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I
    .locals 2

    .line 1033
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    .line 1035
    :cond_0
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    if-ne p1, v0, :cond_2

    .line 1036
    invoke-static {v1, p2}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p1

    :goto_0
    if-lt p2, v1, :cond_1

    const v0, 0x3b9ac9ff

    if-gt p2, v0, :cond_1

    if-lt p3, v1, :cond_1

    const/16 v0, 0xc

    if-gt p3, v0, :cond_1

    .line 1042
    invoke-static {p1, p3}, Lnet/time4j/calendar/JulianCalendar;->access$600(II)I

    move-result p1

    return p1

    .line 1045
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", month="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1038
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid era: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I
    .locals 2

    .line 1057
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    .line 1059
    :cond_0
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    if-ne p1, v0, :cond_3

    .line 1060
    invoke-static {v1, p2}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p1

    :goto_0
    if-lt p2, v1, :cond_2

    const v0, 0x3b9ac9ff

    if-gt p2, v0, :cond_2

    .line 1066
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    const/16 p1, 0x16e

    goto :goto_1

    :cond_1
    const/16 p1, 0x16d

    :goto_1
    return p1

    .line 1069
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1062
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid era: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getMaximumSinceUTC()J
    .locals 5

    .line 1145
    new-instance v0, Lnet/time4j/calendar/JulianCalendar;

    const v1, 0x3b9ac9ff

    const/16 v2, 0xc

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/JulianCalendar;-><init>(IIILnet/time4j/calendar/JulianCalendar$1;)V

    .line 1146
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/JulianCalendar$Transformer;->transform(Lnet/time4j/calendar/JulianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 4

    .line 1137
    new-instance v0, Lnet/time4j/calendar/JulianCalendar;

    const v1, -0x3b9ac9fe

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lnet/time4j/calendar/JulianCalendar;-><init>(IIILnet/time4j/calendar/JulianCalendar$1;)V

    .line 1138
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/JulianCalendar$Transformer;->transform(Lnet/time4j/calendar/JulianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid(Lnet/time4j/engine/CalendarEra;III)Z
    .locals 3

    .line 1008
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    .line 1010
    :cond_0
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    if-ne p1, v0, :cond_2

    .line 1011
    invoke-static {v2, p2}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p1

    :goto_0
    if-lt p2, v2, :cond_2

    const v0, 0x3b9ac9ff

    if-gt p2, v0, :cond_2

    if-lt p3, v2, :cond_2

    const/16 p2, 0xc

    if-gt p3, p2, :cond_2

    if-ge p4, v2, :cond_1

    goto :goto_1

    .line 1020
    :cond_1
    invoke-static {p1, p3}, Lnet/time4j/calendar/JulianCalendar;->access$600(II)I

    move-result p1

    if-gt p4, p1, :cond_2

    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 993
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$Transformer;->transform(Lnet/time4j/calendar/JulianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/JulianCalendar;)J
    .locals 6

    .line 1116
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$700(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v0

    int-to-long v0, v0

    .line 1117
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$800(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    add-int/lit8 v2, v2, 0xc

    :cond_0
    const-wide/16 v3, 0x16d

    mul-long/2addr v3, v0

    const/4 v5, 0x4

    .line 1126
    invoke-static {v0, v1, v5}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    add-long/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x99

    div-int/lit8 v2, v2, 0x5

    int-to-long v0, v2

    add-long/2addr v3, v0

    const-wide/16 v0, 0x7b

    sub-long/2addr v3, v0

    .line 1128
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$900(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    int-to-long v0, p1

    add-long/2addr v3, v0

    const-wide/32 v0, 0xafd48

    sub-long/2addr v3, v0

    return-wide v3
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 993
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JulianCalendar$Transformer;->transform(J)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/JulianCalendar;
    .locals 7

    const-wide/32 v0, 0xafd48

    .line 1081
    :try_start_0
    invoke-static {p1, p2, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    const/16 v0, 0x5b5

    .line 1083
    invoke-static {p1, p2, v0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v1

    .line 1084
    invoke-static {p1, p2, v0}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    const/16 p2, 0x5b4

    const/4 v0, 0x2

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x1

    if-ne p1, p2, :cond_0

    add-long/2addr v1, v5

    mul-long/2addr v1, v3

    const/16 p1, 0x1d

    goto :goto_0

    .line 1091
    :cond_0
    div-int/lit16 p2, p1, 0x16d

    .line 1092
    rem-int/lit16 p1, p1, 0x16d

    mul-long/2addr v1, v3

    int-to-long v3, p2

    add-long/2addr v1, v3

    add-int/lit8 p2, p1, 0x1f

    mul-int/lit8 p2, p2, 0x5

    .line 1095
    div-int/lit16 p2, p2, 0x99

    add-int/2addr v0, p2

    add-int/lit8 p2, v0, 0x1

    mul-int/lit16 p2, p2, 0x99

    .line 1096
    div-int/lit8 p2, p2, 0x5

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x7b

    const/16 p2, 0xc

    if-le v0, p2, :cond_1

    add-long/2addr v1, v5

    add-int/lit8 v0, v0, -0xc

    :cond_1
    :goto_0
    cmp-long p2, v1, v5

    if-ltz p2, :cond_2

    .line 1104
    sget-object v3, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    goto :goto_1

    :cond_2
    sget-object v3, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    :goto_1
    if-ltz p2, :cond_3

    goto :goto_2

    .line 1105
    :cond_3
    invoke-static {v5, v6, v1, v2}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v1

    :goto_2
    invoke-static {v1, v2}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p2

    .line 1106
    invoke-static {v3, p2, v0, p1}, Lnet/time4j/calendar/JulianCalendar;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1108
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
