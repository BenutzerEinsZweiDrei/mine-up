.class Lnet/time4j/calendar/CommonElements$CalendarWeekElement;
.super Lnet/time4j/calendar/service/StdIntegerDateElement;
.source "CommonElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/CommonElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarWeekElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Lnet/time4j/calendar/service/StdIntegerDateElement<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x67af01abb3059b3eL


# instance fields
.field private final bounded:Z

.field private final dayElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final model:Lnet/time4j/Weekmodel;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoElement;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;IIC",
            "Lnet/time4j/Weekmodel;",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 493
    invoke-direct/range {p0 .. p5}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    const-string p1, "Missing week model."

    .line 496
    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 499
    iput-object p6, p0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->model:Lnet/time4j/Weekmodel;

    .line 500
    iput-object p7, p0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->dayElement:Lnet/time4j/engine/ChronoElement;

    .line 501
    iput-boolean p8, p0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->bounded:Z

    return-void
.end method

.method static synthetic access$200(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/Weekmodel;
    .locals 0

    .line 457
    iget-object p0, p0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->model:Lnet/time4j/Weekmodel;

    return-object p0
.end method

.method static synthetic access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 457
    iget-object p0, p0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->dayElement:Lnet/time4j/engine/ChronoElement;

    return-object p0
.end method

.method static of(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/calendar/CommonElements$CalendarWeekElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;IIC",
            "Lnet/time4j/Weekmodel;",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Lnet/time4j/calendar/CommonElements$CalendarWeekElement<",
            "TT;>;"
        }
    .end annotation

    .line 519
    new-instance v9, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoElement;Z)V

    return-object v9
.end method


# virtual methods
.method public decremented()Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 526
    new-instance v0, Lnet/time4j/calendar/CommonElements$DayOperator;

    const/4 v1, -0x7

    invoke-direct {v0, v1}, Lnet/time4j/calendar/CommonElements$DayOperator;-><init>(I)V

    return-object v0
.end method

.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TD;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TD;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TD;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->getChronoType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 560
    iget-boolean p1, p0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->bounded:Z

    if-eqz p1, :cond_0

    new-instance p1, Lnet/time4j/calendar/CommonElements$BWRule;

    invoke-direct {p1, p0, v0}, Lnet/time4j/calendar/CommonElements$BWRule;-><init>(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;Lnet/time4j/calendar/CommonElements$1;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/time4j/calendar/CommonElements$CWRule;

    invoke-direct {p1, p0, v0}, Lnet/time4j/calendar/CommonElements$CWRule;-><init>(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;Lnet/time4j/calendar/CommonElements$1;)V

    :goto_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method protected doEquals(Lnet/time4j/engine/BasicElement;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/BasicElement<",
            "*>;)Z"
        }
    .end annotation

    .line 547
    invoke-super {p0, p1}, Lnet/time4j/calendar/service/StdIntegerDateElement;->doEquals(Lnet/time4j/engine/BasicElement;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 548
    const-class v0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    .line 549
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->model:Lnet/time4j/Weekmodel;

    iget-object v2, p1, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->model:Lnet/time4j/Weekmodel;

    invoke-virtual {v0, v2}, Lnet/time4j/Weekmodel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->bounded:Z

    iget-boolean p1, p1, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->bounded:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public incremented()Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 533
    new-instance v0, Lnet/time4j/calendar/CommonElements$DayOperator;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lnet/time4j/calendar/CommonElements$DayOperator;-><init>(I)V

    return-object v0
.end method

.method public isLenient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    return-object p0
.end method
