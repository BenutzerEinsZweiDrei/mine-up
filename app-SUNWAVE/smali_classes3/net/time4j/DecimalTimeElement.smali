.class final Lnet/time4j/DecimalTimeElement;
.super Lnet/time4j/engine/BasicElement;
.source "DecimalTimeElement.java"

# interfaces
.implements Lnet/time4j/ZonalElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/BasicElement<",
        "Ljava/math/BigDecimal;",
        ">;",
        "Lnet/time4j/ZonalElement<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x432201d42d085c64L


# instance fields
.field private final transient defaultMax:Ljava/math/BigDecimal;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lnet/time4j/engine/BasicElement;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lnet/time4j/DecimalTimeElement;->defaultMax:Ljava/math/BigDecimal;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lnet/time4j/DecimalTimeElement;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/PlainTime;->lookupElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p0}, Lnet/time4j/DecimalTimeElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
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
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 136
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
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 129
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0, v0}, Lnet/time4j/DecimalTimeElement;->at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lnet/time4j/DecimalTimeElement;->getDefaultMaximum()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Ljava/math/BigDecimal;
    .locals 1

    .line 87
    iget-object v0, p0, Lnet/time4j/DecimalTimeElement;->defaultMax:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lnet/time4j/DecimalTimeElement;->getDefaultMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/math/BigDecimal;
    .locals 1

    .line 80
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 73
    const-class v0, Ljava/math/BigDecimal;

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
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 122
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
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/DecimalTimeElement;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;

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
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/DecimalTimeElement;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;

    move-result-object p1

    return-object p1
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
