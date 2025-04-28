.class Lnet/time4j/StdNormalizer;
.super Ljava/lang/Object;
.source "StdNormalizer.java"

# interfaces
.implements Lnet/time4j/engine/Normalizer;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lnet/time4j/IsoUnit;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/Normalizer<",
        "TU;>;",
        "Ljava/util/Comparator<",
        "Lnet/time4j/engine/TimeSpan$Item<",
        "+",
        "Lnet/time4j/engine/ChronoUnit;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final MIO:I = 0xf4240

.field private static final MRD:I = 0x3b9aca00


# instance fields
.field private final mixed:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p1, p0, Lnet/time4j/StdNormalizer;->mixed:Z

    return-void
.end method

.method static comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "+",
            "Lnet/time4j/engine/ChronoUnit;",
            ">;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Lnet/time4j/StdNormalizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/StdNormalizer;-><init>(Z)V

    return-object v0
.end method

.method static compare(Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;)I
    .locals 4

    .line 268
    invoke-interface {p1}, Lnet/time4j/engine/ChronoUnit;->getLength()D

    move-result-wide v0

    invoke-interface {p0}, Lnet/time4j/engine/ChronoUnit;->getLength()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Mixing different units of same length not allowed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return v0
.end method

.method static ofCalendarUnits()Lnet/time4j/StdNormalizer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/StdNormalizer<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lnet/time4j/StdNormalizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/StdNormalizer;-><init>(Z)V

    return-object v0
.end method

.method static ofClockUnits()Lnet/time4j/StdNormalizer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/StdNormalizer<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lnet/time4j/StdNormalizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/StdNormalizer;-><init>(Z)V

    return-object v0
.end method

.method static ofMixedUnits()Lnet/time4j/StdNormalizer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/StdNormalizer<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lnet/time4j/StdNormalizer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/time4j/StdNormalizer;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lnet/time4j/engine/TimeSpan$Item;

    check-cast p2, Lnet/time4j/engine/TimeSpan$Item;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/StdNormalizer;->compare(Lnet/time4j/engine/TimeSpan$Item;Lnet/time4j/engine/TimeSpan$Item;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/TimeSpan$Item;Lnet/time4j/engine/TimeSpan$Item;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "+",
            "Lnet/time4j/engine/ChronoUnit;",
            ">;",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "+",
            "Lnet/time4j/engine/ChronoUnit;",
            ">;)I"
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoUnit;

    invoke-virtual {p2}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/ChronoUnit;

    invoke-static {p1, p2}, Lnet/time4j/StdNormalizer;->compare(Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;)I

    move-result p1

    return p1
.end method

.method public normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "+TU;>;)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 102
    invoke-interface/range {p1 .. p1}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 108
    invoke-interface/range {p1 .. p1}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/time4j/engine/TimeSpan$Item;

    move-wide/from16 v23, v9

    .line 109
    invoke-virtual {v15}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v9

    .line 110
    invoke-virtual {v15}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/time4j/IsoUnit;

    move/from16 v16, v0

    .line 112
    instance-of v0, v15, Lnet/time4j/CalendarUnit;

    move-wide/from16 v25, v5

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    const-class v5, Lnet/time4j/CalendarUnit;

    invoke-virtual {v5, v15}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/CalendarUnit;

    invoke-virtual {v5}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-wide/from16 v17, v9

    goto/16 :goto_2

    :pswitch_1
    move-wide/from16 v19, v9

    goto/16 :goto_2

    .line 146
    :pswitch_2
    invoke-static {v9, v10, v13, v14}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v5

    goto :goto_1

    :pswitch_3
    const-wide/16 v5, 0x3

    .line 141
    invoke-static {v9, v10, v5, v6}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v5

    .line 140
    invoke-static {v5, v6, v13, v14}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v5

    :goto_1
    move-wide v13, v5

    goto/16 :goto_2

    .line 136
    :pswitch_4
    invoke-static {v9, v10, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_5
    const-wide/16 v5, 0xa

    .line 131
    invoke-static {v9, v10, v5, v6}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v5

    .line 130
    invoke-static {v5, v6, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v2

    goto :goto_2

    :pswitch_6
    const-wide/16 v5, 0x64

    .line 124
    invoke-static {v9, v10, v5, v6}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v5

    .line 123
    invoke-static {v5, v6, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v2

    goto :goto_2

    :pswitch_7
    const-wide/16 v5, 0x3e8

    .line 117
    invoke-static {v9, v10, v5, v6}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v5

    .line 116
    invoke-static {v5, v6, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v2

    goto :goto_2

    .line 157
    :cond_0
    instance-of v0, v15, Lnet/time4j/ClockUnit;

    if-eqz v0, :cond_1

    .line 158
    sget-object v0, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$ClockUnit:[I

    const-class v5, Lnet/time4j/ClockUnit;

    invoke-virtual {v5, v15}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/ClockUnit;

    invoke-virtual {v5}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_1

    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :pswitch_8
    invoke-static {v9, v10, v11, v12}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v11

    goto :goto_2

    :pswitch_9
    const-wide/16 v5, 0x3e8

    .line 178
    invoke-static {v9, v10, v5, v6}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v5

    .line 177
    invoke-static {v5, v6, v11, v12}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v11

    goto :goto_2

    :pswitch_a
    const-wide/32 v5, 0xf4240

    .line 171
    invoke-static {v9, v10, v5, v6}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v5

    .line 170
    invoke-static {v5, v6, v11, v12}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v11

    goto :goto_2

    :pswitch_b
    move-wide v7, v9

    goto :goto_2

    :pswitch_c
    move-wide v5, v9

    move-wide/from16 v9, v23

    goto :goto_3

    .line 189
    :cond_1
    invoke-static {v9, v10, v15}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-wide/from16 v9, v23

    :pswitch_d
    move-wide/from16 v5, v25

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v16

    goto/16 :goto_0

    :cond_2
    move-wide/from16 v25, v5

    move-wide/from16 v23, v9

    or-long v4, v25, v7

    or-long v4, v4, v23

    or-long/2addr v4, v11

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_4

    const-wide/32 v4, 0x3b9aca00

    .line 196
    rem-long v21, v11, v4

    .line 197
    div-long/2addr v11, v4

    move-wide/from16 v9, v23

    invoke-static {v9, v10, v11, v12}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v4

    const-wide/16 v9, 0x3c

    .line 198
    rem-long v11, v4, v9

    .line 199
    div-long/2addr v4, v9

    invoke-static {v7, v8, v4, v5}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v4

    .line 200
    rem-long v6, v4, v9

    .line 201
    div-long/2addr v4, v9

    move-wide/from16 v8, v25

    invoke-static {v8, v9, v4, v5}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    .line 203
    iget-boolean v8, v0, Lnet/time4j/StdNormalizer;->mixed:Z

    if-eqz v8, :cond_3

    const-wide/16 v8, 0x18

    .line 204
    rem-long v23, v4, v8

    .line 205
    div-long/2addr v4, v8

    move-wide/from16 v8, v17

    invoke-static {v8, v9, v4, v5}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v4

    move-wide v8, v4

    move-wide/from16 v27, v21

    move-wide/from16 v4, v23

    goto :goto_4

    :cond_3
    move-wide/from16 v8, v17

    move-wide/from16 v27, v21

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v8, v17

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v27, 0x0

    :goto_4
    or-long v17, v2, v13

    or-long v17, v17, v8

    const-wide/16 v15, 0x0

    cmp-long v10, v17, v15

    if-eqz v10, :cond_7

    const-wide/16 v17, 0xc

    move-wide/from16 v21, v11

    .line 214
    div-long v10, v13, v17

    invoke-static {v2, v3, v10, v11}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v2

    .line 215
    rem-long v13, v13, v17

    const-wide/16 v10, 0x7

    move-wide/from16 v17, v6

    move-wide/from16 v6, v19

    .line 218
    invoke-static {v6, v7, v10, v11}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v6

    .line 217
    invoke-static {v6, v7, v8, v9}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v6

    cmp-long v8, v2, v15

    if-eqz v8, :cond_5

    .line 223
    sget-object v8, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    .line 224
    invoke-static {v2, v3, v8}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    cmp-long v2, v13, v15

    if-eqz v2, :cond_6

    .line 227
    sget-object v2, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    .line 228
    invoke-static {v13, v14, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    cmp-long v2, v6, v15

    if-eqz v2, :cond_8

    .line 231
    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 232
    invoke-static {v6, v7, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move-wide/from16 v17, v6

    move-wide/from16 v21, v11

    move-wide/from16 v6, v19

    cmp-long v2, v6, v15

    if-eqz v2, :cond_8

    .line 235
    sget-object v2, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    .line 236
    invoke-static {v6, v7, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    cmp-long v2, v4, v15

    if-eqz v2, :cond_9

    .line 240
    sget-object v2, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    .line 241
    invoke-static {v4, v5, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    cmp-long v2, v17, v15

    if-eqz v2, :cond_a

    .line 245
    sget-object v2, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    move-wide/from16 v6, v17

    .line 246
    invoke-static {v6, v7, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    cmp-long v2, v21, v15

    if-eqz v2, :cond_b

    .line 250
    sget-object v2, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    move-wide/from16 v11, v21

    .line 251
    invoke-static {v11, v12, v2}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    move-wide/from16 v2, v27

    cmp-long v4, v2, v15

    if-eqz v4, :cond_c

    .line 255
    sget-object v4, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    .line 256
    invoke-static {v2, v3, v4}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_c
    new-instance v2, Lnet/time4j/Duration;

    invoke-interface/range {p1 .. p1}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/engine/TimeSpan;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lnet/time4j/StdNormalizer;->normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1
.end method
