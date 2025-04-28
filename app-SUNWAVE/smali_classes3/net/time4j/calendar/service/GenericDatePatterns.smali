.class public final Lnet/time4j/calendar/service/GenericDatePatterns;
.super Ljava/lang/Object;
.source "GenericDatePatterns.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 63
    invoke-interface {p1}, Lnet/time4j/engine/DisplayStyle;->getStyleValue()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/format/DisplayMode;->ofStyle(I)Lnet/time4j/format/DisplayMode;

    move-result-object p1

    const-string v0, "iso8601"

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1, p2}, Lnet/time4j/format/CalendarText;->patternForDate(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "F("

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Lnet/time4j/format/DisplayMode;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p0, p2}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p1}, Lnet/time4j/i18n/PropertyBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "generic"

    .line 78
    invoke-static {p0, p2}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p0

    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
