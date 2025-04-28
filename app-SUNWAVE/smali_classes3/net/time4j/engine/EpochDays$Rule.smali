.class Lnet/time4j/engine/EpochDays$Rule;
.super Ljava/lang/Object;
.source "EpochDays.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/EpochDays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TD;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "TD;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final UTC_OFFSET:I = 0x2da


# instance fields
.field private final calsys:Lnet/time4j/engine/CalendarSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/CalendarSystem<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final element:Lnet/time4j/engine/EpochDays;


# direct methods
.method constructor <init>(Lnet/time4j/engine/EpochDays;Lnet/time4j/engine/CalendarSystem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/EpochDays;",
            "Lnet/time4j/engine/CalendarSystem<",
            "TD;>;)V"
        }
    .end annotation

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p1, p0, Lnet/time4j/engine/EpochDays$Rule;->element:Lnet/time4j/engine/EpochDays;

    .line 371
    iput-object p2, p0, Lnet/time4j/engine/EpochDays$Rule;->calsys:Lnet/time4j/engine/CalendarSystem;

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 350
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/EpochDays$Rule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 350
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/EpochDays$Rule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 455
    iget-object p1, p0, Lnet/time4j/engine/EpochDays$Rule;->element:Lnet/time4j/engine/EpochDays;

    iget-object v0, p0, Lnet/time4j/engine/EpochDays$Rule;->calsys:Lnet/time4j/engine/CalendarSystem;

    .line 457
    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v0

    const-wide/16 v2, 0x2da

    add-long/2addr v0, v2

    sget-object v2, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 456
    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    .line 461
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 350
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/EpochDays$Rule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 442
    iget-object p1, p0, Lnet/time4j/engine/EpochDays$Rule;->element:Lnet/time4j/engine/EpochDays;

    iget-object v0, p0, Lnet/time4j/engine/EpochDays$Rule;->calsys:Lnet/time4j/engine/CalendarSystem;

    .line 444
    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v0

    const-wide/16 v2, 0x2da

    add-long/2addr v0, v2

    sget-object v2, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 443
    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    .line 448
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 350
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/EpochDays$Rule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lnet/time4j/engine/EpochDays$Rule;->element:Lnet/time4j/engine/EpochDays;

    iget-object v1, p0, Lnet/time4j/engine/EpochDays$Rule;->calsys:Lnet/time4j/engine/CalendarSystem;

    .line 382
    invoke-interface {v1, p1}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/16 v3, 0x2da

    add-long/2addr v1, v3

    sget-object p1, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 381
    invoke-virtual {v0, v1, v2, p1}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    .line 385
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 350
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/EpochDays$Rule;->getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 350
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/EpochDays$Rule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Long;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/Long;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 400
    :cond_0
    :try_start_0
    sget-object v0, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 402
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p2, p0, Lnet/time4j/engine/EpochDays$Rule;->element:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v1, v2, p2}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    const-wide/16 v2, 0x2da

    .line 401
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    .line 406
    iget-object p2, p0, Lnet/time4j/engine/EpochDays$Rule;->calsys:Lnet/time4j/engine/CalendarSystem;

    .line 407
    invoke-interface {p2}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1

    iget-object p2, p0, Lnet/time4j/engine/EpochDays$Rule;->calsys:Lnet/time4j/engine/CalendarSystem;

    .line 408
    invoke-interface {p2}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_1

    const/4 p1, 0x1

    :catch_0
    :cond_1
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 350
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/engine/EpochDays$Rule;->withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Long;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Long;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/Long;",
            "Z)TD;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 429
    sget-object p1, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 431
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-object v0, p0, Lnet/time4j/engine/EpochDays$Rule;->element:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide p1

    const-wide/16 v0, 0x2da

    .line 430
    invoke-static {p1, p2, v0, v1}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide p1

    .line 435
    iget-object p3, p0, Lnet/time4j/engine/EpochDays$Rule;->calsys:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {p3, p1, p2}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    return-object p1

    .line 426
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing epoch day value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
