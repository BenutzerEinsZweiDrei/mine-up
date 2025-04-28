.class Lnet/time4j/format/CalendarText$JDKTextProvider;
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
    name = "JDKTextProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/format/CalendarText$1;)V
    .locals 0

    .line 1217
    invoke-direct {p0}, Lnet/time4j/format/CalendarText$JDKTextProvider;-><init>()V

    return-void
.end method

.method private static narrow([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3

    .line 1395
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1398
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1399
    aget-object v2, p0, v1

    invoke-static {v2}, Lnet/time4j/format/CalendarText$JDKTextProvider;->toSingleLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 1401
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static toSingleLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1412
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    .line 1415
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x20

    int-to-char p0, v0

    .line 1418
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x410

    if-lt v0, v1, :cond_2

    const/16 v1, 0x42f

    if-gt v0, v1, :cond_2

    .line 1420
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, 0x430

    if-lt v0, v1, :cond_3

    const/16 v1, 0x44f

    if-gt v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x20

    int-to-char p0, v0

    .line 1423
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method


# virtual methods
.method public eras(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;)[Ljava/lang/String;
    .locals 3

    .line 1343
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    .line 1345
    sget-object p2, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p3, p2, :cond_4

    .line 1346
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object p1

    .line 1347
    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    .line 1348
    array-length v0, p1

    :goto_0
    if-ge p3, v0, :cond_3

    .line 1349
    aget-object v1, p1, p3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1350
    aget-object v1, p1, p3

    invoke-static {v1}, Lnet/time4j/format/CalendarText$JDKTextProvider;->toSingleLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-nez p3, :cond_1

    .line 1351
    array-length v2, p1

    if-ne v2, v1, :cond_1

    const-string v1, "B"

    .line 1352
    aput-object v1, p2, p3

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 1353
    array-length v2, p1

    if-ne v2, v1, :cond_2

    const-string v1, "A"

    .line 1354
    aput-object v1, p2, p3

    goto :goto_1

    .line 1356
    :cond_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-object p2

    .line 1361
    :cond_4
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 1254
    invoke-static {}, Ljava/text/DateFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCalendarTypes()[Ljava/lang/String;
    .locals 1

    const-string v0, "iso8601"

    .line 1247
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public meridiems(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 0

    .line 1374
    sget-object p1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p3, p1, :cond_0

    const-string p1, "A"

    const-string p2, "P"

    .line 1375
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1379
    :cond_0
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public months(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)[Ljava/lang/String;
    .locals 0

    .line 1267
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    .line 1269
    sget-object p2, Lnet/time4j/format/CalendarText$1;->$SwitchMap$net$time4j$format$TextWidth:[I

    invoke-virtual {p3}, Lnet/time4j/format/TextWidth;->ordinal()I

    move-result p4

    aget p2, p2, p4

    const/4 p4, 0x1

    if-eq p2, p4, :cond_2

    const/4 p4, 0x2

    if-eq p2, p4, :cond_1

    const/4 p4, 0x3

    if-eq p2, p4, :cond_1

    const/4 p4, 0x4

    if-ne p2, p4, :cond_0

    .line 1276
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc

    invoke-static {p1, p2}, Lnet/time4j/format/CalendarText$JDKTextProvider;->narrow([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1278
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p3}, Lnet/time4j/format/TextWidth;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1274
    :cond_1
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1271
    :cond_2
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public quarters(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 0

    const-string p1, "Q1"

    const-string p2, "Q2"

    const-string p3, "Q3"

    const-string p4, "Q4"

    .line 1291
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public supportsCalendarType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "iso8601"

    .line 1225
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public supportsLanguage(Ljava/util/Locale;)Z
    .locals 5

    .line 1232
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 1234
    invoke-static {}, Ljava/text/DateFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1235
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JDKTextProvider"

    return-object v0
.end method

.method public weekdays(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 5

    .line 1303
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    .line 1306
    sget-object v0, Lnet/time4j/format/CalendarText$1;->$SwitchMap$net$time4j$format$TextWidth:[I

    invoke-virtual {p3}, Lnet/time4j/format/TextWidth;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    .line 1315
    sget-object p1, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    const-string p3, ""

    .line 1316
    invoke-virtual {p0, p3, p2, p1, p4}, Lnet/time4j/format/CalendarText$JDKTextProvider;->weekdays(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object p1

    .line 1317
    invoke-static {p1, v3}, Lnet/time4j/format/CalendarText$JDKTextProvider;->narrow([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1320
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown text width: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1312
    :cond_1
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1308
    :cond_2
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object p1

    .line 1324
    :goto_0
    array-length p2, p1

    if-le p2, v3, :cond_3

    .line 1325
    aget-object p2, p1, v2

    new-array p3, v3, [Ljava/lang/String;

    const/4 p4, 0x0

    const/4 v0, 0x6

    .line 1327
    invoke-static {p1, v1, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, p3, v0

    move-object p1, p3

    :cond_3
    return-object p1
.end method
