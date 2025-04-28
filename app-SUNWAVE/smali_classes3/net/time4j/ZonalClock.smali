.class public final Lnet/time4j/ZonalClock;
.super Ljava/lang/Object;
.source "ZonalClock.java"


# static fields
.field private static final SYSTEM:Lnet/time4j/ZonalClock;


# instance fields
.field private final timeSource:Lnet/time4j/base/TimeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/base/TimeSource<",
            "*>;"
        }
    .end annotation
.end field

.field private final timezone:Lnet/time4j/tz/Timezone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lnet/time4j/ZonalClock;

    invoke-direct {v0}, Lnet/time4j/ZonalClock;-><init>()V

    sput-object v0, Lnet/time4j/ZonalClock;->SYSTEM:Lnet/time4j/ZonalClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-object v0, Lnet/time4j/SystemClock;->INSTANCE:Lnet/time4j/SystemClock;

    iput-object v0, p0, Lnet/time4j/ZonalClock;->timeSource:Lnet/time4j/base/TimeSource;

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lnet/time4j/ZonalClock;->timezone:Lnet/time4j/tz/Timezone;

    return-void
.end method

.method public constructor <init>(Lnet/time4j/base/TimeSource;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-static {p2}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/time4j/ZonalClock;-><init>(Lnet/time4j/base/TimeSource;Lnet/time4j/tz/Timezone;)V

    return-void
.end method

.method public constructor <init>(Lnet/time4j/base/TimeSource;Lnet/time4j/tz/TZID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/tz/TZID;",
            ")V"
        }
    .end annotation

    .line 107
    invoke-static {p2}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/time4j/ZonalClock;-><init>(Lnet/time4j/base/TimeSource;Lnet/time4j/tz/Timezone;)V

    return-void
.end method

.method public constructor <init>(Lnet/time4j/base/TimeSource;Lnet/time4j/tz/Timezone;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/tz/Timezone;",
            ")V"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing time source."

    .line 175
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Missing timezone."

    .line 177
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    iput-object p1, p0, Lnet/time4j/ZonalClock;->timeSource:Lnet/time4j/base/TimeSource;

    .line 181
    iput-object p2, p0, Lnet/time4j/ZonalClock;->timezone:Lnet/time4j/tz/Timezone;

    return-void
.end method

.method static ofSystem()Lnet/time4j/ZonalClock;
    .locals 1

    .line 447
    sget-object v0, Lnet/time4j/ZonalClock;->SYSTEM:Lnet/time4j/ZonalClock;

    return-object v0
.end method


# virtual methods
.method public getSource()Lnet/time4j/base/TimeSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/base/TimeSource<",
            "*>;"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lnet/time4j/ZonalClock;->timeSource:Lnet/time4j/base/TimeSource;

    return-object v0
.end method

.method public getTimezone()Lnet/time4j/tz/TZID;
    .locals 1

    .line 434
    iget-object v0, p0, Lnet/time4j/ZonalClock;->timezone:Lnet/time4j/tz/Timezone;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    .line 435
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    return-object v0
.end method

.method public now(Lnet/time4j/engine/CalendarFamily;Ljava/lang/String;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lnet/time4j/engine/CalendarVariant<",
            "TC;>;>(",
            "Lnet/time4j/engine/CalendarFamily<",
            "TC;>;",
            "Ljava/lang/String;",
            "Lnet/time4j/engine/StartOfDay;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lnet/time4j/ZonalClock;->timezone:Lnet/time4j/tz/Timezone;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    .line 367
    :cond_0
    iget-object v1, p0, Lnet/time4j/ZonalClock;->timeSource:Lnet/time4j/base/TimeSource;

    invoke-interface {v1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object v1

    invoke-static {v1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object v1

    .line 368
    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0, p3}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/CalendarFamily;Ljava/lang/String;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public now(Lnet/time4j/engine/CalendarFamily;Lnet/time4j/engine/VariantSource;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lnet/time4j/engine/CalendarVariant<",
            "TC;>;>(",
            "Lnet/time4j/engine/CalendarFamily<",
            "TC;>;",
            "Lnet/time4j/engine/VariantSource;",
            "Lnet/time4j/engine/StartOfDay;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    .line 402
    invoke-interface {p2}, Lnet/time4j/engine/VariantSource;->getVariant()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/CalendarFamily;Ljava/lang/String;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public now()Lnet/time4j/PlainTimestamp;
    .locals 2

    .line 237
    iget-object v0, p0, Lnet/time4j/ZonalClock;->timeSource:Lnet/time4j/base/TimeSource;

    invoke-interface {v0}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lnet/time4j/ZonalClock;->timezone:Lnet/time4j/tz/Timezone;

    if-nez v1, :cond_0

    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v1

    .line 239
    :cond_0
    invoke-virtual {v1, v0}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/PlainTimestamp;->from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    return-object v0
.end method

.method public now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lnet/time4j/ZonalClock;->timezone:Lnet/time4j/tz/Timezone;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    .line 282
    :cond_0
    new-instance v1, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v1}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/time4j/format/Attributes$Builder;->setTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lnet/time4j/ZonalClock;->timeSource:Lnet/time4j/base/TimeSource;

    invoke-virtual {p1, v1, v0}, Lnet/time4j/engine/Chronology;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoEntity;

    if-nez v0, :cond_2

    .line 286
    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p1

    .line 287
    const-class v0, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar variant required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public today()Lnet/time4j/PlainDate;
    .locals 2

    .line 213
    iget-object v0, p0, Lnet/time4j/ZonalClock;->timeSource:Lnet/time4j/base/TimeSource;

    invoke-interface {v0}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lnet/time4j/ZonalClock;->timezone:Lnet/time4j/tz/Timezone;

    if-nez v1, :cond_0

    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v1

    .line 215
    :cond_0
    invoke-virtual {v1, v0}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/PlainDate;->from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainDate;

    move-result-object v0

    return-object v0
.end method
