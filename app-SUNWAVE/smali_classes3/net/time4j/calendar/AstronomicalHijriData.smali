.class final Lnet/time4j/calendar/AstronomicalHijriData;
.super Ljava/lang/Object;
.source "AstronomicalHijriData.java"

# interfaces
.implements Lnet/time4j/calendar/EraYearMonthDaySystem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/calendar/EraYearMonthDaySystem<",
        "Lnet/time4j/calendar/HijriCalendar;",
        ">;"
    }
.end annotation


# static fields
.field static final UMALQURA:Lnet/time4j/calendar/AstronomicalHijriData;


# instance fields
.field private final adjustment:I

.field private final firstOfMonth:[J

.field private final lengthOfMonth:[I

.field private final maxUTC:J

.field private final maxYear:I

.field private final minUTC:J

.field private final minYear:I

.field private final variant:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    :try_start_0
    new-instance v0, Lnet/time4j/calendar/AstronomicalHijriData;

    const-string v1, "islamic-umalqura"

    invoke-direct {v0, v1}, Lnet/time4j/calendar/AstronomicalHijriData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/calendar/AstronomicalHijriData;->UMALQURA:Lnet/time4j/calendar/AstronomicalHijriData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 127
    const-class v0, Lnet/time4j/calendar/AstronomicalHijriData;

    const-string v2, "Wrong file format: "

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static/range {p1 .. p1}, Lnet/time4j/calendar/HijriAdjustment;->from(Ljava/lang/String;)Lnet/time4j/calendar/HijriAdjustment;

    move-result-object v3

    move-object/from16 v4, p1

    .line 130
    iput-object v4, v1, Lnet/time4j/calendar/AstronomicalHijriData;->variant:Ljava/lang/String;

    .line 131
    invoke-virtual {v3}, Lnet/time4j/calendar/HijriAdjustment;->getBaseVariant()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {v3}, Lnet/time4j/calendar/HijriAdjustment;->getValue()I

    move-result v3

    iput v3, v1, Lnet/time4j/calendar/AstronomicalHijriData;->adjustment:I

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2d

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".data"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v5

    const-string v6, "calendar"

    invoke-virtual {v5, v6, v0, v3}, Lnet/time4j/base/ResourceLoader;->locate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    .line 135
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lnet/time4j/base/ResourceLoader;->load(Ljava/net/URI;Z)Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_0

    .line 138
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v7}, Lnet/time4j/base/ResourceLoader;->load(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v5

    .line 142
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 143
    invoke-virtual {v0, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v6, "type"

    .line 144
    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v4, "version"

    const-string v6, "1.0"

    .line 148
    invoke-virtual {v0, v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lnet/time4j/calendar/AstronomicalHijriData;->version:Ljava/lang/String;

    const-string v4, "iso-start"

    const-string v6, ""

    .line 150
    invoke-virtual {v0, v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    sget-object v6, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_CALENDAR_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {v6, v4}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/PlainDate;

    .line 152
    sget-object v6, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v4, v6}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lnet/time4j/calendar/AstronomicalHijriData;->minUTC:J

    const-string v4, "min"

    const-string v6, "1"

    .line 153
    invoke-virtual {v0, v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 154
    iput v4, v1, Lnet/time4j/calendar/AstronomicalHijriData;->minYear:I

    const-string v6, "max"

    const-string v10, "0"

    .line 155
    invoke-virtual {v0, v6, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 156
    iput v6, v1, Lnet/time4j/calendar/AstronomicalHijriData;->maxYear:I

    sub-int v10, v6, v4

    add-int/2addr v10, v7

    const/16 v7, 0xc

    mul-int/2addr v10, v7

    .line 159
    new-array v11, v10, [I

    .line 160
    new-array v10, v10, [J

    const/4 v13, 0x0

    :goto_0
    if-gt v4, v6, :cond_4

    .line 165
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    const-string v15, " "

    .line 169
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    .line 170
    :goto_1
    array-length v12, v14

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-ge v15, v12, :cond_1

    .line 171
    aget-object v12, v14, v15

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v11, v13

    .line 172
    aput-wide v8, v10, v13

    .line 173
    aget v12, v11, v13
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v5

    move/from16 v17, v6

    int-to-long v5, v12

    add-long/2addr v8, v5

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v17

    goto :goto_1

    :cond_1
    move-object/from16 v16, v5

    move/from16 v17, v6

    .line 176
    :try_start_1
    array-length v5, v14

    if-ge v5, v7, :cond_2

    .line 177
    new-array v0, v13, [I

    .line 178
    new-array v4, v13, [J

    const/4 v5, 0x0

    .line 179
    invoke-static {v11, v5, v0, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    invoke-static {v10, v5, v4, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v11, v0

    move-object v10, v4

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v17

    goto :goto_0

    :cond_3
    move-object/from16 v16, v5

    .line 167
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (missing year="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object/from16 v16, v5

    :goto_2
    const-wide/16 v4, 0x1

    sub-long/2addr v8, v4

    .line 187
    iput-wide v8, v1, Lnet/time4j/calendar/AstronomicalHijriData;->maxUTC:J

    .line 188
    iput-object v11, v1, Lnet/time4j/calendar/AstronomicalHijriData;->lengthOfMonth:[I

    .line 189
    iput-object v10, v1, Lnet/time4j/calendar/AstronomicalHijriData;->firstOfMonth:[J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 199
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_3
    return-void

    :cond_5
    move-object/from16 v16, v5

    .line 146
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong hijri variant: expected="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", found="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v16, v5

    :goto_4
    move-object v2, v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    .line 194
    :goto_5
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_4
    move-exception v0

    move-object/from16 v16, v5

    .line 192
    :goto_6
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 197
    :goto_7
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v3, v0

    .line 199
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 200
    :goto_8
    throw v2
.end method

.method constructor <init>(Lnet/time4j/calendar/HijriData;)V
    .locals 11

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "islamic-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/time4j/calendar/HijriData;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/calendar/AstronomicalHijriData;->variant:Ljava/lang/String;

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lnet/time4j/calendar/AstronomicalHijriData;->adjustment:I

    .line 89
    invoke-interface {p1}, Lnet/time4j/calendar/HijriData;->version()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/time4j/calendar/AstronomicalHijriData;->version:Ljava/lang/String;

    .line 90
    invoke-interface {p1}, Lnet/time4j/calendar/HijriData;->minimumYear()I

    move-result v1

    iput v1, p0, Lnet/time4j/calendar/AstronomicalHijriData;->minYear:I

    .line 91
    invoke-interface {p1}, Lnet/time4j/calendar/HijriData;->maximumYear()I

    move-result v2

    iput v2, p0, Lnet/time4j/calendar/AstronomicalHijriData;->maxYear:I

    if-lt v2, v1, :cond_3

    .line 95
    invoke-interface {p1}, Lnet/time4j/calendar/HijriData;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "islamic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    invoke-interface {p1}, Lnet/time4j/calendar/HijriData;->firstGregorianDate()Lnet/time4j/PlainDate;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v3

    iput-wide v3, p0, Lnet/time4j/calendar/AstronomicalHijriData;->minUTC:J

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0xc

    mul-int/2addr v2, v4

    .line 101
    new-array v5, v2, [I

    iput-object v5, p0, Lnet/time4j/calendar/AstronomicalHijriData;->lengthOfMonth:[I

    .line 102
    new-array v2, v2, [J

    iput-object v2, p0, Lnet/time4j/calendar/AstronomicalHijriData;->firstOfMonth:[J

    const-wide/16 v5, 0x0

    .line 106
    :goto_0
    iget v2, p0, Lnet/time4j/calendar/AstronomicalHijriData;->maxYear:I

    if-gt v1, v2, :cond_1

    move v2, v3

    :goto_1
    if-gt v2, v4, :cond_0

    .line 108
    invoke-interface {p1, v1, v2}, Lnet/time4j/calendar/HijriData;->lengthOfMonth(II)I

    move-result v7

    .line 109
    iget-object v8, p0, Lnet/time4j/calendar/AstronomicalHijriData;->lengthOfMonth:[I

    aput v7, v8, v0

    .line 110
    iget-object v8, p0, Lnet/time4j/calendar/AstronomicalHijriData;->firstOfMonth:[J

    iget-wide v9, p0, Lnet/time4j/calendar/AstronomicalHijriData;->minUTC:J

    add-long/2addr v9, v5

    aput-wide v9, v8, v0

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-wide v0, p0, Lnet/time4j/calendar/AstronomicalHijriData;->minUTC:J

    add-long/2addr v0, v5

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lnet/time4j/calendar/AstronomicalHijriData;->maxUTC:J

    return-void

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name must not start with \"islamic\"."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Maximum year before minimum year."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static search(J[J)I
    .locals 5

    .line 360
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    .line 363
    div-int/lit8 v2, v2, 0x2

    .line 365
    aget-wide v3, p2, v2

    cmp-long v3, v3, p0

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    return v1
.end method


# virtual methods
.method public getEras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 261
    sget-object v0, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    .line 262
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I
    .locals 2

    .line 300
    sget-object v0, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    if-ne p1, v0, :cond_1

    .line 304
    iget p1, p0, Lnet/time4j/calendar/AstronomicalHijriData;->minYear:I

    sub-int p1, p2, p1

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 306
    iget-object v0, p0, Lnet/time4j/calendar/AstronomicalHijriData;->lengthOfMonth:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 310
    aget p1, v0, p1

    return p1

    .line 307
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", month="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong era: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I
    .locals 5

    .line 320
    sget-object v0, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    if-ne p1, v0, :cond_3

    .line 324
    iget p1, p0, Lnet/time4j/calendar/AstronomicalHijriData;->minYear:I

    if-lt p2, p1, :cond_2

    iget p1, p0, Lnet/time4j/calendar/AstronomicalHijriData;->maxYear:I

    if-gt p2, p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0xc

    if-gt v1, v2, :cond_1

    .line 331
    iget v3, p0, Lnet/time4j/calendar/AstronomicalHijriData;->minYear:I

    sub-int v3, p2, v3

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    .line 332
    iget-object v2, p0, Lnet/time4j/calendar/AstronomicalHijriData;->lengthOfMonth:[I

    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 335
    aget v2, v2, v3

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Year range is not fully covered by underlying data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return p1

    .line 325
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: yearOfEra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong era: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getMaximumSinceUTC()J
    .locals 4

    .line 254
    iget-wide v0, p0, Lnet/time4j/calendar/AstronomicalHijriData;->maxUTC:J

    iget v2, p0, Lnet/time4j/calendar/AstronomicalHijriData;->adjustment:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 4

    .line 247
    iget-wide v0, p0, Lnet/time4j/calendar/AstronomicalHijriData;->minUTC:J

    iget v2, p0, Lnet/time4j/calendar/AstronomicalHijriData;->adjustment:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getVersion()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lnet/time4j/calendar/AstronomicalHijriData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isValid(Lnet/time4j/engine/CalendarEra;III)Z
    .locals 4

    .line 274
    sget-object v0, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget v0, p0, Lnet/time4j/calendar/AstronomicalHijriData;->minYear:I

    if-lt p2, v0, :cond_2

    iget v2, p0, Lnet/time4j/calendar/AstronomicalHijriData;->maxYear:I

    if-gt p2, v2, :cond_2

    const/4 v2, 0x1

    if-lt p3, v2, :cond_2

    const/16 v3, 0xc

    if-gt p3, v3, :cond_2

    if-ge p4, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v0, p2, v0

    mul-int/2addr v0, v3

    add-int/2addr v0, p3

    sub-int/2addr v0, v2

    .line 285
    iget-object v3, p0, Lnet/time4j/calendar/AstronomicalHijriData;->lengthOfMonth:[I

    array-length v3, v3

    if-lt v0, v3, :cond_1

    return v1

    .line 289
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/AstronomicalHijriData;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p1

    if-gt p4, p1, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 48
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/AstronomicalHijriData;->transform(Lnet/time4j/calendar/HijriCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/HijriCalendar;)J
    .locals 4

    .line 232
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getVariant()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/calendar/AstronomicalHijriData;->variant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getYear()I

    move-result v0

    iget v1, p0, Lnet/time4j/calendar/AstronomicalHijriData;->minYear:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getMonth()Lnet/time4j/calendar/HijriMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/HijriMonth;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 240
    iget-object v1, p0, Lnet/time4j/calendar/AstronomicalHijriData;->firstOfMonth:[J

    aget-wide v0, v1, v0

    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getDayOfMonth()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget p1, p0, Lnet/time4j/calendar/AstronomicalHijriData;->adjustment:I

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    return-wide v0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given date does not belong to this calendar system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (calendar variants are different)."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/AstronomicalHijriData;->transform(J)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/HijriCalendar;
    .locals 8

    .line 210
    iget v0, p0, Lnet/time4j/calendar/AstronomicalHijriData;->adjustment:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 211
    iget-object v2, p0, Lnet/time4j/calendar/AstronomicalHijriData;->firstOfMonth:[J

    invoke-static {v0, v1, v2}, Lnet/time4j/calendar/AstronomicalHijriData;->search(J[J)I

    move-result v2

    if-ltz v2, :cond_1

    .line 214
    iget-object v3, p0, Lnet/time4j/calendar/AstronomicalHijriData;->firstOfMonth:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    aget-wide v4, v3, v2

    iget-object v6, p0, Lnet/time4j/calendar/AstronomicalHijriData;->lengthOfMonth:[I

    aget v6, v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 218
    :cond_0
    div-int/lit8 p1, v2, 0xc

    iget p2, p0, Lnet/time4j/calendar/AstronomicalHijriData;->minYear:I

    add-int/2addr p1, p2

    .line 219
    rem-int/lit8 p2, v2, 0xc

    add-int/lit8 p2, p2, 0x1

    .line 220
    aget-wide v2, v3, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 221
    iget-object v1, p0, Lnet/time4j/calendar/AstronomicalHijriData;->variant:Ljava/lang/String;

    invoke-static {v1, p1, p2, v0}, Lnet/time4j/calendar/HijriCalendar;->of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
