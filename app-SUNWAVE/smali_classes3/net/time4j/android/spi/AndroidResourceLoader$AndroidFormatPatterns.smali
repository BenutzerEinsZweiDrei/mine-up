.class Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;
.super Ljava/lang/Object;
.source "AndroidResourceLoader.java"

# interfaces
.implements Lnet/time4j/format/internal/ExtendedPatterns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/android/spi/AndroidResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidFormatPatterns"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/android/spi/AndroidResourceLoader;


# direct methods
.method private constructor <init>(Lnet/time4j/android/spi/AndroidResourceLoader;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;->this$0:Lnet/time4j/android/spi/AndroidResourceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/android/spi/AndroidResourceLoader;Lnet/time4j/android/spi/AndroidResourceLoader$1;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;-><init>(Lnet/time4j/android/spi/AndroidResourceLoader;)V

    return-void
.end method

.method private getDelegate()Lnet/time4j/format/internal/ExtendedPatterns;
    .locals 1

    .line 345
    invoke-static {}, Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;->access$1000()Lnet/time4j/i18n/IsoTextProviderSPI;

    move-result-object v0

    return-object v0
.end method

.method private to24HourFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 310
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-ne v3, v4, :cond_1

    .line 313
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_3

    .line 317
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 319
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_3

    .line 322
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_3

    move v2, v5

    .line 329
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v4, 0x68

    if-ne v3, v4, :cond_2

    const/16 v3, 0x48

    .line 333
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v4, 0x61

    if-eq v3, v4, :cond_3

    .line 335
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDatePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 232
    invoke-direct {p0}, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;->getDelegate()Lnet/time4j/format/internal/ExtendedPatterns;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/time4j/format/internal/ExtendedPatterns;->getDatePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDateTimePattern(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 293
    invoke-direct {p0}, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;->getDelegate()Lnet/time4j/format/internal/ExtendedPatterns;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/time4j/format/internal/ExtendedPatterns;->getDateTimePattern(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIntervalPattern(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 300
    invoke-direct {p0}, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;->getDelegate()Lnet/time4j/format/internal/ExtendedPatterns;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/time4j/format/internal/ExtendedPatterns;->getIntervalPattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;->getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 3

    .line 253
    invoke-direct {p0}, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;->getDelegate()Lnet/time4j/format/internal/ExtendedPatterns;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/time4j/format/internal/ExtendedPatterns;->getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p3

    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    sget-object v0, Lnet/time4j/format/DisplayMode;->SHORT:Lnet/time4j/format/DisplayMode;

    if-eq p1, v0, :cond_0

    .line 258
    invoke-direct {p0}, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;->getDelegate()Lnet/time4j/format/internal/ExtendedPatterns;

    move-result-object v0

    sget-object v1, Lnet/time4j/format/DisplayMode;->SHORT:Lnet/time4j/format/DisplayMode;

    invoke-interface {v0, v1, p2}, Lnet/time4j/format/internal/ExtendedPatterns;->getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    const/16 v1, 0x61

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 261
    :goto_1
    iget-object v1, p0, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;->this$0:Lnet/time4j/android/spi/AndroidResourceLoader;

    invoke-static {v1}, Lnet/time4j/android/spi/AndroidResourceLoader;->access$900(Lnet/time4j/android/spi/AndroidResourceLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, v0, :cond_7

    if-eqz v1, :cond_2

    .line 265
    invoke-direct {p0, p3}, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;->to24HourFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "  "

    const-string p3, " "

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 267
    :cond_2
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "en"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "b"

    goto :goto_2

    :cond_3
    const-string p2, "B"

    .line 268
    :goto_2
    sget-object p3, Lnet/time4j/android/spi/AndroidResourceLoader$1;->$SwitchMap$net$time4j$format$DisplayMode:[I

    invoke-virtual {p1}, Lnet/time4j/format/DisplayMode;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const-string p3, "h:mm:ss "

    if-eq p1, v2, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "h:mm "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 274
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 272
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " z"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 270
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " zzzz"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    return-object p3
.end method
