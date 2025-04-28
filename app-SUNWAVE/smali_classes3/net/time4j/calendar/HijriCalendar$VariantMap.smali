.class Lnet/time4j/calendar/HijriCalendar$VariantMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "HijriCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HijriCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariantMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Lnet/time4j/calendar/EraYearMonthDaySystem<",
        "Lnet/time4j/calendar/HijriCalendar;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1632
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HijriCalendar$1;)V
    .locals 0

    .line 1632
    invoke-direct {p0}, Lnet/time4j/calendar/HijriCalendar$VariantMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1632
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$VariantMap;->get(Ljava/lang/Object;)Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lnet/time4j/calendar/EraYearMonthDaySystem;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lnet/time4j/calendar/EraYearMonthDaySystem<",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .line 1640
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/EraYearMonthDaySystem;

    if-nez v0, :cond_4

    .line 1643
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "islamic-umalqura"

    .line 1645
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1646
    sget-object p1, Lnet/time4j/calendar/AstronomicalHijriData;->UMALQURA:Lnet/time4j/calendar/AstronomicalHijriData;

    move-object v0, p1

    goto :goto_2

    .line 1648
    :cond_0
    invoke-static {v1}, Lnet/time4j/calendar/HijriAdjustment;->from(Ljava/lang/String;)Lnet/time4j/calendar/HijriAdjustment;

    move-result-object p1

    .line 1649
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriAdjustment;->getBaseVariant()Ljava/lang/String;

    move-result-object v2

    .line 1651
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->values()[Lnet/time4j/calendar/HijriAlgorithm;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 1652
    invoke-virtual {v6}, Lnet/time4j/calendar/HijriAlgorithm;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1653
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriAdjustment;->getValue()I

    move-result p1

    invoke-virtual {v6, p1}, Lnet/time4j/calendar/HijriAlgorithm;->getCalendarSystem(I)Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 1660
    :try_start_0
    new-instance v0, Lnet/time4j/calendar/AstronomicalHijriData;

    invoke-direct {v0, v1}, Lnet/time4j/calendar/AstronomicalHijriData;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/time4j/engine/ChronoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    return-object p1

    .line 1669
    :cond_3
    :goto_2
    invoke-virtual {p0, v1, v0}, Lnet/time4j/calendar/HijriCalendar$VariantMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EraYearMonthDaySystem;

    if-eqz p1, :cond_4

    move-object v0, p1

    :cond_4
    return-object v0
.end method
