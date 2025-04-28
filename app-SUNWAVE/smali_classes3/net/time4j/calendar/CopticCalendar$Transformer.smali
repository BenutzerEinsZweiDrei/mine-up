.class Lnet/time4j/calendar/CopticCalendar$Transformer;
.super Ljava/lang/Object;
.source "CopticCalendar.java"

# interfaces
.implements Lnet/time4j/calendar/EraYearMonthDaySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/CopticCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/calendar/EraYearMonthDaySystem<",
        "Lnet/time4j/calendar/CopticCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/CopticCalendar$1;)V
    .locals 0

    .line 929
    invoke-direct {p0}, Lnet/time4j/calendar/CopticCalendar$Transformer;-><init>()V

    return-void
.end method


# virtual methods
.method public getEras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 1058
    sget-object v0, Lnet/time4j/calendar/CopticEra;->ANNO_MARTYRUM:Lnet/time4j/calendar/CopticEra;

    .line 1059
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I
    .locals 2

    .line 961
    sget-object v0, Lnet/time4j/calendar/CopticEra;->ANNO_MARTYRUM:Lnet/time4j/calendar/CopticEra;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    if-lt p2, p1, :cond_2

    const/16 v0, 0x270f

    if-gt p2, v0, :cond_2

    if-lt p3, p1, :cond_2

    const/16 p1, 0xd

    if-gt p3, p1, :cond_2

    const/16 p1, 0xc

    if-gt p3, p1, :cond_0

    const/16 p1, 0x1e

    return p1

    .line 974
    :cond_0
    rem-int/lit8 p2, p2, 0x4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    return p1

    .line 978
    :cond_2
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

    .line 962
    :cond_3
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

    .line 988
    sget-object v0, Lnet/time4j/calendar/CopticEra;->ANNO_MARTYRUM:Lnet/time4j/calendar/CopticEra;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    if-lt p2, p1, :cond_1

    const/16 p1, 0x270f

    if-gt p2, p1, :cond_1

    .line 996
    rem-int/lit8 p2, p2, 0x4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    const/16 p1, 0x16e

    goto :goto_0

    :cond_0
    const/16 p1, 0x16d

    :goto_0
    return p1

    .line 999
    :cond_1
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

    .line 989
    :cond_2
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

    .line 1050
    new-instance v0, Lnet/time4j/calendar/CopticCalendar;

    const/16 v1, 0x270f

    const/16 v2, 0xd

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/CopticCalendar;-><init>(IIILnet/time4j/calendar/CopticCalendar$1;)V

    .line 1051
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/CopticCalendar$Transformer;->transform(Lnet/time4j/calendar/CopticCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 3

    .line 1042
    new-instance v0, Lnet/time4j/calendar/CopticCalendar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Lnet/time4j/calendar/CopticCalendar;-><init>(IIILnet/time4j/calendar/CopticCalendar$1;)V

    .line 1043
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/CopticCalendar$Transformer;->transform(Lnet/time4j/calendar/CopticCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid(Lnet/time4j/engine/CalendarEra;III)Z
    .locals 2

    .line 942
    sget-object v0, Lnet/time4j/calendar/CopticEra;->ANNO_MARTYRUM:Lnet/time4j/calendar/CopticEra;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    if-lt p2, v1, :cond_0

    const/16 v0, 0x270f

    if-gt p2, v0, :cond_0

    if-lt p3, v1, :cond_0

    const/16 v0, 0xd

    if-gt p3, v0, :cond_0

    if-lt p4, v1, :cond_0

    .line 949
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/CopticCalendar$Transformer;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p1

    if-gt p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 929
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CopticCalendar$Transformer;->transform(Lnet/time4j/calendar/CopticCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/CopticCalendar;)J
    .locals 4

    .line 1033
    invoke-static {}, Lnet/time4j/calendar/CopticCalendar;->access$500()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 1034
    invoke-static {p1}, Lnet/time4j/calendar/CopticCalendar;->access$700(Lnet/time4j/calendar/CopticCalendar;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit16 v2, v2, 0x16d

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p1}, Lnet/time4j/calendar/CopticCalendar;->access$700(Lnet/time4j/calendar/CopticCalendar;)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1035
    invoke-static {p1}, Lnet/time4j/calendar/CopticCalendar;->access$800(Lnet/time4j/calendar/CopticCalendar;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x1e

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p1}, Lnet/time4j/calendar/CopticCalendar;->access$900(Lnet/time4j/calendar/CopticCalendar;)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 929
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/CopticCalendar$Transformer;->transform(J)Lnet/time4j/calendar/CopticCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/CopticCalendar;
    .locals 6

    const-wide/16 v0, 0x4

    .line 1013
    :try_start_0
    invoke-static {}, Lnet/time4j/calendar/CopticCalendar;->access$500()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v2

    .line 1011
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x5b7

    .line 1010
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    const/16 v2, 0x5b5

    .line 1009
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    .line 1008
    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v0

    .line 1017
    new-instance v1, Lnet/time4j/calendar/CopticCalendar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3, v3, v2}, Lnet/time4j/calendar/CopticCalendar;-><init>(IIILnet/time4j/calendar/CopticCalendar$1;)V

    invoke-virtual {p0, v1}, Lnet/time4j/calendar/CopticCalendar$Transformer;->transform(Lnet/time4j/calendar/CopticCalendar;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v1

    int-to-long v4, v1

    sub-long v4, p1, v4

    const/16 v1, 0x1e

    .line 1018
    invoke-static {v4, v5, v1}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v1

    add-int/2addr v1, v3

    .line 1019
    new-instance v4, Lnet/time4j/calendar/CopticCalendar;

    invoke-direct {v4, v0, v1, v3, v2}, Lnet/time4j/calendar/CopticCalendar;-><init>(IIILnet/time4j/calendar/CopticCalendar$1;)V

    invoke-virtual {p0, v4}, Lnet/time4j/calendar/CopticCalendar$Transformer;->transform(Lnet/time4j/calendar/CopticCalendar;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v2

    int-to-long v4, v2

    .line 1020
    invoke-static {p1, p2, v4, v5}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p1

    add-int/2addr p1, v3

    .line 1022
    invoke-static {v0, v1, p1}, Lnet/time4j/calendar/CopticCalendar;->of(III)Lnet/time4j/calendar/CopticCalendar;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1024
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
