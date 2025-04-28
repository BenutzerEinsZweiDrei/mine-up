.class public final Lnet/time4j/calendar/hindu/HinduDay;
.super Lnet/time4j/calendar/hindu/HinduPrimitive;
.source "HinduDay.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lnet/time4j/engine/ChronoCondition;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/hindu/HinduPrimitive;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/calendar/hindu/HinduDay;",
        ">;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Lnet/time4j/calendar/hindu/HinduCalendar;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final leap:Z

.field private final value:I


# direct methods
.method private constructor <init>(IZ)V
    .locals 2

    .line 63
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduPrimitive;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 69
    iput p1, p0, Lnet/time4j/calendar/hindu/HinduDay;->value:I

    .line 70
    iput-boolean p2, p0, Lnet/time4j/calendar/hindu/HinduDay;->leap:Z

    return-void

    .line 66
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Day-of-month value out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;
    .locals 2

    .line 96
    new-instance v0, Lnet/time4j/calendar/hindu/HinduDay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/calendar/hindu/HinduDay;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lnet/time4j/calendar/hindu/HinduDay;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduDay;->compareTo(Lnet/time4j/calendar/hindu/HinduDay;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/calendar/hindu/HinduDay;)I
    .locals 2

    .line 194
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduDay;->value:I

    iget v1, p1, Lnet/time4j/calendar/hindu/HinduDay;->value:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 197
    iget-boolean v0, p0, Lnet/time4j/calendar/hindu/HinduDay;->leap:Z

    if-eqz v0, :cond_0

    .line 198
    iget-boolean p1, p1, Lnet/time4j/calendar/hindu/HinduDay;->leap:Z

    xor-int/lit8 v0, p1, 0x1

    goto :goto_1

    .line 200
    :cond_0
    iget-boolean p1, p1, Lnet/time4j/calendar/hindu/HinduDay;->leap:Z

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v0, p1

    :cond_2
    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 157
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/hindu/HinduDay;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 158
    check-cast p1, Lnet/time4j/calendar/hindu/HinduDay;

    .line 159
    iget v1, p0, Lnet/time4j/calendar/hindu/HinduDay;->value:I

    iget v3, p1, Lnet/time4j/calendar/hindu/HinduDay;->value:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lnet/time4j/calendar/hindu/HinduDay;->leap:Z

    iget-boolean p1, p1, Lnet/time4j/calendar/hindu/HinduDay;->leap:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getValue()I
    .locals 1

    .line 116
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduDay;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 167
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduDay;->value:I

    iget-boolean v1, p0, Lnet/time4j/calendar/hindu/HinduDay;->leap:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isLeap()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lnet/time4j/calendar/hindu/HinduDay;->leap:Z

    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduDay;->test(Lnet/time4j/calendar/hindu/HinduCalendar;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/calendar/hindu/HinduCalendar;)Z
    .locals 0

    .line 209
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDayOfMonth()Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduDay;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 172
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduDay;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-boolean v1, p0, Lnet/time4j/calendar/hindu/HinduDay;->leap:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public withLeap()Lnet/time4j/calendar/hindu/HinduDay;
    .locals 3

    .line 150
    iget-boolean v0, p0, Lnet/time4j/calendar/hindu/HinduDay;->leap:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/time4j/calendar/hindu/HinduDay;

    iget v1, p0, Lnet/time4j/calendar/hindu/HinduDay;->value:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/hindu/HinduDay;-><init>(IZ)V

    :goto_0
    return-object v0
.end method
