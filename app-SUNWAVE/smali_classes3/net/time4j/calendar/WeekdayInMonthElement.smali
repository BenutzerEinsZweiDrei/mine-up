.class final Lnet/time4j/calendar/WeekdayInMonthElement;
.super Lnet/time4j/calendar/service/StdIntegerDateElement;
.source "WeekdayInMonthElement.java"

# interfaces
.implements Lnet/time4j/calendar/OrdinalWeekdayElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/WeekdayInMonthElement$WeekOperator;,
        Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;,
        Lnet/time4j/calendar/WeekdayInMonthElement$Rule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;:",
        "Lnet/time4j/engine/CalendarDate;",
        ">",
        "Lnet/time4j/calendar/service/StdIntegerDateElement<",
        "TT;>;",
        "Lnet/time4j/calendar/OrdinalWeekdayElement<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final LAST:I = 0x7fffffff

.field private static final serialVersionUID:J = 0x3b5474289398ce20L


# instance fields
.field private final transient domElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient dowElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/Weekday;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;",
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/Weekday;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->getDefaultMaximum()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v5, v0, 0x7

    new-instance v7, Lnet/time4j/calendar/WeekdayInMonthElement$WeekOperator;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Lnet/time4j/calendar/WeekdayInMonthElement$WeekOperator;-><init>(Z)V

    new-instance v8, Lnet/time4j/calendar/WeekdayInMonthElement$WeekOperator;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lnet/time4j/calendar/WeekdayInMonthElement$WeekOperator;-><init>(Z)V

    const-string v2, "WEEKDAY_IN_MONTH"

    const/4 v4, 0x1

    const/16 v6, 0x46

    move-object v1, p0

    move-object v3, p1

    .line 61
    invoke-direct/range {v1 .. v8}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    .line 70
    iput-object p2, p0, Lnet/time4j/calendar/WeekdayInMonthElement;->domElement:Lnet/time4j/engine/ChronoElement;

    .line 71
    iput-object p3, p0, Lnet/time4j/calendar/WeekdayInMonthElement;->dowElement:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 40
    iget-object p0, p0, Lnet/time4j/calendar/WeekdayInMonthElement;->dowElement:Lnet/time4j/engine/ChronoElement;

    return-object p0
.end method

.method static synthetic access$100(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 40
    iget-object p0, p0, Lnet/time4j/calendar/WeekdayInMonthElement;->domElement:Lnet/time4j/engine/ChronoElement;

    return-object p0
.end method

.method static getRule(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;:",
            "Lnet/time4j/engine/CalendarDate;",
            ">(",
            "Lnet/time4j/calendar/WeekdayInMonthElement<",
            "TT;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;-><init>(Lnet/time4j/calendar/WeekdayInMonthElement;)V

    return-object v0
.end method


# virtual methods
.method public setTo(ILnet/time4j/Weekday;)Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;

    invoke-direct {v0, p0, p1, p2}, Lnet/time4j/calendar/WeekdayInMonthElement$SetOperator;-><init>(Lnet/time4j/calendar/WeekdayInMonthElement;ILnet/time4j/Weekday;)V

    return-object v0
.end method

.method public setToFirst(Lnet/time4j/Weekday;)Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, v0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement;->setTo(ILnet/time4j/Weekday;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    return-object p1
.end method

.method public setToLast(Lnet/time4j/Weekday;)Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 87
    invoke-virtual {p0, v0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement;->setTo(ILnet/time4j/Weekday;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    return-object p1
.end method
