.class final Lnet/time4j/DateElement;
.super Lnet/time4j/engine/BasicElement;
.source "DateElement.java"

# interfaces
.implements Lnet/time4j/CalendarDateElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/BasicElement<",
        "Lnet/time4j/PlainDate;",
        ">;",
        "Lnet/time4j/CalendarDateElement;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lnet/time4j/DateElement;

.field private static final serialVersionUID:J = -0x5a7b55ff2ce1b515L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lnet/time4j/DateElement;

    invoke-direct {v0}, Lnet/time4j/DateElement;-><init>()V

    sput-object v0, Lnet/time4j/DateElement;->INSTANCE:Lnet/time4j/DateElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CALENDAR_DATE"

    .line 52
    invoke-direct {p0, v0}, Lnet/time4j/engine/BasicElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 179
    sget-object v0, Lnet/time4j/DateElement;->INSTANCE:Lnet/time4j/DateElement;

    return-object v0
.end method


# virtual methods
.method public at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Lnet/time4j/ZonalQuery;

    invoke-direct {v0, p0, p1}, Lnet/time4j/ZonalQuery;-><init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/tz/ZonalOffset;)V

    return-object v0
.end method

.method public atUTC()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 159
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0, v0}, Lnet/time4j/DateElement;->at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    return-object v0
.end method

.method public firstDayOfNextMonth()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lnet/time4j/CalendarOperator;->FIRST_DAY_OF_NEXT_MONTH:Lnet/time4j/CalendarOperator;

    return-object v0
.end method

.method public firstDayOfNextQuarter()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lnet/time4j/CalendarOperator;->FIRST_DAY_OF_NEXT_QUARTER:Lnet/time4j/CalendarOperator;

    return-object v0
.end method

.method public firstDayOfNextYear()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 110
    sget-object v0, Lnet/time4j/CalendarOperator;->FIRST_DAY_OF_NEXT_YEAR:Lnet/time4j/CalendarOperator;

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lnet/time4j/DateElement;->getDefaultMaximum()Lnet/time4j/PlainDate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/PlainDate;
    .locals 1

    .line 75
    sget-object v0, Lnet/time4j/PlainDate;->MAX:Lnet/time4j/PlainDate;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lnet/time4j/DateElement;->getDefaultMinimum()Lnet/time4j/PlainDate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/PlainDate;
    .locals 1

    .line 68
    sget-object v0, Lnet/time4j/PlainDate;->MIN:Lnet/time4j/PlainDate;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 61
    const-class v0, Lnet/time4j/PlainDate;

    return-object v0
.end method

.method public in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/Timezone;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Lnet/time4j/ZonalQuery;

    invoke-direct {v0, p0, p1}, Lnet/time4j/ZonalQuery;-><init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/tz/Timezone;)V

    return-object v0
.end method

.method public inStdTimezone()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/DateElement;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    return-object v0
.end method

.method public inTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/engine/ChronoFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/DateElement;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;

    move-result-object p1

    return-object p1
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastDayOfPreviousMonth()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 117
    sget-object v0, Lnet/time4j/CalendarOperator;->LAST_DAY_OF_PREVIOUS_MONTH:Lnet/time4j/CalendarOperator;

    return-object v0
.end method

.method public lastDayOfPreviousQuarter()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Lnet/time4j/CalendarOperator;->LAST_DAY_OF_PREVIOUS_QUARTER:Lnet/time4j/CalendarOperator;

    return-object v0
.end method

.method public lastDayOfPreviousYear()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 131
    sget-object v0, Lnet/time4j/CalendarOperator;->LAST_DAY_OF_PREVIOUS_YEAR:Lnet/time4j/CalendarOperator;

    return-object v0
.end method
