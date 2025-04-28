.class Lnet/time4j/format/platform/SimpleFormatter$Parsed;
.super Lnet/time4j/engine/ChronoEntity;
.source "SimpleFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/platform/SimpleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parsed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/ChronoEntity<",
        "Lnet/time4j/format/platform/SimpleFormatter$Parsed;",
        ">;"
    }
.end annotation


# instance fields
.field private tzid:Lnet/time4j/tz/TZID;

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/time4j/format/platform/SimpleFormatter$XCalendar;)V
    .locals 4

    .line 878
    invoke-direct {p0}, Lnet/time4j/engine/ChronoEntity;-><init>()V

    const/4 v0, 0x0

    .line 873
    iput-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->tzid:Lnet/time4j/tz/TZID;

    .line 880
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 881
    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    sget-object v2, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getRawValue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x2

    .line 884
    invoke-virtual {p1, v2}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 885
    sget-object v3, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v2}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getRawValue(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x6

    .line 887
    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 888
    sget-object v2, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getRawValue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x5

    .line 890
    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 891
    sget-object v2, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getRawValue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/16 v1, 0x9

    .line 893
    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 894
    sget-object v2, Lnet/time4j/PlainTime;->AM_PM_OF_DAY:Lnet/time4j/ZonalElement;

    invoke-static {}, Lnet/time4j/Meridiem;->values()[Lnet/time4j/Meridiem;

    move-result-object v3

    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getRawValue(I)I

    move-result v1

    aget-object v1, v3, v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/16 v1, 0xa

    .line 896
    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 897
    sget-object v2, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_AMPM:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getRawValue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 v1, 0xb

    .line 899
    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 900
    sget-object v2, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getRawValue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/16 v1, 0xc

    .line 902
    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 903
    sget-object v2, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getRawValue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/16 v1, 0xd

    .line 905
    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 906
    sget-object v2, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getRawValue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/16 v1, 0xe

    .line 908
    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 909
    sget-object v2, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->getRawValue(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    :cond_9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->values:Ljava/util/Map;

    return-void
.end method

.method private check(Lnet/time4j/engine/ChronoElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)V"
        }
    .end annotation

    .line 1028
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1029
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 920
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 927
    invoke-direct {p0, p1}, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->check(Lnet/time4j/engine/ChronoElement;)V

    .line 928
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getChronology()Lnet/time4j/engine/Chronology;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "Lnet/time4j/format/platform/SimpleFormatter$Parsed;",
            ">;"
        }
    .end annotation

    .line 1021
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsed values do not have any chronology."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(Lnet/time4j/engine/ChronoElement;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 954
    invoke-direct {p0, p1}, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->check(Lnet/time4j/engine/ChronoElement;)V

    .line 955
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getDefaultMaximum()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 946
    invoke-direct {p0, p1}, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->check(Lnet/time4j/engine/ChronoElement;)V

    .line 947
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getDefaultMinimum()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRegisteredElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTimezone()Lnet/time4j/tz/TZID;
    .locals 2

    .line 997
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->tzid:Lnet/time4j/tz/TZID;

    if-eqz v0, :cond_0

    return-object v0

    .line 998
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    const-string v1, "Timezone was not parsed."

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasTimezone()Z
    .locals 1

    .line 990
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->tzid:Lnet/time4j/tz/TZID;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;TV;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method setTimezone(Lnet/time4j/tz/TZID;)V
    .locals 0

    .line 1014
    iput-object p1, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->tzid:Lnet/time4j/tz/TZID;

    return-void
.end method

.method public bridge synthetic with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;
    .locals 0

    .line 867
    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/format/platform/SimpleFormatter$Parsed;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/format/platform/SimpleFormatter$Parsed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;TV;)",
            "Lnet/time4j/format/platform/SimpleFormatter$Parsed;"
        }
    .end annotation

    .line 976
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 978
    iget-object p2, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->values:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 980
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/platform/SimpleFormatter$Parsed;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method
