.class public Lnet/time4j/i18n/WeekdataProviderSPI;
.super Ljava/lang/Object;
.source "WeekdataProviderSPI.java"

# interfaces
.implements Lnet/time4j/format/WeekdataProvider;


# instance fields
.field private final countriesWithMinDays4:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final endOfWeekend:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/Weekday;",
            ">;"
        }
    .end annotation
.end field

.field private final firstDayOfWeek:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/Weekday;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/String;

.field private final startOfWeekend:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/Weekday;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 14

    const-string v0, "Unexpected format: "

    .line 61
    const-class v1, Lnet/time4j/i18n/WeekdataProviderSPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v2

    const-string v3, "i18n"

    const-string v4, "data/week.data"

    invoke-virtual {v2, v3, v1, v4}, Lnet/time4j/base/ResourceLoader;->locate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 65
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lnet/time4j/base/ResourceLoader;->load(Ljava/net/URI;Z)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    .line 69
    :try_start_0
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v6

    invoke-virtual {v6, v1, v4, v5}, Lnet/time4j/base/ResourceLoader;->load(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v3, :cond_11

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->source:Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 79
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 80
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 83
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "US-ASCII"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    const-string v8, "#"

    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    const/16 v8, 0x3d

    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, 0x0

    .line 95
    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, "minDays-4"

    .line 98
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 99
    array-length v8, v7

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 100
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 102
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 103
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const-string v8, "start-"

    .line 114
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v11, 0x6

    if-eqz v8, :cond_5

    .line 115
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 116
    sget-object v10, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    move-object v11, v4

    goto :goto_2

    :cond_5
    const-string v8, "end-"

    .line 118
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x4

    .line 119
    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 120
    sget-object v10, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    move-object v11, v5

    goto :goto_2

    :cond_6
    const-string v8, "first-"

    .line 122
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 123
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 124
    sget-object v10, Lnet/time4j/Weekday;->MONDAY:Lnet/time4j/Weekday;

    move-object v11, v2

    :goto_2
    const-string v12, "sun"

    .line 131
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 132
    sget-object v10, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    goto :goto_3

    :cond_7
    const-string v12, "sat"

    .line 133
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 134
    sget-object v10, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    goto :goto_3

    :cond_8
    const-string v12, "fri"

    .line 135
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 136
    sget-object v10, Lnet/time4j/Weekday;->FRIDAY:Lnet/time4j/Weekday;

    goto :goto_3

    :cond_9
    const-string v12, "thu"

    .line 137
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 138
    sget-object v10, Lnet/time4j/Weekday;->THURSDAY:Lnet/time4j/Weekday;

    goto :goto_3

    :cond_a
    const-string v12, "wed"

    .line 139
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 140
    sget-object v10, Lnet/time4j/Weekday;->WEDNESDAY:Lnet/time4j/Weekday;

    goto :goto_3

    :cond_b
    const-string v12, "tue"

    .line 141
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 142
    sget-object v10, Lnet/time4j/Weekday;->TUESDAY:Lnet/time4j/Weekday;

    goto :goto_3

    :cond_c
    const-string v12, "mon"

    .line 143
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 144
    sget-object v10, Lnet/time4j/Weekday;->MONDAY:Lnet/time4j/Weekday;

    .line 147
    :cond_d
    :goto_3
    array-length v8, v7

    :goto_4
    if-ge v9, v8, :cond_1

    aget-object v12, v7, v9

    .line 148
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 150
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_e

    .line 151
    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 127
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->source:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_10
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->countriesWithMinDays4:Ljava/util/Set;

    .line 158
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->firstDayOfWeek:Ljava/util/Map;

    .line 159
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->startOfWeekend:Ljava/util/Map;

    .line 160
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->endOfWeekend:Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 171
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v1

    .line 165
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->source:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 171
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 172
    :goto_6
    throw v0

    :cond_11
    const-string v0, "@STATIC"

    .line 176
    iput-object v0, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->source:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->countriesWithMinDays4:Ljava/util/Set;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->firstDayOfWeek:Ljava/util/Map;

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->startOfWeekend:Ljava/util/Map;

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->endOfWeekend:Ljava/util/Map;

    .line 182
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: File \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_7
    return-void
.end method


# virtual methods
.method public getEndOfWeekend(Ljava/util/Locale;)I
    .locals 2

    .line 249
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 250
    sget-object v0, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    .line 252
    iget-object v1, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->endOfWeekend:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v0, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->endOfWeekend:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lnet/time4j/Weekday;

    .line 256
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/Weekday;->getValue()I

    move-result p1

    return p1
.end method

.method public getFirstDayOfWeek(Ljava/util/Locale;)I
    .locals 2

    .line 192
    iget-object v0, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->firstDayOfWeek:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 195
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    :goto_0
    return p1

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 200
    sget-object v0, Lnet/time4j/Weekday;->MONDAY:Lnet/time4j/Weekday;

    .line 202
    iget-object v1, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->firstDayOfWeek:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v0, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->firstDayOfWeek:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lnet/time4j/Weekday;

    .line 206
    :cond_2
    invoke-virtual {v0}, Lnet/time4j/Weekday;->getValue()I

    move-result p1

    return p1
.end method

.method public getMinimalDaysInFirstWeek(Ljava/util/Locale;)I
    .locals 4

    .line 213
    iget-object v0, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->countriesWithMinDays4:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 216
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result p1

    return p1

    .line 219
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->countriesWithMinDays4:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    move v1, v3

    :cond_2
    return v1
.end method

.method public getStartOfWeekend(Ljava/util/Locale;)I
    .locals 2

    .line 235
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 236
    sget-object v0, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    .line 238
    iget-object v1, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->startOfWeekend:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v0, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->startOfWeekend:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lnet/time4j/Weekday;

    .line 242
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/Weekday;->getValue()I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/i18n/WeekdataProviderSPI;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
