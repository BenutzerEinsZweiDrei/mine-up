.class Lnet/time4j/calendar/IndianCalendar$Transformer;
.super Ljava/lang/Object;
.source "IndianCalendar.java"

# interfaces
.implements Lnet/time4j/calendar/EraYearMonthDaySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/IndianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/calendar/EraYearMonthDaySystem<",
        "Lnet/time4j/calendar/IndianCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/IndianCalendar$1;)V
    .locals 0

    .line 890
    invoke-direct {p0}, Lnet/time4j/calendar/IndianCalendar$Transformer;-><init>()V

    return-void
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

    .line 1108
    sget-object v0, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    .line 1109
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I
    .locals 2

    .line 922
    sget-object v0, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    if-lt p2, p1, :cond_4

    const v0, 0x3b9ac9b1

    if-gt p2, v0, :cond_4

    if-lt p3, p1, :cond_4

    if-ne p2, v0, :cond_0

    const/16 v0, 0xa

    if-ne p3, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x1e

    const/16 v1, 0x1f

    if-ne p3, p1, :cond_2

    add-int/lit8 p2, p2, 0x4e

    .line 930
    invoke-static {p2}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x6

    if-gt p3, p1, :cond_3

    return v1

    :cond_3
    const/16 p1, 0xc

    if-gt p3, p1, :cond_4

    return v0

    .line 938
    :cond_4
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

    .line 923
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid era: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I
    .locals 2

    .line 948
    sget-object v0, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    const v0, 0x3b9ac9b1

    if-lt p2, p1, :cond_1

    if-ge p2, v0, :cond_1

    add-int/lit8 p2, p2, 0x4e

    .line 953
    invoke-static {p2}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16e

    goto :goto_0

    :cond_0
    const/16 p1, 0x16d

    :goto_0
    return p1

    :cond_1
    if-ne p2, v0, :cond_2

    const/16 p1, 0x11d

    return p1

    .line 958
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 949
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid era: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getMaximumSinceUTC()J
    .locals 4

    .line 1100
    new-instance v0, Lnet/time4j/calendar/IndianCalendar;

    const v1, 0x3b9ac9b1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lnet/time4j/calendar/IndianCalendar;-><init>(IIILnet/time4j/calendar/IndianCalendar$1;)V

    .line 1101
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/IndianCalendar$Transformer;->transform(Lnet/time4j/calendar/IndianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 3

    .line 1092
    new-instance v0, Lnet/time4j/calendar/IndianCalendar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Lnet/time4j/calendar/IndianCalendar;-><init>(IIILnet/time4j/calendar/IndianCalendar$1;)V

    .line 1093
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/IndianCalendar$Transformer;->transform(Lnet/time4j/calendar/IndianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid(Lnet/time4j/engine/CalendarEra;III)Z
    .locals 2

    .line 903
    sget-object v0, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    if-lt p2, v1, :cond_1

    const v0, 0x3b9ac9b1

    if-gt p2, v0, :cond_1

    if-lt p3, v1, :cond_1

    if-ne p2, v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    if-gt p3, v0, :cond_1

    if-lt p4, v1, :cond_1

    .line 910
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/IndianCalendar$Transformer;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p1

    if-gt p4, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 890
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$Transformer;->transform(Lnet/time4j/calendar/IndianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/IndianCalendar;)J
    .locals 7

    .line 1062
    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$500(Lnet/time4j/calendar/IndianCalendar;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4e

    .line 1063
    invoke-static {v0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x15

    goto :goto_0

    :cond_0
    const/16 v2, 0x16

    :goto_0
    const/4 v3, 0x3

    .line 1064
    invoke-static {v0, v3, v2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v2}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x0

    const/4 v4, 0x1

    move v5, v4

    .line 1067
    :goto_1
    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$600(Lnet/time4j/calendar/IndianCalendar;)I

    move-result v6

    if-ge v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1e

    goto :goto_3

    :pswitch_0
    add-int/lit8 v0, v0, 0x1f

    goto :goto_3

    :pswitch_1
    if-eqz v1, :cond_1

    const/16 v6, 0x1f

    goto :goto_2

    :cond_1
    const/16 v6, 0x1e

    :goto_2
    add-int/2addr v0, v6

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1084
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$700(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    sub-int/2addr p1, v4

    add-int/2addr v0, p1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 890
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/IndianCalendar$Transformer;->transform(J)Lnet/time4j/calendar/IndianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/IndianCalendar;
    .locals 16

    .line 965
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    move-wide/from16 v1, p1

    invoke-static {v1, v2, v0}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 966
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v1

    .line 967
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v2

    .line 968
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v3

    .line 969
    invoke-static {v1}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result v1

    const/16 v4, 0x15

    const/16 v5, 0x16

    if-eqz v1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 972
    :goto_0
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x4e

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x6

    const/4 v13, 0x7

    const/16 v14, 0xc

    const/16 v15, 0x8

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v9, 0x9

    if-ne v2, v14, :cond_1

    if-lt v3, v5, :cond_1

    sub-int/2addr v3, v4

    goto/16 :goto_e

    :cond_1
    if-ne v2, v14, :cond_2

    add-int/2addr v3, v9

    :goto_1
    move v7, v9

    goto/16 :goto_e

    :cond_2
    if-ne v2, v8, :cond_3

    if-lt v3, v5, :cond_3

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_3
    if-ne v2, v8, :cond_4

    add-int/2addr v3, v9

    :goto_2
    move v7, v15

    goto/16 :goto_e

    :cond_4
    const/16 v14, 0x17

    if-ne v2, v7, :cond_5

    if-lt v3, v14, :cond_5

    sub-int/2addr v3, v5

    goto :goto_2

    :cond_5
    if-ne v2, v7, :cond_6

    add-int/2addr v3, v15

    :goto_3
    move v7, v13

    goto/16 :goto_e

    :cond_6
    if-ne v2, v9, :cond_7

    if-lt v3, v14, :cond_7

    sub-int/2addr v3, v5

    goto :goto_3

    :cond_7
    if-ne v2, v9, :cond_8

    add-int/2addr v3, v9

    :goto_4
    move v7, v12

    goto/16 :goto_e

    :cond_8
    if-ne v2, v15, :cond_9

    if-lt v3, v14, :cond_9

    sub-int/2addr v3, v5

    goto :goto_4

    :cond_9
    if-ne v2, v15, :cond_a

    add-int/2addr v3, v9

    :goto_5
    move v7, v11

    goto/16 :goto_e

    :cond_a
    if-ne v2, v13, :cond_b

    if-lt v3, v14, :cond_b

    sub-int/2addr v3, v5

    goto :goto_5

    :cond_b
    if-ne v2, v13, :cond_c

    add-int/2addr v3, v9

    :goto_6
    move v7, v10

    goto/16 :goto_e

    :cond_c
    if-ne v2, v12, :cond_d

    if-lt v3, v5, :cond_d

    sub-int/2addr v3, v4

    goto :goto_6

    :cond_d
    if-ne v2, v12, :cond_e

    add-int/2addr v3, v7

    :goto_7
    const/4 v7, 0x3

    goto :goto_e

    :cond_e
    if-ne v2, v11, :cond_f

    if-lt v3, v5, :cond_f

    sub-int/2addr v3, v4

    goto :goto_7

    :cond_f
    if-ne v2, v11, :cond_10

    add-int/2addr v3, v7

    :goto_8
    const/4 v7, 0x2

    goto :goto_e

    :cond_10
    const/16 v5, 0x14

    if-ne v2, v10, :cond_11

    if-lt v3, v4, :cond_11

    sub-int/2addr v3, v5

    goto :goto_8

    :cond_11
    if-ne v2, v10, :cond_13

    if-eqz v1, :cond_12

    goto :goto_9

    :cond_12
    move v8, v7

    :goto_9
    add-int/2addr v3, v8

    goto :goto_a

    :cond_13
    const/4 v10, 0x3

    if-ne v2, v10, :cond_14

    if-lt v3, v6, :cond_14

    sub-int/2addr v3, v6

    const/4 v1, 0x1

    add-int/2addr v3, v1

    :goto_a
    const/4 v7, 0x1

    goto :goto_e

    :cond_14
    if-ne v2, v10, :cond_16

    add-int/lit8 v0, v0, -0x1

    if-eqz v1, :cond_15

    goto :goto_b

    :cond_15
    move v7, v9

    :goto_b
    add-int/2addr v3, v7

    goto :goto_c

    :cond_16
    const/4 v1, 0x2

    if-ne v2, v1, :cond_17

    if-lt v3, v5, :cond_17

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x13

    :goto_c
    const/16 v7, 0xc

    goto :goto_e

    :cond_17
    if-ne v2, v1, :cond_18

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v3, v8

    :goto_d
    move v7, v8

    goto :goto_e

    :cond_18
    const/4 v1, 0x1

    if-ne v2, v1, :cond_19

    if-lt v3, v4, :cond_19

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v3, v5

    goto :goto_d

    :cond_19
    add-int/lit8 v0, v0, -0x1

    add-int/2addr v3, v7

    .line 1055
    :goto_e
    invoke-static {v0, v7, v3}, Lnet/time4j/calendar/IndianCalendar;->of(III)Lnet/time4j/calendar/IndianCalendar;

    move-result-object v0

    return-object v0
.end method
