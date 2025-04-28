.class Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;
.super Ljava/lang/Object;
.source "CalendarFamily.java"

# interfaces
.implements Lnet/time4j/engine/TimeLine;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/CalendarFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarTimeLine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lnet/time4j/engine/CalendarVariant<",
        "TD;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/TimeLine<",
        "TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final transient calsys:Lnet/time4j/engine/CalendarSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/CalendarSystem<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final chronoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final variant:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lnet/time4j/engine/Chronology;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "TD;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    invoke-virtual {p1, p2}, Lnet/time4j/engine/Chronology;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->calsys:Lnet/time4j/engine/CalendarSystem;

    .line 315
    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->chronoType:Ljava/lang/Class;

    .line 316
    iput-object p2, p0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->variant:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/engine/Chronology;Ljava/lang/String;Lnet/time4j/engine/CalendarFamily$1;)V
    .locals 0

    .line 295
    invoke-direct {p0, p1, p2}, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;-><init>(Lnet/time4j/engine/Chronology;Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->chronoType:Ljava/lang/Class;

    invoke-static {v0}, Lnet/time4j/engine/Chronology;->lookup(Ljava/lang/Class;)Lnet/time4j/engine/Chronology;

    move-result-object v0

    .line 377
    new-instance v1, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;

    iget-object v2, p0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->variant:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;-><init>(Lnet/time4j/engine/Chronology;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 295
    check-cast p1, Lnet/time4j/engine/CalendarVariant;

    check-cast p2, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->compare(Lnet/time4j/engine/CalendarVariant;Lnet/time4j/engine/CalendarVariant;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/CalendarVariant;Lnet/time4j/engine/CalendarVariant;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TD;)I"
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Lnet/time4j/engine/CalendarVariant;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 346
    invoke-virtual {p2}, Lnet/time4j/engine/CalendarVariant;->getDaysSinceEpochUTC()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 361
    :cond_0
    instance-of v1, p1, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 362
    check-cast p1, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;

    .line 363
    iget-object v1, p0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->chronoType:Ljava/lang/Class;

    iget-object v3, p1, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->chronoType:Ljava/lang/Class;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->variant:Ljava/lang/String;

    iget-object p1, p1, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->variant:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 371
    iget-object v0, p0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->chronoType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->variant:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic stepBackwards(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 295
    check-cast p1, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->stepBackwards(Lnet/time4j/engine/CalendarVariant;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    return-object p1
.end method

.method public stepBackwards(Lnet/time4j/engine/CalendarVariant;)Lnet/time4j/engine/CalendarVariant;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TD;"
        }
    .end annotation

    .line 331
    invoke-virtual {p1}, Lnet/time4j/engine/CalendarVariant;->getDaysSinceEpochUTC()J

    move-result-wide v0

    iget-object v2, p0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->calsys:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {v2}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 334
    :cond_0
    sget-object v0, Lnet/time4j/engine/CalendarDays;->ONE:Lnet/time4j/engine/CalendarDays;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/CalendarVariant;->minus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic stepForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 295
    check-cast p1, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->stepForward(Lnet/time4j/engine/CalendarVariant;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    return-object p1
.end method

.method public stepForward(Lnet/time4j/engine/CalendarVariant;)Lnet/time4j/engine/CalendarVariant;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TD;"
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Lnet/time4j/engine/CalendarVariant;->getDaysSinceEpochUTC()J

    move-result-wide v0

    iget-object v2, p0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;->calsys:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {v2}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 326
    :cond_0
    sget-object v0, Lnet/time4j/engine/CalendarDays;->ONE:Lnet/time4j/engine/CalendarDays;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/CalendarVariant;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    return-object p1
.end method
