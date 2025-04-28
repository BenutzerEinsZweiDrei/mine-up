.class abstract Lnet/time4j/calendar/hindu/HinduCS;
.super Ljava/lang/Object;
.source "HinduCS.java"

# interfaces
.implements Lnet/time4j/engine/CalendarSystem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/CalendarSystem<",
        "Lnet/time4j/calendar/hindu/HinduCalendar;",
        ">;"
    }
.end annotation


# static fields
.field static final KALI_YUGA_EPOCH:J = -0x11499fL


# instance fields
.field final variant:Lnet/time4j/calendar/hindu/HinduVariant;


# direct methods
.method constructor <init>(Lnet/time4j/calendar/hindu/HinduVariant;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    return-void
.end method

.method static modulo(DD)D
    .locals 2

    div-double v0, p0, p2

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr p2, v0

    sub-double/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method abstract create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;
.end method

.method abstract create(J)Lnet/time4j/calendar/hindu/HinduCalendar;
.end method

.method public getEras()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lnet/time4j/calendar/hindu/HinduEra;->values()[Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final isExpunged(ILnet/time4j/calendar/hindu/HinduMonth;)Z
    .locals 2

    const/16 v0, 0xf

    .line 113
    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 114
    invoke-virtual {p0, v0, v1}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMonth()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object p1

    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/IndianMonth;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final isExpunged(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z
    .locals 2

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 125
    invoke-virtual {p0, v0, v1}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getExpiredYearOfKaliYuga()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 129
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMonth()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/hindu/HinduMonth;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDayOfMonth()Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object p1

    invoke-virtual {p1, p3}, Lnet/time4j/calendar/hindu/HinduDay;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method abstract isValid(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 43
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCS;->transform(Lnet/time4j/calendar/hindu/HinduCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final transform(Lnet/time4j/calendar/hindu/HinduCalendar;)J
    .locals 2

    .line 82
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCS;->transform(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1
.end method

.method public final transform(J)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 7

    .line 70
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCS;->getMinimumSinceUTC()J

    move-result-wide v0

    .line 71
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCS;->getMaximumSinceUTC()J

    move-result-wide v2

    cmp-long v4, p1, v0

    if-ltz v4, :cond_0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    .line 77
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " <= "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
