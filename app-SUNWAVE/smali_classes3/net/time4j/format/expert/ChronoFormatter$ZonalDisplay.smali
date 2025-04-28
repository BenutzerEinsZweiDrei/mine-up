.class Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;
.super Ljava/lang/Object;
.source "ChronoFormatter.java"

# interfaces
.implements Lnet/time4j/engine/ChronoDisplay;
.implements Lnet/time4j/engine/VariantSource;
.implements Lnet/time4j/base/UnixTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/expert/ChronoFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZonalDisplay"
.end annotation


# instance fields
.field private final tsp:Lnet/time4j/GeneralTimestamp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/GeneralTimestamp<",
            "*>;"
        }
    .end annotation
.end field

.field private final tzid:Lnet/time4j/tz/TZID;

.field private final variant:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lnet/time4j/GeneralTimestamp;Ljava/lang/String;Lnet/time4j/tz/TZID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/GeneralTimestamp<",
            "*>;",
            "Ljava/lang/String;",
            "Lnet/time4j/tz/TZID;",
            ")V"
        }
    .end annotation

    .line 7365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7367
    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->tsp:Lnet/time4j/GeneralTimestamp;

    .line 7368
    iput-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->variant:Ljava/lang/String;

    .line 7369
    iput-object p3, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->tzid:Lnet/time4j/tz/TZID;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/GeneralTimestamp;Ljava/lang/String;Lnet/time4j/tz/TZID;Lnet/time4j/format/expert/ChronoFormatter$1;)V
    .locals 0

    .line 7349
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;-><init>(Lnet/time4j/GeneralTimestamp;Ljava/lang/String;Lnet/time4j/tz/TZID;)V

    return-void
.end method

.method private getUnixTime()Lnet/time4j/base/UnixTime;
    .locals 3

    .line 7423
    :try_start_0
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->tsp:Lnet/time4j/GeneralTimestamp;

    invoke-virtual {v0}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 7424
    invoke-static {v0}, Lnet/time4j/engine/Chronology;->lookup(Ljava/lang/Class;)Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7426
    :catch_0
    sget-object v0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    .line 7429
    :goto_0
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->tsp:Lnet/time4j/GeneralTimestamp;

    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->tzid:Lnet/time4j/tz/TZID;

    invoke-static {v2}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lnet/time4j/GeneralTimestamp;->in(Lnet/time4j/tz/Timezone;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/Moment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public contains(Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 7376
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->tsp:Lnet/time4j/GeneralTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/GeneralTimestamp;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    return p1
.end method

.method public get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 7381
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->tsp:Lnet/time4j/GeneralTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/GeneralTimestamp;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInt(Lnet/time4j/engine/ChronoElement;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 7386
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->tsp:Lnet/time4j/GeneralTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/GeneralTimestamp;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    return p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 7396
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->tsp:Lnet/time4j/GeneralTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/GeneralTimestamp;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 7391
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->tsp:Lnet/time4j/GeneralTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/GeneralTimestamp;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNanosecond()I
    .locals 1

    .line 7416
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->getUnixTime()Lnet/time4j/base/UnixTime;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/base/UnixTime;->getNanosecond()I

    move-result v0

    return v0
.end method

.method public getPosixTime()J
    .locals 2

    .line 7411
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->getUnixTime()Lnet/time4j/base/UnixTime;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimezone()Lnet/time4j/tz/TZID;
    .locals 1

    .line 7406
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->tzid:Lnet/time4j/tz/TZID;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .line 7434
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;->variant:Ljava/lang/String;

    return-object v0
.end method

.method public hasTimezone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
