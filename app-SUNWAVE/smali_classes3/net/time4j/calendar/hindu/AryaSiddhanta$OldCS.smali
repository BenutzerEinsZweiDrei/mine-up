.class Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;
.super Lnet/time4j/calendar/hindu/HinduCS;
.source "AryaSiddhanta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/hindu/AryaSiddhanta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OldCS"
.end annotation


# static fields
.field private static final ARYA_LUNAR_MONTH:D = 29.530581807581694

.field private static final ARYA_SOLAR_MONTH:D = 30.43822337962963

.field private static final ARYA_SOLAR_YEAR:D = 365.25868055555554


# direct methods
.method constructor <init>(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 126
    sget-object p1, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_SOLAR:Lnet/time4j/calendar/hindu/HinduVariant;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_LUNAR:Lnet/time4j/calendar/hindu/HinduVariant;

    :goto_0
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/HinduCS;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;)V

    return-void
.end method

.method private isSolar()Z
    .locals 2

    .line 239
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    sget-object v1, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_SOLAR:Lnet/time4j/calendar/hindu/HinduVariant;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 12

    .line 176
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->isSolar()Z

    move-result v0

    const-wide v1, 0x403e702f684bda13L    # 30.43822337962963

    if-eqz v0, :cond_0

    int-to-double v3, p1

    const-wide v5, 0x4076d4238e38e38eL    # 365.25868055555554

    mul-double/2addr v3, v5

    .line 178
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->getRasi()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v5, v0

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    .line 179
    invoke-virtual {p3}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v3, v0

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    sub-double/2addr v3, v0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p1, 0xc

    add-int/lit8 v0, v0, -0x1

    int-to-double v3, v0

    mul-double/2addr v3, v1

    const-wide v0, 0x403d87d435976a7bL    # 29.530581807581694

    div-double v5, v3, v0

    .line 183
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    mul-double/2addr v5, v0

    .line 184
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v2

    .line 187
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v7

    if-nez v7, :cond_1

    sub-double v3, v5, v3

    const-wide v7, 0x3fed0b66568df300L    # 0.907641572047936

    div-double/2addr v3, v7

    .line 188
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    int-to-double v7, v2

    cmpl-double v3, v3, v7

    if-lez v3, :cond_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    :cond_2
    int-to-double v2, v2

    mul-double/2addr v2, v0

    add-double/2addr v5, v2

    .line 195
    invoke-virtual {p3}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide v2, 0x3fef7fd14a3b1c3fL    # 0.9843527269193898

    mul-double/2addr v0, v2

    add-double/2addr v5, v0

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    sub-double v3, v5, v0

    .line 198
    :goto_0
    new-instance v0, Lnet/time4j/calendar/hindu/HinduCalendar;

    iget-object v6, p0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    const-wide v7, -0x3eceb66100000000L    # -1132959.0

    add-double/2addr v3, v7

    .line 203
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    sget-object v4, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v1, v2, v3, v4}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v10

    move-object v5, v0

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v11}, Lnet/time4j/calendar/hindu/HinduCalendar;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;J)V

    return-object v0
.end method

.method create(J)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 19

    move-object/from16 v0, p0

    .line 139
    sget-object v1, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    move-wide/from16 v8, p1

    invoke-virtual {v1, v8, v9, v2}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v1

    const-wide/32 v3, -0x11499f

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    add-double/2addr v1, v3

    .line 141
    invoke-direct/range {p0 .. p0}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->isSolar()Z

    move-result v3

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    const-wide v6, 0x4076d4238e38e38eL    # 365.25868055555554

    const/4 v10, 0x1

    const-wide v11, 0x403e702f684bda13L    # 30.43822337962963

    if-eqz v3, :cond_0

    div-double v6, v1, v6

    .line 142
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    div-double v13, v1, v11

    .line 143
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    invoke-static {v13, v14, v4, v5}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->modulo(DD)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v10

    .line 144
    invoke-static {v1, v2, v11, v12}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->modulo(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v10

    .line 146
    new-instance v2, Lnet/time4j/calendar/hindu/HinduCalendar;

    iget-object v4, v0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    .line 149
    invoke-static {v3}, Lnet/time4j/calendar/hindu/HinduMonth;->ofSolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v7

    .line 150
    invoke-static {v1}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v1

    move-object v3, v2

    move v5, v6

    move-object v6, v7

    move-object v7, v1

    move-wide/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lnet/time4j/calendar/hindu/HinduCalendar;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;J)V

    return-object v2

    :cond_0
    const-wide v13, 0x403d87d435976a7bL    # 29.530581807581694

    .line 154
    invoke-static {v1, v2, v13, v14}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->modulo(DD)D

    move-result-wide v15

    sub-double v13, v1, v15

    .line 155
    invoke-static {v13, v14, v11, v12}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->modulo(DD)D

    move-result-wide v15

    const-wide v17, 0x3fed0b66568df300L    # 0.907641572047936

    cmpl-double v3, v17, v15

    if-ltz v3, :cond_1

    const-wide/16 v17, 0x0

    cmpl-double v3, v15, v17

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    add-double v15, v13, v11

    div-double/2addr v15, v6

    .line 157
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v15

    double-to-int v6, v6

    div-double/2addr v13, v11

    .line 158
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    invoke-static {v11, v12, v4, v5}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->modulo(DD)D

    move-result-wide v3

    add-double/2addr v3, v15

    double-to-int v3, v3

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    mul-double/2addr v1, v4

    const-wide v11, 0x403d87d435976a7bL    # 29.530581807581694

    div-double/2addr v1, v11

    .line 159
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    invoke-static {v1, v2, v4, v5}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->modulo(DD)D

    move-result-wide v1

    add-double/2addr v1, v15

    double-to-int v1, v1

    .line 160
    invoke-static {v3}, Lnet/time4j/calendar/hindu/HinduMonth;->ofLunisolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v2

    .line 162
    new-instance v11, Lnet/time4j/calendar/hindu/HinduCalendar;

    iget-object v4, v0, Lnet/time4j/calendar/hindu/HinduCS;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    if-eqz v10, :cond_2

    .line 165
    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduMonth;->withLeap()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v2

    .line 166
    :cond_2
    invoke-static {v1}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v7

    move-object v3, v11

    move v5, v6

    move-object v6, v2

    move-wide/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lnet/time4j/calendar/hindu/HinduCalendar;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;J)V

    return-object v11
.end method

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

    .line 133
    sget-object v0, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSinceUTC()J
    .locals 2

    .line 235
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->isSolar()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x52b0b

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x52aef

    :goto_0
    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 4

    .line 228
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->isSolar()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, -0x11499f

    goto :goto_0

    :cond_0
    const-wide/32 v0, -0x1149bc

    .line 229
    :goto_0
    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    sget-object v3, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v2, v0, v1, v3}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    return-wide v0
.end method

.method isValid(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    const/16 v1, 0x176f

    if-gt p1, v1, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->isSolar()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Lnet/time4j/calendar/hindu/HinduDay;->isLeap()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v0

    .line 218
    :cond_2
    invoke-virtual {p3}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v1

    invoke-direct {p0}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->isSolar()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1f

    goto :goto_0

    :cond_3
    const/16 v2, 0x1e

    :goto_0
    if-le v1, v2, :cond_4

    return v0

    .line 222
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;->isExpunged(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v0
.end method
