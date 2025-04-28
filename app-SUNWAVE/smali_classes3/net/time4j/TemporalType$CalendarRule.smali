.class Lnet/time4j/TemporalType$CalendarRule;
.super Lnet/time4j/TemporalType;
.source "TemporalType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/TemporalType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/TemporalType<",
        "Ljava/util/Calendar;",
        "Lnet/time4j/ZonalDateTime;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Lnet/time4j/TemporalType;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/TemporalType$1;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Lnet/time4j/TemporalType$CalendarRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic from(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 321
    check-cast p1, Lnet/time4j/ZonalDateTime;

    invoke-virtual {p0, p1}, Lnet/time4j/TemporalType$CalendarRule;->from(Lnet/time4j/ZonalDateTime;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public from(Lnet/time4j/ZonalDateTime;)Ljava/util/Calendar;
    .locals 5

    .line 338
    sget-object v0, Lnet/time4j/TemporalType;->JAVA_UTIL_DATE:Lnet/time4j/TemporalType;

    invoke-virtual {p1}, Lnet/time4j/ZonalDateTime;->toMoment()Lnet/time4j/Moment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/TemporalType;->from(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 339
    sget-object v1, Lnet/time4j/TemporalType;->JAVA_UTIL_TIMEZONE:Lnet/time4j/TemporalType;

    invoke-virtual {p1}, Lnet/time4j/ZonalDateTime;->getTimezone0()Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/time4j/TemporalType;->from(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TimeZone;

    .line 340
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 341
    new-instance v2, Ljava/util/Date;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    const/4 v2, 0x2

    .line 342
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    const/4 v2, 0x4

    .line 343
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 344
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 345
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    return-object v1
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 353
    const-class v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 321
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lnet/time4j/TemporalType$CalendarRule;->translate(Ljava/util/Calendar;)Lnet/time4j/ZonalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public translate(Ljava/util/Calendar;)Lnet/time4j/ZonalDateTime;
    .locals 2

    .line 329
    sget-object v0, Lnet/time4j/TemporalType;->JAVA_UTIL_DATE:Lnet/time4j/TemporalType;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/TemporalType;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    .line 330
    sget-object v1, Lnet/time4j/TemporalType;->JAVA_UTIL_TIMEZONE:Lnet/time4j/TemporalType;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/time4j/TemporalType;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/Timezone;

    .line 331
    invoke-static {v0, p1}, Lnet/time4j/ZonalDateTime;->of(Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;)Lnet/time4j/ZonalDateTime;

    move-result-object p1

    return-object p1
.end method
