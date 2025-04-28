.class Lnet/time4j/format/CalendarText$FallbackProvider;
.super Ljava/lang/Object;
.source "CalendarText.java"

# interfaces
.implements Lnet/time4j/format/TextProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/CalendarText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallbackProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/format/CalendarText$1;)V
    .locals 0

    .line 1432
    invoke-direct {p0}, Lnet/time4j/format/CalendarText$FallbackProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public eras(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;)[Ljava/lang/String;
    .locals 0

    .line 1517
    sget-object p1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p3, p1, :cond_0

    const-string p1, "B"

    const-string p2, "A"

    .line 1518
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "BC"

    const-string p2, "AD"

    .line 1520
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .line 1458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Never called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedCalendarTypes()[Ljava/lang/String;
    .locals 2

    .line 1453
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Never called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public meridiems(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 0

    .line 1533
    sget-object p1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p3, p1, :cond_0

    const-string p1, "A"

    const-string p2, "P"

    .line 1534
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "AM"

    const-string p2, "PM"

    .line 1536
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public months(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)[Ljava/lang/String;
    .locals 14

    .line 1470
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    move-object/from16 v1, p3

    if-ne v1, v0, :cond_0

    const-string v1, "01"

    const-string v2, "02"

    const-string v3, "03"

    const-string v4, "04"

    const-string v5, "05"

    const-string v6, "06"

    const-string v7, "07"

    const-string v8, "08"

    const-string v9, "09"

    const-string v10, "10"

    const-string v11, "11"

    const-string v12, "12"

    const-string v13, "13"

    .line 1471
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "10"

    const-string v11, "11"

    const-string v12, "12"

    const-string v13, "13"

    .line 1475
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quarters(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 0

    .line 1490
    sget-object p1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p3, p1, :cond_0

    const-string p1, "1"

    const-string p2, "2"

    const-string p3, "3"

    const-string p4, "4"

    .line 1491
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Q1"

    const-string p2, "Q2"

    const-string p3, "Q3"

    const-string p4, "Q4"

    .line 1493
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public supportsCalendarType(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public supportsLanguage(Ljava/util/Locale;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "FallbackProvider"

    return-object v0
.end method

.method public weekdays(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 7

    const-string v0, "1"

    const-string v1, "2"

    const-string v2, "3"

    const-string v3, "4"

    const-string v4, "5"

    const-string v5, "6"

    const-string v6, "7"

    .line 1506
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
