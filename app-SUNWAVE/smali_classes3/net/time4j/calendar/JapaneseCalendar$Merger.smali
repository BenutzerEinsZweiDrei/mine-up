.class Lnet/time4j/calendar/JapaneseCalendar$Merger;
.super Ljava/lang/Object;
.source "JapaneseCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JapaneseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/calendar/JapaneseCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/JapaneseCalendar$1;)V
    .locals 0

    .line 2741
    invoke-direct {p0}, Lnet/time4j/calendar/JapaneseCalendar$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2741
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 2741
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/JapaneseCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/calendar/JapaneseCalendar;"
        }
    .end annotation

    .line 2778
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2779
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    goto :goto_0

    .line 2780
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/Leniency;

    invoke-virtual {v0}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2781
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    .line 2786
    :goto_0
    sget-object v1, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0}, Lnet/time4j/calendar/JapaneseCalendar$Merger;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/StartOfDay;

    .line 2787
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$2200()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/Chronology;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/JapaneseCalendar;"
        }
    .end annotation

    .line 2799
    sget-object p4, Lnet/time4j/calendar/JapaneseCalendar;->ERA:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, p4}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/time4j/calendar/Nengo;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 2802
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing Japanese nengo/era."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object v0

    .line 2806
    :cond_0
    sget-object v1, Lnet/time4j/calendar/JapaneseCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 2809
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing Japanese year."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object v0

    .line 2813
    :cond_1
    invoke-virtual {p4}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 2816
    sget-object v4, Lnet/time4j/calendar/JapaneseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2817
    sget-object v4, Lnet/time4j/calendar/JapaneseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/calendar/EastAsianMonth;

    goto :goto_0

    .line 2818
    :cond_2
    sget-object v4, Lnet/time4j/calendar/JapaneseCalendar;->MONTH_AS_ORDINAL:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2819
    sget-object v4, Lnet/time4j/calendar/JapaneseCalendar;->MONTH_AS_ORDINAL:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    const/16 v5, 0x751

    if-lt v3, v5, :cond_3

    .line 2822
    invoke-static {v4}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v4

    goto :goto_0

    .line 2824
    :cond_3
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v5

    add-int/lit16 v6, v3, -0x2bd

    aget-byte v5, v5, v6

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 2826
    invoke-static {v4}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v4

    invoke-virtual {v4}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v4

    goto :goto_0

    :cond_4
    if-le v4, v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    .line 2828
    invoke-static {v4}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v4

    goto :goto_0

    .line 2830
    :cond_5
    invoke-static {v4}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v4

    goto :goto_0

    :cond_6
    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_9

    .line 2836
    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v3}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 2838
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing Japanese day of month."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object v0

    :cond_7
    if-eqz p3, :cond_8

    .line 2841
    sget-object p1, Lnet/time4j/format/Leniency;->LAX:Lnet/time4j/format/Leniency;

    goto :goto_1

    :cond_8
    sget-object p1, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object p3, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 2842
    invoke-interface {p2, p1, p3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/Leniency;

    .line 2843
    :goto_1
    invoke-static {p4, v1, v4, v3, p1}, Lnet/time4j/calendar/JapaneseCalendar;->of(Lnet/time4j/calendar/Nengo;ILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/format/Leniency;)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1

    .line 2846
    :cond_9
    sget-object v4, Lnet/time4j/calendar/JapaneseCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    if-eq v4, v2, :cond_b

    .line 2848
    invoke-static {v3}, Lnet/time4j/calendar/JapaneseCalendar;->access$2100(I)I

    move-result v2

    if-gt v4, v2, :cond_b

    .line 2850
    :try_start_0
    invoke-static {v3, v4}, Lnet/time4j/calendar/JapaneseCalendar;->access$2300(II)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    .line 2851
    invoke-static {v3, v4}, Lnet/time4j/calendar/JapaneseCalendar;->access$2400(II)I

    move-result v3

    if-eqz p3, :cond_a

    .line 2852
    sget-object p2, Lnet/time4j/format/Leniency;->LAX:Lnet/time4j/format/Leniency;

    goto :goto_2

    :cond_a
    sget-object p3, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 2853
    invoke-interface {p2, p3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/format/Leniency;

    .line 2854
    :goto_2
    invoke-static {p4, v1, v2, v3, p2}, Lnet/time4j/calendar/JapaneseCalendar;->of(Lnet/time4j/calendar/Nengo;ILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/format/Leniency;)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2856
    :catch_0
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Invalid Japanese date."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    :cond_b
    return-object v0
.end method

.method public getDefaultPivotYear()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 2759
    sget-object v0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "japanese"

    .line 2752
    invoke-static {v0, p1, p2}, Lnet/time4j/calendar/service/GenericDatePatterns;->get(Ljava/lang/String;Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 2741
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$Merger;->preformat(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    return-object p1
.end method

.method public preparser()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
