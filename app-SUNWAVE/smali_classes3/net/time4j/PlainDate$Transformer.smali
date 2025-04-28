.class Lnet/time4j/PlainDate$Transformer;
.super Ljava/lang/Object;
.source "PlainDate.java"

# interfaces
.implements Lnet/time4j/engine/CalendarSystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/CalendarSystem<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_LONG:J = 0x550a1b461dL

.field private static final MIN_LONG:J = -0x550a313fb4L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/PlainDate$1;)V
    .locals 0

    .line 2561
    invoke-direct {p0}, Lnet/time4j/PlainDate$Transformer;-><init>()V

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

    .line 2621
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSinceUTC()J
    .locals 2

    const-wide v0, 0x550a1b461dL

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 2

    const-wide v0, -0x550a313fb4L

    return-wide v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 2561
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$Transformer;->transform(Lnet/time4j/PlainDate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/PlainDate;)J
    .locals 3

    .line 2597
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    .line 2598
    invoke-static {p1}, Lnet/time4j/base/GregorianMath;->toMJD(Lnet/time4j/base/GregorianDate;)J

    move-result-wide v1

    sget-object p1, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    .line 2597
    invoke-virtual {v0, v1, v2, p1}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 2561
    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainDate$Transformer;->transform(J)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/PlainDate;
    .locals 2

    const-wide v0, -0x550a313fb4L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2575
    sget-object p1, Lnet/time4j/PlainDate;->MIN:Lnet/time4j/PlainDate;

    return-object p1

    :cond_0
    const-wide v0, 0x550a1b461dL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2577
    sget-object p1, Lnet/time4j/PlainDate;->MAX:Lnet/time4j/PlainDate;

    return-object p1

    .line 2580
    :cond_1
    sget-object v0, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    .line 2581
    invoke-virtual {v0, p1, p2, v1}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide p1

    .line 2584
    invoke-static {p1, p2}, Lnet/time4j/base/GregorianMath;->toPackedDate(J)J

    move-result-wide p1

    .line 2587
    invoke-static {p1, p2}, Lnet/time4j/base/GregorianMath;->readYear(J)I

    move-result v0

    .line 2588
    invoke-static {p1, p2}, Lnet/time4j/base/GregorianMath;->readMonth(J)I

    move-result v1

    .line 2589
    invoke-static {p1, p2}, Lnet/time4j/base/GregorianMath;->readDayOfMonth(J)I

    move-result p1

    .line 2586
    invoke-static {v0, v1, p1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method
