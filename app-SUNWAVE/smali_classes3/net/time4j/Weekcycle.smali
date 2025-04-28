.class public final Lnet/time4j/Weekcycle;
.super Lnet/time4j/engine/BasicUnit;
.source "Weekcycle.java"

# interfaces
.implements Lnet/time4j/IsoDateUnit;
.implements Ljava/io/Serializable;


# static fields
.field public static final YEARS:Lnet/time4j/Weekcycle;

.field private static final serialVersionUID:J = -0x4520d4f79dfcd6cbL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lnet/time4j/Weekcycle;

    invoke-direct {v0}, Lnet/time4j/Weekcycle;-><init>()V

    sput-object v0, Lnet/time4j/Weekcycle;->YEARS:Lnet/time4j/Weekcycle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lnet/time4j/engine/BasicUnit;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 138
    sget-object v0, Lnet/time4j/Weekcycle;->YEARS:Lnet/time4j/Weekcycle;

    return-object v0
.end method


# virtual methods
.method public between(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)J
    .locals 1

    .line 93
    invoke-virtual {p0, p1}, Lnet/time4j/Weekcycle;->derive(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/UnitRule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/time4j/engine/UnitRule;->between(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method

.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/UnitRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)",
            "Lnet/time4j/engine/UnitRule<",
            "TT;>;"
        }
    .end annotation

    .line 128
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Lnet/time4j/YOWElement;->unitRule()Lnet/time4j/engine/UnitRule;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLength()D
    .locals 2

    .line 107
    sget-object v0, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x59

    return v0
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WEEK_BASED_YEARS"

    return-object v0
.end method
