.class final Lnet/time4j/tz/PlatformTimezone;
.super Lnet/time4j/tz/Timezone;
.source "PlatformTimezone.java"


# static fields
.field private static final serialVersionUID:J = -0x7507ebf4e04b2c0fL


# instance fields
.field private final transient fixedOffset:Lnet/time4j/tz/ZonalOffset;

.field private final id:Lnet/time4j/tz/TZID;

.field private final strict:Z

.field private final tz:Ljava/util/TimeZone;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lnet/time4j/tz/Timezone;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    .line 77
    iput-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lnet/time4j/tz/PlatformTimezone;->strict:Z

    .line 79
    iput-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    return-void
.end method

.method constructor <init>(Lnet/time4j/tz/TZID;)V
    .locals 2

    .line 91
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, v0, v1}, Lnet/time4j/tz/PlatformTimezone;-><init>(Lnet/time4j/tz/TZID;Ljava/util/TimeZone;Z)V

    return-void
.end method

.method constructor <init>(Lnet/time4j/tz/TZID;Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-static {p2}, Lnet/time4j/tz/PlatformTimezone;->findZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/tz/PlatformTimezone;-><init>(Lnet/time4j/tz/TZID;Ljava/util/TimeZone;Z)V

    return-void
.end method

.method private constructor <init>(Lnet/time4j/tz/TZID;Ljava/util/TimeZone;Z)V
    .locals 1

    .line 113
    invoke-direct {p0}, Lnet/time4j/tz/Timezone;-><init>()V

    .line 115
    iput-object p1, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    .line 116
    invoke-virtual {p2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TimeZone;

    iput-object p1, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    .line 117
    iput-boolean p3, p0, Lnet/time4j/tz/PlatformTimezone;->strict:Z

    .line 119
    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 120
    iput-object p3, p0, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    goto :goto_2

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GMT"

    .line 125
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Etc/"

    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Greenwich"

    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UCT"

    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UTC"

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Universal"

    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Zulu"

    .line 131
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_3

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    .line 136
    invoke-static {p1}, Lnet/time4j/tz/PlatformTimezone;->fromOffsetMillis(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    goto :goto_2

    .line 139
    :cond_3
    iput-object p3, p0, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    :goto_2
    return-void
.end method

.method static findZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 2

    const-string v0, "Z"

    .line 455
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GMT+00:00"

    .line 456
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "UTC"

    .line 457
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "GMT"

    if-eqz v0, :cond_1

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "UT"

    .line 459
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 462
    :cond_2
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method private static fromOffsetMillis(I)Lnet/time4j/tz/ZonalOffset;
    .locals 1

    const/16 v0, 0x3e8

    .line 490
    invoke-static {p0, v0}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p0

    .line 489
    invoke-static {p0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .line 500
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lnet/time4j/tz/PlatformTimezone;

    invoke-direct {v0}, Lnet/time4j/tz/PlatformTimezone;-><init>()V

    return-object v0

    .line 504
    :cond_0
    new-instance v0, Lnet/time4j/tz/PlatformTimezone;

    iget-object v1, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    iget-object v2, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    iget-boolean v3, p0, Lnet/time4j/tz/PlatformTimezone;->strict:Z

    invoke-direct {v0, v1, v2, v3}, Lnet/time4j/tz/PlatformTimezone;-><init>(Lnet/time4j/tz/TZID;Ljava/util/TimeZone;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 357
    instance-of v0, p1, Lnet/time4j/tz/PlatformTimezone;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 358
    check-cast p1, Lnet/time4j/tz/PlatformTimezone;

    .line 359
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 360
    iget-object p1, p1, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 361
    :cond_1
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    iget-object v3, p1, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lnet/time4j/tz/PlatformTimezone;->strict:Z

    iget-boolean v3, p1, Lnet/time4j/tz/PlatformTimezone;->strict:Z

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    if-nez v0, :cond_4

    .line 364
    iget-object p1, p1, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 366
    :cond_4
    iget-object p1, p1, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/ZonalOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method public getDaylightSavingOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 6

    .line 198
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    .line 204
    :goto_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 205
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/16 p1, 0x10

    .line 206
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/PlatformTimezone;->fromOffsetMillis(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 409
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez v0, :cond_0

    .line 410
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    .line 416
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/tz/NameStyle;->isDaylightSaving()Z

    move-result v1

    .line 417
    invoke-virtual {p1}, Lnet/time4j/tz/NameStyle;->isAbbreviation()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 415
    invoke-virtual {v0, v1, p1, p2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHistory()Lnet/time4j/tz/TransitionHistory;
    .locals 1

    .line 346
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalOffset;->getModel()Lnet/time4j/tz/SingleOffsetTimezone;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getID()Lnet/time4j/tz/TZID;
    .locals 2

    .line 150
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Lnet/time4j/tz/NamedID;

    invoke-direct {v1, v0}, Lnet/time4j/tz/NamedID;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 12

    .line 216
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    if-eqz v0, :cond_0

    return-object v0

    .line 220
    :cond_0
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v0

    .line 221
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v1

    .line 222
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result v2

    .line 227
    invoke-interface {p2}, Lnet/time4j/base/WallTime;->getHour()I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_1

    .line 228
    invoke-static {p1}, Lnet/time4j/base/GregorianMath;->toMJD(Lnet/time4j/base/GregorianDate;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 229
    invoke-static {v0, v1}, Lnet/time4j/base/GregorianMath;->toPackedDate(J)J

    move-result-wide v0

    .line 230
    invoke-static {v0, v1}, Lnet/time4j/base/GregorianMath;->readYear(J)I

    move-result p1

    .line 231
    invoke-static {v0, v1}, Lnet/time4j/base/GregorianMath;->readMonth(J)I

    move-result v2

    .line 232
    invoke-static {v0, v1}, Lnet/time4j/base/GregorianMath;->readDayOfMonth(J)I

    move-result v0

    move v9, v0

    move v1, v2

    move v0, p1

    goto :goto_0

    :cond_1
    move v9, v2

    :goto_0
    const/4 p1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    move v7, v0

    move v6, v2

    goto :goto_1

    :cond_2
    rsub-int/lit8 v3, v0, 0x1

    move v6, p1

    move v7, v3

    .line 243
    :goto_1
    invoke-static {v0, v1, v9}, Lnet/time4j/base/GregorianMath;->getDayOfWeek(III)I

    move-result v0

    add-int/2addr v0, v2

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    move v10, v2

    goto :goto_2

    :cond_3
    move v10, v0

    .line 251
    :goto_2
    invoke-interface {p2}, Lnet/time4j/base/WallTime;->getHour()I

    move-result v0

    if-ne v0, v4, :cond_4

    goto :goto_3

    .line 255
    :cond_4
    invoke-interface {p2}, Lnet/time4j/base/WallTime;->getHour()I

    move-result p1

    mul-int/lit16 p1, p1, 0xe10

    .line 256
    invoke-interface {p2}, Lnet/time4j/base/WallTime;->getMinute()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr p1, v0

    .line 257
    invoke-interface {p2}, Lnet/time4j/base/WallTime;->getSecond()I

    move-result v0

    add-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x3e8

    .line 258
    invoke-interface {p2}, Lnet/time4j/base/WallTime;->getNanosecond()I

    move-result p2

    const v0, 0xf4240

    div-int/2addr p2, v0

    add-int/2addr p1, p2

    :goto_3
    move v11, p1

    .line 263
    iget-object p1, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez p1, :cond_5

    .line 264
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    goto :goto_4

    .line 266
    :cond_5
    iget-object p1, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    :goto_4
    move-object v5, p1

    add-int/lit8 v8, v1, -0x1

    .line 270
    invoke-virtual/range {v5 .. v11}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result p1

    .line 269
    invoke-static {p1}, Lnet/time4j/tz/PlatformTimezone;->fromOffsetMillis(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1
.end method

.method public getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 5

    .line 164
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    if-eqz v0, :cond_1

    return-object v0

    .line 169
    :cond_1
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    .line 172
    :goto_0
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/PlatformTimezone;->fromOffsetMillis(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1
.end method

.method public getStandardOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 6

    .line 181
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    .line 187
    :goto_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 188
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/16 p1, 0xf

    .line 189
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/PlatformTimezone;->fromOffsetMillis(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1
.end method

.method public getStrategy()Lnet/time4j/tz/TransitionStrategy;
    .locals 1

    .line 428
    iget-boolean v0, p0, Lnet/time4j/tz/PlatformTimezone;->strict:Z

    if-eqz v0, :cond_0

    sget-object v0, Lnet/time4j/tz/PlatformTimezone;->STRICT_MODE:Lnet/time4j/tz/TransitionStrategy;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/tz/PlatformTimezone;->DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 376
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isDaylightSaving(Lnet/time4j/base/UnixTime;)Z
    .locals 6

    .line 319
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 325
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez v0, :cond_1

    .line 326
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    .line 331
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public isFixed()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isGMT()Z
    .locals 2

    .line 476
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez v0, :cond_0

    .line 477
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    .line 482
    :goto_0
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInvalid(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 280
    iget-object v1, v0, Lnet/time4j/tz/PlatformTimezone;->fixedOffset:Lnet/time4j/tz/ZonalOffset;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 284
    :cond_0
    invoke-interface/range {p1 .. p1}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v1

    .line 285
    invoke-interface/range {p1 .. p1}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v10

    .line 286
    invoke-interface/range {p1 .. p1}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result v11

    .line 287
    invoke-interface/range {p2 .. p2}, Lnet/time4j/base/WallTime;->getHour()I

    move-result v12

    .line 288
    invoke-interface/range {p2 .. p2}, Lnet/time4j/base/WallTime;->getMinute()I

    move-result v13

    .line 289
    invoke-interface/range {p2 .. p2}, Lnet/time4j/base/WallTime;->getSecond()I

    move-result v14

    .line 290
    invoke-interface/range {p2 .. p2}, Lnet/time4j/base/WallTime;->getNanosecond()I

    move-result v3

    const v4, 0xf4240

    div-int v15, v3, v4

    .line 294
    iget-object v3, v0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez v3, :cond_1

    .line 295
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    goto :goto_0

    .line 297
    :cond_1
    iget-object v3, v0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    .line 300
    :goto_0
    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/16 v8, 0xe

    .line 301
    invoke-virtual {v9, v8, v15}, Ljava/util/GregorianCalendar;->set(II)V

    add-int/lit8 v5, v10, -0x1

    move-object v3, v9

    move v4, v1

    move v6, v11

    move v7, v12

    move v2, v8

    move v8, v13

    move-object v2, v9

    move v9, v14

    .line 302
    invoke-virtual/range {v3 .. v9}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    const/4 v3, 0x1

    .line 305
    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-ne v4, v1, :cond_3

    const/4 v1, 0x2

    .line 306
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    if-ne v1, v10, :cond_3

    const/4 v1, 0x5

    .line 307
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v1, v11, :cond_3

    const/16 v1, 0xb

    .line 308
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v1, v12, :cond_3

    const/16 v1, 0xc

    .line 309
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v1, v13, :cond_3

    const/16 v1, 0xd

    .line 310
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v1, v14, :cond_3

    const/16 v1, 0xe

    .line 311
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-eq v1, v15, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 385
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-nez v0, :cond_0

    .line 386
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    .line 391
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    .line 396
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;
    .locals 3

    .line 435
    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/time4j/tz/PlatformTimezone;->getStrategy()Lnet/time4j/tz/TransitionStrategy;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    sget-object v0, Lnet/time4j/tz/PlatformTimezone;->DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

    if-ne p1, v0, :cond_1

    .line 438
    new-instance p1, Lnet/time4j/tz/PlatformTimezone;

    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    iget-object v1, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lnet/time4j/tz/PlatformTimezone;-><init>(Lnet/time4j/tz/TZID;Ljava/util/TimeZone;Z)V

    return-object p1

    .line 439
    :cond_1
    sget-object v0, Lnet/time4j/tz/PlatformTimezone;->STRICT_MODE:Lnet/time4j/tz/TransitionStrategy;

    if-ne p1, v0, :cond_2

    .line 440
    new-instance p1, Lnet/time4j/tz/PlatformTimezone;

    iget-object v0, p0, Lnet/time4j/tz/PlatformTimezone;->id:Lnet/time4j/tz/TZID;

    iget-object v1, p0, Lnet/time4j/tz/PlatformTimezone;->tz:Ljava/util/TimeZone;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lnet/time4j/tz/PlatformTimezone;-><init>(Lnet/time4j/tz/TZID;Ljava/util/TimeZone;Z)V

    return-object p1

    .line 443
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-object p0
.end method
