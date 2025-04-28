.class public Lcom/henninghall/date_picker/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/henninghall/date_picker/Formats$Format;->d:Lcom/henninghall/date_picker/Formats$Format;

    invoke-static {p0, v0}, Lcom/henninghall/date_picker/LocaleUtils;->getFormat(Ljava/lang/String;Lcom/henninghall/date_picker/Formats$Format;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDatePattern(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 40
    invoke-static {v0, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 41
    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string v1, ""

    .line 42
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "([a-zA-Z]+)"

    const-string v1, " $1"

    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDateTimePattern(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 48
    invoke-static {v0, v0, p0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 49
    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/henninghall/date_picker/Formats$Format;->MMMEd:Lcom/henninghall/date_picker/Formats$Format;

    invoke-static {p0, v0}, Lcom/henninghall/date_picker/LocaleUtils;->getFormat(Ljava/lang/String;Lcom/henninghall/date_picker/Formats$Format;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFormat(Ljava/lang/String;Lcom/henninghall/date_picker/Formats$Format;)Ljava/lang/String;
    .locals 2

    .line 28
    :try_start_0
    invoke-static {p0, p1}, Lcom/henninghall/date_picker/Formats;->get(Ljava/lang/String;Lcom/henninghall/date_picker/Formats$Format;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/henninghall/date_picker/Formats$FormatNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "_"

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p0, p1}, Lcom/henninghall/date_picker/Formats;->get(Ljava/lang/String;Lcom/henninghall/date_picker/Formats$Format;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lcom/henninghall/date_picker/Formats$FormatNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 34
    :catch_1
    sget-object p0, Lcom/henninghall/date_picker/Formats;->defaultFormat:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    .line 55
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    const-string v1, "_"

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {p0}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 73
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 74
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 75
    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 80
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 81
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 82
    iput-object p0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 p0, 0x0

    .line 83
    invoke-virtual {p2, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 86
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 89
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 90
    invoke-virtual {p2, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :goto_0
    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static getYear(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/henninghall/date_picker/Formats$Format;->y:Lcom/henninghall/date_picker/Formats$Format;

    invoke-static {p0, v0}, Lcom/henninghall/date_picker/LocaleUtils;->getFormat(Ljava/lang/String;Lcom/henninghall/date_picker/Formats$Format;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localeUsesAmPm(Ljava/util/Locale;)Z
    .locals 2

    const/4 v0, 0x0

    .line 65
    invoke-static {v0, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 66
    instance-of v1, p0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    const-string v1, "a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
