.class public final Lnet/time4j/engine/StdOperator;
.super Ljava/lang/Object;
.source "StdOperator.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final CEILING_MODE:I = 0x4

.field private static final DECREMENTING_MODE:I = 0x6

.field private static final FLOOR_MODE:I = 0x3

.field private static final INCREMENTING_MODE:I = 0x7

.field private static final LENIENT_MODE:I = 0x5

.field private static final MAX_MODE:I = 0x2

.field private static final MIN_MODE:I = 0x1

.field private static final NEW_VALUE_MODE:I


# instance fields
.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation
.end field

.field private final mode:I

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILnet/time4j/engine/ChronoElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/engine/StdOperator;-><init>(ILnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(ILnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing chronological element."

    .line 76
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iput p1, p0, Lnet/time4j/engine/StdOperator;->mode:I

    .line 80
    iput-object p2, p0, Lnet/time4j/engine/StdOperator;->element:Lnet/time4j/engine/ChronoElement;

    .line 81
    iput-object p3, p0, Lnet/time4j/engine/StdOperator;->value:Ljava/lang/Object;

    return-void
.end method

.method private static add(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/engine/TimePoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T:",
            "Lnet/time4j/engine/TimePoint<",
            "TU;TT;>;>(",
            "Lnet/time4j/engine/TimePoint<",
            "TU;TT;>;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;Z)TT;"
        }
    .end annotation

    .line 446
    invoke-virtual {p0}, Lnet/time4j/engine/TimePoint;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->getBaseUnit(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_0

    .line 449
    invoke-virtual {p0, v0, v1, p1}, Lnet/time4j/engine/TimePoint;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p0

    return-object p0

    .line 451
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lnet/time4j/engine/TimePoint;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p0

    return-object p0
.end method

.method public static atCeiling(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 257
    new-instance v0, Lnet/time4j/engine/StdOperator;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lnet/time4j/engine/StdOperator;-><init>(ILnet/time4j/engine/ChronoElement;)V

    return-object v0
.end method

.method public static atFloor(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 233
    new-instance v0, Lnet/time4j/engine/StdOperator;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lnet/time4j/engine/StdOperator;-><init>(ILnet/time4j/engine/ChronoElement;)V

    return-object v0
.end method

.method private ceiling(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TT;"
        }
    .end annotation

    .line 364
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    .line 367
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/time4j/engine/Chronology;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/time4j/engine/ElementRule;->getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 368
    invoke-direct {p0, p1, p2}, Lnet/time4j/engine/StdOperator;->withCeiling(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static decremented(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 183
    new-instance v0, Lnet/time4j/engine/StdOperator;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lnet/time4j/engine/StdOperator;-><init>(ILnet/time4j/engine/ChronoElement;)V

    return-object v0
.end method

.method private floor(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TT;"
        }
    .end annotation

    .line 348
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    .line 351
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/time4j/engine/Chronology;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/time4j/engine/ElementRule;->getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 352
    invoke-direct {p0, p1, p2}, Lnet/time4j/engine/StdOperator;->withFloor(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static incremented(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 209
    new-instance v0, Lnet/time4j/engine/StdOperator;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lnet/time4j/engine/StdOperator;-><init>(ILnet/time4j/engine/ChronoElement;)V

    return-object v0
.end method

.method private max(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TT;"
        }
    .end annotation

    .line 339
    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public static maximized(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 157
    new-instance v0, Lnet/time4j/engine/StdOperator;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lnet/time4j/engine/StdOperator;-><init>(ILnet/time4j/engine/ChronoElement;)V

    return-object v0
.end method

.method private min(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TT;"
        }
    .end annotation

    .line 330
    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public static minimized(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 133
    new-instance v0, Lnet/time4j/engine/StdOperator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lnet/time4j/engine/StdOperator;-><init>(ILnet/time4j/engine/ChronoElement;)V

    return-object v0
.end method

.method private move(Lnet/time4j/engine/ChronoEntity;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)TT;"
        }
    .end annotation

    .line 427
    instance-of v0, p1, Lnet/time4j/engine/TimePoint;

    if-eqz v0, :cond_0

    .line 428
    const-class v0, Lnet/time4j/engine/TimePoint;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/TimePoint;

    .line 429
    iget-object v1, p0, Lnet/time4j/engine/StdOperator;->element:Lnet/time4j/engine/ChronoElement;

    invoke-static {v0, v1, p2}, Lnet/time4j/engine/StdOperator;->add(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/engine/TimePoint;

    move-result-object p2

    .line 430
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    return-object p1

    .line 432
    :cond_0
    new-instance p2, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Base units not supported by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static newValue(Ljava/lang/Object;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;V:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 321
    new-instance v0, Lnet/time4j/engine/StdOperator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lnet/time4j/engine/StdOperator;-><init>(ILnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static setLenient(Ljava/lang/Object;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;V:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 289
    new-instance v0, Lnet/time4j/engine/StdOperator;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p0}, Lnet/time4j/engine/StdOperator;-><init>(ILnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    return-object v0
.end method

.method private value(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Ljava/lang/Object;",
            "Z)TT;"
        }
    .end annotation

    .line 382
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/time4j/engine/Chronology;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v0

    .line 386
    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 384
    invoke-interface {v0, p1, p2, p4}, Lnet/time4j/engine/ElementRule;->withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    return-object p1
.end method

.method private withCeiling(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TT;"
        }
    .end annotation

    .line 412
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/time4j/engine/Chronology;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v0

    .line 416
    invoke-interface {v0, p1}, Lnet/time4j/engine/ElementRule;->getMaximum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 417
    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->isLenient()Z

    move-result p2

    .line 414
    invoke-interface {v0, p1, v1, p2}, Lnet/time4j/engine/ElementRule;->withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    return-object p1
.end method

.method private withFloor(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TT;"
        }
    .end annotation

    .line 397
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/time4j/engine/Chronology;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v0

    .line 401
    invoke-interface {v0, p1}, Lnet/time4j/engine/ElementRule;->getMinimum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 402
    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->isLenient()Z

    move-result p2

    .line 399
    invoke-interface {v0, p1, v1, p2}, Lnet/time4j/engine/ElementRule;->withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/StdOperator;->apply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 90
    iget v0, p0, Lnet/time4j/engine/StdOperator;->mode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 108
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/engine/StdOperator;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lnet/time4j/engine/StdOperator;->move(Lnet/time4j/engine/ChronoEntity;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 104
    :pswitch_1
    invoke-direct {p0, p1, v2}, Lnet/time4j/engine/StdOperator;->move(Lnet/time4j/engine/ChronoEntity;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 102
    :pswitch_2
    iget-object v0, p0, Lnet/time4j/engine/StdOperator;->element:Lnet/time4j/engine/ChronoElement;

    iget-object v2, p0, Lnet/time4j/engine/StdOperator;->value:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v2, v1}, Lnet/time4j/engine/StdOperator;->value(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 100
    :pswitch_3
    iget-object v0, p0, Lnet/time4j/engine/StdOperator;->element:Lnet/time4j/engine/ChronoElement;

    invoke-direct {p0, p1, v0}, Lnet/time4j/engine/StdOperator;->ceiling(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 98
    :pswitch_4
    iget-object v0, p0, Lnet/time4j/engine/StdOperator;->element:Lnet/time4j/engine/ChronoElement;

    invoke-direct {p0, p1, v0}, Lnet/time4j/engine/StdOperator;->floor(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 96
    :pswitch_5
    iget-object v0, p0, Lnet/time4j/engine/StdOperator;->element:Lnet/time4j/engine/ChronoElement;

    invoke-direct {p0, p1, v0}, Lnet/time4j/engine/StdOperator;->max(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 94
    :pswitch_6
    iget-object v0, p0, Lnet/time4j/engine/StdOperator;->element:Lnet/time4j/engine/ChronoElement;

    invoke-direct {p0, p1, v0}, Lnet/time4j/engine/StdOperator;->min(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 92
    :pswitch_7
    iget-object v0, p0, Lnet/time4j/engine/StdOperator;->element:Lnet/time4j/engine/ChronoElement;

    iget-object v1, p0, Lnet/time4j/engine/StdOperator;->value:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1, v2}, Lnet/time4j/engine/StdOperator;->value(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
