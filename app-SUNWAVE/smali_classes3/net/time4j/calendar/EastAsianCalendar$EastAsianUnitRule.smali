.class Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;
.super Ljava/lang/Object;
.source "EastAsianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EastAsianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EastAsianUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lnet/time4j/calendar/EastAsianCalendar<",
        "*TD;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iput p1, p0, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;->index:I

    return-void
.end method

.method private static between(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianCalendar;I)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>(TD;TD;I)J"
        }
    .end annotation

    .line 1073
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_14

    const/16 v2, 0x3c

    if-eq p2, v1, :cond_f

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1153
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDaysSinceEpochUTC()J

    move-result-wide p1

    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1

    .line 1155
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 1151
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDaysSinceEpochUTC()J

    move-result-wide p1

    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7

    div-long/2addr p1, v0

    return-wide p1

    .line 1098
    :cond_2
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar;->isAfter(Lnet/time4j/engine/CalendarDate;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object v4, p0

    move-object v3, p1

    goto :goto_0

    :cond_3
    move-object v3, p0

    move-object v4, p1

    .line 1103
    :goto_0
    invoke-virtual {v3}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result p0

    .line 1104
    invoke-virtual {v3}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result p1

    .line 1105
    invoke-virtual {v3}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v5

    .line 1106
    invoke-virtual {v5}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v6

    .line 1107
    invoke-virtual {v5}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v7

    .line 1108
    invoke-virtual {v0, p0, p1}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    .line 1110
    :goto_1
    invoke-virtual {v4}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v11

    if-ne p0, v11, :cond_7

    invoke-virtual {v4}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v11

    invoke-virtual {v11}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v11

    if-ne p1, v11, :cond_7

    invoke-virtual {v4}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v11

    invoke-virtual {v5, v11}, Lnet/time4j/calendar/EastAsianMonth;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    if-lez v10, :cond_5

    .line 1146
    invoke-virtual {v3}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result p0

    invoke-virtual {v4}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result p1

    if-le p0, p1, :cond_5

    add-int/lit8 v10, v10, -0x1

    :cond_5
    if-eqz p2, :cond_6

    neg-int v10, v10

    :cond_6
    int-to-long p0, v10

    return-wide p0

    :cond_7
    :goto_2
    if-eqz v7, :cond_8

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_3

    :cond_8
    if-ne v8, v6, :cond_9

    move v7, v1

    goto :goto_3

    :cond_9
    add-int/lit8 v6, v6, 0x1

    :goto_3
    if-nez v7, :cond_d

    const/16 v5, 0xd

    if-ne v6, v5, :cond_b

    add-int/lit8 p1, p1, 0x1

    const/16 v5, 0x3d

    if-ne p1, v5, :cond_a

    add-int/lit8 p0, p0, 0x1

    move p1, v1

    .line 1129
    :cond_a
    invoke-virtual {v0, p0, p1}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result v5

    move v6, v1

    move v8, v5

    goto :goto_4

    :cond_b
    if-nez v6, :cond_d

    const/16 v5, 0xc

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_c

    add-int/lit8 p0, p0, -0x1

    move p1, v2

    .line 1137
    :cond_c
    invoke-virtual {v0, p0, p1}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result v6

    move v8, v6

    move v6, v5

    .line 1140
    :cond_d
    :goto_4
    invoke-static {v6}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v5

    if-eqz v7, :cond_e

    .line 1142
    invoke-virtual {v5}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v5

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1080
    :cond_f
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result p2

    mul-int/2addr p2, v2

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v0

    add-int/2addr p2, v0

    .line 1081
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v0

    mul-int/2addr v0, v2

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v0

    sub-int/2addr p2, v0

    if-lez p2, :cond_11

    .line 1083
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/EastAsianMonth;->compareTo(Lnet/time4j/calendar/EastAsianMonth;)I

    move-result v0

    if-gtz v0, :cond_10

    if-nez v0, :cond_13

    .line 1084
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result p0

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result p1

    if-le p0, p1, :cond_13

    :cond_10
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    if-gez p2, :cond_13

    .line 1088
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/EastAsianMonth;->compareTo(Lnet/time4j/calendar/EastAsianMonth;)I

    move-result v0

    if-ltz v0, :cond_12

    if-nez v0, :cond_13

    .line 1089
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result p0

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result p1

    if-ge p0, p1, :cond_13

    :cond_12
    add-int/lit8 p2, p2, 0x1

    :cond_13
    :goto_5
    int-to-long p0, p2

    return-wide p0

    .line 1077
    :cond_14
    invoke-static {p0, p1, v1}, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;->between(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianCalendar;I)J

    move-result-wide p0

    const-wide/16 v0, 0x3c

    div-long/2addr p0, v0

    return-wide p0
.end method

.method private static checkAmountOfMonths(J)V
    .locals 2

    const-wide/16 v0, 0x4b0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, -0x4b0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    return-void

    .line 1180
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Month arithmetic limited to delta not greater than 1200."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static create(IILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/calendar/EastAsianCS;)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>(II",
            "Lnet/time4j/calendar/EastAsianMonth;",
            "I",
            "Lnet/time4j/calendar/EastAsianCS<",
            "TD;>;)TD;"
        }
    .end annotation

    const/16 v0, 0x1d

    if-gt p3, v0, :cond_0

    .line 1168
    invoke-virtual {p4, p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianCS;->transform(IILnet/time4j/calendar/EastAsianMonth;I)J

    move-result-wide v6

    move-object v1, p4

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .line 1169
    invoke-virtual/range {v1 .. v7}, Lnet/time4j/calendar/EastAsianCS;->create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 1171
    invoke-virtual {p4, p0, p1, p2, v0}, Lnet/time4j/calendar/EastAsianCS;->transform(IILnet/time4j/calendar/EastAsianMonth;I)J

    move-result-wide v0

    .line 1172
    invoke-virtual {p4, v0, v1}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object v2

    .line 1173
    invoke-virtual {v2}, Lnet/time4j/calendar/EastAsianCalendar;->lengthOfMonth()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v2, v7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    move-object v3, p4

    move v4, p0

    move v5, p1

    move-object v6, p2

    .line 1174
    invoke-virtual/range {v3 .. v9}, Lnet/time4j/calendar/EastAsianCS;->create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 962
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;->addTo(Lnet/time4j/calendar/EastAsianCalendar;J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/calendar/EastAsianCalendar;J)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;J)TD;"
        }
    .end annotation

    move-wide/from16 v0, p2

    .line 982
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v2

    .line 983
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result v3

    .line 984
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v4

    .line 985
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v5

    invoke-virtual {v5}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v5

    .line 986
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v6

    move-object/from16 v7, p0

    .line 988
    iget v8, v7, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;->index:I

    const/16 v9, 0x3c

    const/4 v10, 0x1

    if-eqz v8, :cond_e

    if-eq v8, v10, :cond_f

    const/4 v11, 0x2

    if-eq v8, v11, :cond_2

    const/4 v3, 0x3

    if-eq v8, v3, :cond_1

    const/4 v3, 0x4

    if-ne v8, v3, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    const-wide/16 v3, 0x7

    .line 1049
    invoke-static {v0, v1, v3, v4}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 1052
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 1053
    invoke-virtual {v2, v0, v1}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object v0

    return-object v0

    .line 1001
    :cond_2
    invoke-static/range {p2 .. p3}, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;->checkAmountOfMonths(J)V

    const-wide/16 v11, 0x0

    cmp-long v8, v0, v11

    const/4 v13, -0x1

    if-lez v8, :cond_3

    move v8, v10

    goto :goto_1

    :cond_3
    move v8, v13

    .line 1003
    :goto_1
    invoke-virtual {v6}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v14

    .line 1004
    invoke-virtual {v6}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v6

    .line 1005
    invoke-virtual {v2, v4, v5}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result v15

    :goto_2
    cmp-long v16, v0, v11

    if-eqz v16, :cond_c

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    if-ne v8, v10, :cond_7

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_4
    if-ne v8, v10, :cond_5

    if-ne v15, v14, :cond_5

    :goto_3
    move v6, v10

    goto :goto_4

    :cond_5
    if-ne v8, v13, :cond_6

    add-int/lit8 v11, v14, -0x1

    if-ne v15, v11, :cond_6

    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    :cond_6
    add-int/2addr v14, v8

    :cond_7
    :goto_4
    if-nez v6, :cond_b

    const/16 v11, 0xd

    if-ne v14, v11, :cond_9

    add-int/lit8 v5, v5, 0x1

    const/16 v11, 0x3d

    if-ne v5, v11, :cond_8

    add-int/lit8 v4, v4, 0x1

    move v5, v10

    .line 1030
    :cond_8
    invoke-virtual {v2, v4, v5}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result v11

    move v14, v10

    move v15, v11

    goto :goto_5

    :cond_9
    if-nez v14, :cond_b

    const/16 v11, 0xc

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_a

    add-int/lit8 v4, v4, -0x1

    move v5, v9

    .line 1038
    :cond_a
    invoke-virtual {v2, v4, v5}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result v12

    move v14, v11

    move v15, v12

    :cond_b
    :goto_5
    int-to-long v11, v8

    sub-long/2addr v0, v11

    const-wide/16 v11, 0x0

    goto :goto_2

    .line 1043
    :cond_c
    invoke-static {v14}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    if-eqz v6, :cond_d

    .line 1045
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    .line 1047
    :cond_d
    invoke-static {v4, v5, v0, v3, v2}, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;->create(IILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/calendar/EastAsianCS;)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object v0

    return-object v0

    :cond_e
    const-wide/16 v11, 0x3c

    .line 990
    invoke-static {v0, v1, v11, v12}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    :cond_f
    mul-int/2addr v4, v9

    add-int/2addr v4, v5

    sub-int/2addr v4, v10

    int-to-long v4, v4

    .line 993
    invoke-static {v4, v5, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 994
    invoke-static {v0, v1, v9}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v4

    .line 995
    invoke-static {v0, v1, v9}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/2addr v0, v10

    .line 996
    invoke-virtual {v6}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v2, v4, v0}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result v1

    invoke-virtual {v6}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v5

    if-eq v1, v5, :cond_10

    .line 997
    invoke-virtual {v6}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v1

    invoke-static {v1}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v6

    .line 999
    :cond_10
    invoke-static {v4, v0, v6, v3, v2}, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;->create(IILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/calendar/EastAsianCS;)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 962
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    check-cast p2, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;->between(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianCalendar;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianCalendar;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TD;)J"
        }
    .end annotation

    .line 1063
    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;->index:I

    invoke-static {p1, p2, v0}, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;->between(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianCalendar;I)J

    move-result-wide p1

    return-wide p1
.end method
