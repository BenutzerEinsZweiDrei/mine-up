.class Lnet/time4j/TemporalType$ZoneRule;
.super Lnet/time4j/TemporalType;
.source "TemporalType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/TemporalType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoneRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/TemporalType<",
        "Ljava/util/TimeZone;",
        "Lnet/time4j/tz/Timezone;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Lnet/time4j/TemporalType;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/TemporalType$1;)V
    .locals 0

    .line 359
    invoke-direct {p0}, Lnet/time4j/TemporalType$ZoneRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic from(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 359
    check-cast p1, Lnet/time4j/tz/Timezone;

    invoke-virtual {p0, p1}, Lnet/time4j/TemporalType$ZoneRule;->from(Lnet/time4j/tz/Timezone;)Ljava/util/TimeZone;

    move-result-object p1

    return-object p1
.end method

.method public from(Lnet/time4j/tz/Timezone;)Ljava/util/TimeZone;
    .locals 1

    .line 378
    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 379
    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object p1

    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.util.TimeZone~"

    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    .line 381
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 383
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    return-object p1

    .line 385
    :cond_1
    new-instance v0, Lnet/time4j/OldApiTimezone;

    invoke-direct {v0, p1}, Lnet/time4j/OldApiTimezone;-><init>(Lnet/time4j/tz/Timezone;)V

    return-object v0
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation

    .line 393
    const-class v0, Ljava/util/TimeZone;

    return-object v0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 359
    check-cast p1, Ljava/util/TimeZone;

    invoke-virtual {p0, p1}, Lnet/time4j/TemporalType$ZoneRule;->translate(Ljava/util/TimeZone;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    return-object p1
.end method

.method public translate(Ljava/util/TimeZone;)Lnet/time4j/tz/Timezone;
    .locals 2

    .line 367
    instance-of v0, p1, Lnet/time4j/OldApiTimezone;

    if-eqz v0, :cond_0

    .line 368
    check-cast p1, Lnet/time4j/OldApiTimezone;

    invoke-virtual {p1}, Lnet/time4j/OldApiTimezone;->getDelegate()Lnet/time4j/tz/Timezone;

    move-result-object p1

    return-object p1

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java.util.TimeZone~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    return-object p1
.end method
