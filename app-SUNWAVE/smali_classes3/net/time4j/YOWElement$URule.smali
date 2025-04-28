.class Lnet/time4j/YOWElement$URule;
.super Ljava/lang/Object;
.source "YOWElement.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/YOWElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "URule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/YOWElement$1;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Lnet/time4j/YOWElement$URule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 281
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/YOWElement$URule;->addTo(Lnet/time4j/engine/ChronoEntity;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/engine/ChronoEntity;J)Lnet/time4j/engine/ChronoEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-object p1

    .line 296
    :cond_0
    sget-object v0, Lnet/time4j/YOWElement;->INSTANCE:Lnet/time4j/YOWElement;

    .line 299
    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 298
    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    .line 297
    invoke-static {p2, p3}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p2

    .line 303
    sget-object p3, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/PlainDate;

    .line 304
    invoke-virtual {p3}, Lnet/time4j/PlainDate;->getWeekOfYear()I

    move-result v0

    .line 305
    invoke-virtual {p3}, Lnet/time4j/PlainDate;->getDayOfWeek()Lnet/time4j/Weekday;

    move-result-object p3

    const/16 v1, 0x35

    if-ne v0, v1, :cond_1

    const/16 v0, 0x1a

    .line 308
    invoke-static {p2, v0, p3}, Lnet/time4j/PlainDate;->of(IILnet/time4j/Weekday;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 309
    sget-object v1, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    invoke-virtual {v1}, Lnet/time4j/Weekmodel;->weekOfYear()Lnet/time4j/AdjustableElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 312
    :cond_1
    sget-object v1, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    .line 314
    invoke-static {p2, v0, p3}, Lnet/time4j/PlainDate;->of(IILnet/time4j/Weekday;)Lnet/time4j/PlainDate;

    move-result-object p2

    .line 312
    invoke-virtual {p1, v1, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 281
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/YOWElement$URule;->between(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoEntity;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoEntity;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)J"
        }
    .end annotation

    .line 324
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    .line 325
    sget-object v1, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p2, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/PlainDate;

    .line 327
    sget-object v2, Lnet/time4j/YOWElement;->INSTANCE:Lnet/time4j/YOWElement;

    invoke-virtual {v0, v2}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 328
    sget-object v3, Lnet/time4j/YOWElement;->INSTANCE:Lnet/time4j/YOWElement;

    invoke-virtual {v1, v3}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-long v2, v3

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    .line 332
    invoke-static {v0}, Lnet/time4j/YOWElement;->access$400(Lnet/time4j/PlainDate;)I

    move-result v7

    .line 333
    invoke-static {v1}, Lnet/time4j/YOWElement;->access$400(Lnet/time4j/PlainDate;)I

    move-result v8

    const-wide/16 v9, 0x1

    if-lez v6, :cond_0

    if-le v7, v8, :cond_0

    sub-long/2addr v2, v9

    goto :goto_0

    :cond_0
    if-gez v6, :cond_1

    if-ge v7, v8, :cond_1

    add-long/2addr v2, v9

    :cond_1
    :goto_0
    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    if-ne v7, v8, :cond_5

    .line 342
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/Weekday;->getValue()I

    move-result v0

    .line 343
    invoke-virtual {v1}, Lnet/time4j/PlainDate;->getDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/Weekday;->getValue()I

    move-result v1

    if-lez v6, :cond_2

    if-le v0, v1, :cond_2

    sub-long/2addr v2, v9

    goto :goto_1

    :cond_2
    if-gez v6, :cond_3

    if-ge v0, v1, :cond_3

    add-long/2addr v2, v9

    :cond_3
    :goto_1
    cmp-long v4, v2, v4

    if-eqz v4, :cond_5

    if-ne v0, v1, :cond_5

    .line 351
    sget-object v0, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    .line 354
    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    .line 355
    invoke-virtual {p2, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 357
    sget-object v0, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    .line 358
    sget-object v0, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p2, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/PlainTime;

    if-lez v4, :cond_4

    .line 360
    invoke-virtual {p1, p2}, Lnet/time4j/PlainTime;->isAfter(Lnet/time4j/PlainTime;)Z

    move-result v0

    if-eqz v0, :cond_4

    sub-long/2addr v2, v9

    goto :goto_2

    :cond_4
    if-gez v4, :cond_5

    .line 362
    invoke-virtual {p1, p2}, Lnet/time4j/PlainTime;->isBefore(Lnet/time4j/PlainTime;)Z

    move-result p1

    if-eqz p1, :cond_5

    add-long/2addr v2, v9

    :cond_5
    :goto_2
    return-wide v2
.end method
