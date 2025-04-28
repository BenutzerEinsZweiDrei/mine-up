.class public final Lnet/time4j/calendar/PersianCalendar$Date;
.super Ljava/lang/Object;
.source "PersianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/PersianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Date"
.end annotation


# instance fields
.field private final algorithm:Lnet/time4j/calendar/PersianAlgorithm;

.field private final delegate:Lnet/time4j/calendar/PersianCalendar;

.field private final offset:Lnet/time4j/tz/ZonalOffset;


# direct methods
.method private constructor <init>(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianAlgorithm;Lnet/time4j/tz/ZonalOffset;)V
    .locals 0

    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    iput-object p1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    .line 1159
    iput-object p2, p0, Lnet/time4j/calendar/PersianCalendar$Date;->algorithm:Lnet/time4j/calendar/PersianAlgorithm;

    .line 1160
    iput-object p3, p0, Lnet/time4j/calendar/PersianCalendar$Date;->offset:Lnet/time4j/tz/ZonalOffset;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianAlgorithm;Lnet/time4j/tz/ZonalOffset;Lnet/time4j/calendar/PersianCalendar$1;)V
    .locals 0

    .line 1140
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/PersianCalendar$Date;-><init>(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianAlgorithm;Lnet/time4j/tz/ZonalOffset;)V

    return-void
.end method


# virtual methods
.method public contains(Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 1168
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$600()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1311
    :cond_0
    instance-of v0, p1, Lnet/time4j/calendar/PersianCalendar$Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1312
    check-cast p1, Lnet/time4j/calendar/PersianCalendar$Date;

    .line 1313
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->algorithm:Lnet/time4j/calendar/PersianAlgorithm;

    iget-object v2, p1, Lnet/time4j/calendar/PersianCalendar$Date;->algorithm:Lnet/time4j/calendar/PersianAlgorithm;

    if-eq v0, v2, :cond_1

    return v1

    .line 1315
    :cond_1
    sget-object v2, Lnet/time4j/calendar/PersianAlgorithm;->ASTRONOMICAL:Lnet/time4j/calendar/PersianAlgorithm;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->offset:Lnet/time4j/tz/ZonalOffset;

    iget-object v2, p1, Lnet/time4j/calendar/PersianCalendar$Date;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0, v2}, Lnet/time4j/tz/ZonalOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1318
    :cond_2
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    iget-object p1, p1, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/PersianCalendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1173
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 1174
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->algorithm:Lnet/time4j/calendar/PersianAlgorithm;

    iget-object v3, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    iget-object v4, p0, Lnet/time4j/calendar/PersianCalendar$Date;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0, v3, v4}, Lnet/time4j/calendar/PersianAlgorithm;->transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J

    move-result-wide v3

    .line 1175
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    const-wide/16 v5, 0x5

    add-long/2addr v3, v5

    invoke-static {v3, v4, v1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1176
    :cond_0
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    .line 1178
    :goto_0
    iget-object v1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {v1}, Lnet/time4j/calendar/PersianCalendar;->access$700(Lnet/time4j/calendar/PersianCalendar;)I

    move-result v1

    if-ge v2, v1, :cond_2

    const/4 v1, 0x6

    if-gt v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1f

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1e

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1185
    :cond_2
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {v1}, Lnet/time4j/calendar/PersianCalendar;->access$800(Lnet/time4j/calendar/PersianCalendar;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1186
    :cond_3
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    if-ne p1, v0, :cond_4

    .line 1187
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {v0}, Lnet/time4j/calendar/PersianCalendar;->access$800(Lnet/time4j/calendar/PersianCalendar;)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1188
    :cond_4
    sget-object v0, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    if-ne p1, v0, :cond_5

    .line 1189
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {v0}, Lnet/time4j/calendar/PersianCalendar;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x26d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1190
    :cond_5
    instance-of v0, p1, Lnet/time4j/engine/EpochDays;

    if-eqz v0, :cond_6

    .line 1191
    const-class v0, Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/EpochDays;

    .line 1192
    iget-object v1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->algorithm:Lnet/time4j/calendar/PersianAlgorithm;

    iget-object v2, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    iget-object v3, p0, Lnet/time4j/calendar/PersianCalendar$Date;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v1, v2, v3}, Lnet/time4j/calendar/PersianAlgorithm;->transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J

    move-result-wide v1

    .line 1193
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    sget-object v3, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v1, v2, v3}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1194
    :cond_6
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$600()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1195
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/PersianCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1197
    :cond_7
    new-instance p1, Lnet/time4j/engine/ChronoException;

    const-string v0, "Persian dates only support registered elements."

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInt(Lnet/time4j/engine/ChronoElement;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1203
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    if-ne p1, v0, :cond_0

    .line 1204
    iget-object p1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/PersianCalendar;->access$800(Lnet/time4j/calendar/PersianCalendar;)I

    move-result p1

    return p1

    .line 1205
    :cond_0
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    if-ne p1, v0, :cond_1

    .line 1206
    iget-object p1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/PersianCalendar;->access$900(Lnet/time4j/calendar/PersianCalendar;)I

    move-result p1

    return p1

    .line 1207
    :cond_1
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 1209
    :goto_0
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {v0}, Lnet/time4j/calendar/PersianCalendar;->access$700(Lnet/time4j/calendar/PersianCalendar;)I

    move-result v0

    if-ge v1, v0, :cond_3

    const/4 v0, 0x6

    if-gt v1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1f

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1e

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1216
    :cond_3
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {v0}, Lnet/time4j/calendar/PersianCalendar;->access$800(Lnet/time4j/calendar/PersianCalendar;)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    .line 1217
    :cond_4
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    if-ne p1, v0, :cond_5

    .line 1218
    iget-object p1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/PersianCalendar;->access$800(Lnet/time4j/calendar/PersianCalendar;)I

    move-result p1

    sub-int/2addr p1, v1

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p1

    add-int/2addr p1, v1

    return p1

    .line 1219
    :cond_5
    sget-object v0, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    if-ne p1, v0, :cond_6

    .line 1220
    iget-object p1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p1}, Lnet/time4j/calendar/PersianCalendar;->getYear()I

    move-result p1

    add-int/lit16 p1, p1, 0x26d

    return p1

    .line 1221
    :cond_6
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$600()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1222
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/PersianCalendar;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    return p1

    :cond_7
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1239
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    if-ne p1, v0, :cond_3

    .line 1240
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {v0}, Lnet/time4j/calendar/PersianCalendar;->access$700(Lnet/time4j/calendar/PersianCalendar;)I

    move-result v0

    const/4 v1, 0x6

    const/16 v2, 0x1e

    if-gt v0, v1, :cond_0

    const/16 v2, 0x1f

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 1247
    :cond_1
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->algorithm:Lnet/time4j/calendar/PersianAlgorithm;

    iget-object v1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {v1}, Lnet/time4j/calendar/PersianCalendar;->access$900(Lnet/time4j/calendar/PersianCalendar;)I

    move-result v1

    iget-object v3, p0, Lnet/time4j/calendar/PersianCalendar$Date;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0, v1, v3}, Lnet/time4j/calendar/PersianAlgorithm;->isLeapYear(ILnet/time4j/tz/ZonalOffset;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x1d

    move v2, v0

    .line 1249
    :goto_0
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1250
    :cond_3
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    if-ne p1, v0, :cond_5

    .line 1251
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->algorithm:Lnet/time4j/calendar/PersianAlgorithm;

    iget-object v1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {v1}, Lnet/time4j/calendar/PersianCalendar;->access$900(Lnet/time4j/calendar/PersianCalendar;)I

    move-result v1

    iget-object v2, p0, Lnet/time4j/calendar/PersianCalendar$Date;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/PersianAlgorithm;->isLeapYear(ILnet/time4j/tz/ZonalOffset;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x16e

    goto :goto_1

    :cond_4
    const/16 v0, 0x16d

    .line 1252
    :goto_1
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1253
    :cond_5
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    if-ne p1, v0, :cond_7

    .line 1254
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-static {v0}, Lnet/time4j/calendar/PersianCalendar;->access$800(Lnet/time4j/calendar/PersianCalendar;)I

    move-result v0

    .line 1255
    sget-object v1, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p0, v1}, Lnet/time4j/calendar/PersianCalendar$Date;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    add-int/lit8 v2, v0, 0x7

    if-gt v2, v1, :cond_6

    move v0, v2

    goto :goto_2

    .line 1259
    :cond_6
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1260
    :cond_7
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$600()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1261
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/PersianCalendar;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1263
    :cond_8
    new-instance p1, Lnet/time4j/engine/ChronoException;

    const-string v0, "Persian dates only support registered elements."

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1230
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$600()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/PersianCalendar;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1233
    :cond_0
    new-instance p1, Lnet/time4j/engine/ChronoException;

    const-string v0, "Persian dates only support registered elements."

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getTimezone()Lnet/time4j/tz/TZID;
    .locals 1

    .line 1140
    invoke-virtual {p0}, Lnet/time4j/calendar/PersianCalendar$Date;->getTimezone()Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    return-object v0
.end method

.method public getTimezone()Lnet/time4j/tz/ZonalOffset;
    .locals 2

    .line 1300
    invoke-virtual {p0}, Lnet/time4j/calendar/PersianCalendar$Date;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->offset:Lnet/time4j/tz/ZonalOffset;

    return-object v0

    .line 1303
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    const-string v1, "Timezone offset not defined."

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasTimezone()Z
    .locals 2

    .line 1281
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->algorithm:Lnet/time4j/calendar/PersianAlgorithm;

    sget-object v1, Lnet/time4j/calendar/PersianAlgorithm;->ASTRONOMICAL:Lnet/time4j/calendar/PersianAlgorithm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1327
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {v0}, Lnet/time4j/calendar/PersianCalendar;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->algorithm:Lnet/time4j/calendar/PersianAlgorithm;

    invoke-virtual {v1}, Lnet/time4j/calendar/PersianAlgorithm;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1333
    iget-object v1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->delegate:Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 1334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1335
    iget-object v1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->algorithm:Lnet/time4j/calendar/PersianAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1336
    iget-object v1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->algorithm:Lnet/time4j/calendar/PersianAlgorithm;

    sget-object v2, Lnet/time4j/calendar/PersianAlgorithm;->ASTRONOMICAL:Lnet/time4j/calendar/PersianAlgorithm;

    if-ne v1, v2, :cond_0

    .line 1337
    iget-object v1, p0, Lnet/time4j/calendar/PersianCalendar$Date;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v1}, Lnet/time4j/tz/ZonalOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x5d

    .line 1339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
