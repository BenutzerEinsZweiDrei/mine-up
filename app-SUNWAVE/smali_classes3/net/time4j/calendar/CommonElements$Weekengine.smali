.class Lnet/time4j/calendar/CommonElements$Weekengine;
.super Ljava/lang/Object;
.source "CommonElements.java"

# interfaces
.implements Lnet/time4j/engine/ChronoExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/CommonElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Weekengine"
.end annotation


# instance fields
.field private final chronoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lnet/time4j/engine/ChronoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final dayOfMonthElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final dayOfYearElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultWeekmodel:Lnet/time4j/Weekmodel;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;Lnet/time4j/Weekmodel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lnet/time4j/engine/ChronoEntity;",
            ">;",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;",
            "Lnet/time4j/Weekmodel;",
            ")V"
        }
    .end annotation

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p1, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->chronoType:Ljava/lang/Class;

    .line 396
    iput-object p2, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->dayOfMonthElement:Lnet/time4j/engine/ChronoElement;

    .line 397
    iput-object p3, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->dayOfYearElement:Lnet/time4j/engine/ChronoElement;

    .line 398
    iput-object p4, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->defaultWeekmodel:Lnet/time4j/Weekmodel;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->chronoType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public canResolve(Lnet/time4j/engine/ChronoElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getElements(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 417
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->defaultWeekmodel:Lnet/time4j/Weekmodel;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/time4j/Weekmodel;->of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;

    move-result-object p1

    .line 418
    :goto_0
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 419
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->chronoType:Ljava/lang/Class;

    .line 420
    invoke-static {v0, p1}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->of(Ljava/lang/Class;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    move-result-object v0

    .line 419
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v1, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->chronoType:Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/16 v4, 0x57

    iget-object v6, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->dayOfMonthElement:Lnet/time4j/engine/ChronoElement;

    const/4 v7, 0x0

    const-string v0, "WEEK_OF_MONTH"

    move-object v5, p1

    .line 422
    invoke-static/range {v0 .. v7}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->of(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    move-result-object v0

    .line 421
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v1, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->chronoType:Ljava/lang/Class;

    const/16 v3, 0x34

    const/16 v4, 0x77

    iget-object v6, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->dayOfYearElement:Lnet/time4j/engine/ChronoElement;

    const-string v0, "WEEK_OF_YEAR"

    .line 425
    invoke-static/range {v0 .. v7}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->of(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    move-result-object v0

    .line 424
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v1, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->chronoType:Ljava/lang/Class;

    const/4 v3, 0x5

    const/4 v4, 0x0

    iget-object v6, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->dayOfMonthElement:Lnet/time4j/engine/ChronoElement;

    const/4 v7, 0x1

    const-string v0, "BOUNDED_WEEK_OF_MONTH"

    .line 428
    invoke-static/range {v0 .. v7}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->of(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    move-result-object v0

    .line 427
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v1, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->chronoType:Ljava/lang/Class;

    const/16 v3, 0x34

    iget-object v6, p0, Lnet/time4j/calendar/CommonElements$Weekengine;->dayOfYearElement:Lnet/time4j/engine/ChronoElement;

    const-string v0, "BOUNDED_WEEK_OF_YEAR"

    .line 431
    invoke-static/range {v0 .. v7}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->of(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    move-result-object p1

    .line 430
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lnet/time4j/engine/ChronoEntity;Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Ljava/util/Locale;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;"
        }
    .end annotation

    return-object p1
.end method
