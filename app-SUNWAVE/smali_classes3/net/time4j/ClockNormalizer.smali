.class final Lnet/time4j/ClockNormalizer;
.super Ljava/lang/Object;
.source "ClockNormalizer.java"

# interfaces
.implements Lnet/time4j/engine/Normalizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/Normalizer<",
        "Lnet/time4j/ClockUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAP_ONLY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/ClockUnit;",
            "Lnet/time4j/ClockNormalizer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAP_ROUND:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/ClockUnit;",
            "Lnet/time4j/ClockNormalizer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAP_TRUNC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/ClockUnit;",
            "Lnet/time4j/ClockNormalizer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ONLY_MODE:I = 0x0

.field private static final ROUNDING_MODE:I = 0x2

.field private static final TRUNCATE_MODE:I = 0x1


# instance fields
.field private final mode:I

.field private final unit:Lnet/time4j/ClockUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-static {v0}, Lnet/time4j/ClockNormalizer;->fill(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/ClockNormalizer;->MAP_ONLY:Ljava/util/Map;

    const/4 v0, 0x1

    .line 53
    invoke-static {v0}, Lnet/time4j/ClockNormalizer;->fill(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/ClockNormalizer;->MAP_TRUNC:Ljava/util/Map;

    const/4 v0, 0x2

    .line 54
    invoke-static {v0}, Lnet/time4j/ClockNormalizer;->fill(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/ClockNormalizer;->MAP_ROUND:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/ClockUnit;I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lnet/time4j/ClockNormalizer;->unit:Lnet/time4j/ClockUnit;

    .line 71
    iput p2, p0, Lnet/time4j/ClockNormalizer;->mode:I

    return-void
.end method

.method private static fill(I)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Lnet/time4j/ClockUnit;",
            "Lnet/time4j/ClockNormalizer;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lnet/time4j/ClockUnit;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 192
    invoke-static {}, Lnet/time4j/ClockUnit;->values()[Lnet/time4j/ClockUnit;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 193
    new-instance v5, Lnet/time4j/ClockNormalizer;

    invoke-direct {v5, v4, p0}, Lnet/time4j/ClockNormalizer;-><init>(Lnet/time4j/ClockUnit;I)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static ofOnlyMode(Lnet/time4j/ClockUnit;)Lnet/time4j/ClockNormalizer;
    .locals 1

    .line 85
    sget-object v0, Lnet/time4j/ClockNormalizer;->MAP_ONLY:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/ClockNormalizer;

    if-eqz v0, :cond_0

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static ofRoundingMode(Lnet/time4j/ClockUnit;)Lnet/time4j/ClockNormalizer;
    .locals 1

    .line 121
    sget-object v0, Lnet/time4j/ClockNormalizer;->MAP_ROUND:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/ClockNormalizer;

    if-eqz v0, :cond_0

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static ofTruncateMode(Lnet/time4j/ClockUnit;)Lnet/time4j/ClockNormalizer;
    .locals 1

    .line 103
    sget-object v0, Lnet/time4j/ClockNormalizer;->MAP_TRUNC:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/ClockNormalizer;

    if-eqz v0, :cond_0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "+",
            "Lnet/time4j/ClockUnit;",
            ">;)",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation

    .line 134
    iget v0, p0, Lnet/time4j/ClockNormalizer;->mode:I

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 151
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result v0

    .line 152
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object v3

    .line 153
    invoke-virtual {v3, p1}, Lnet/time4j/Duration;->plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1}, Lnet/time4j/Duration;->abs()Lnet/time4j/Duration;

    move-result-object p1

    .line 157
    :cond_0
    sget-object v3, Lnet/time4j/Duration;->STD_CLOCK_PERIOD:Lnet/time4j/engine/Normalizer;

    invoke-virtual {p1, v3}, Lnet/time4j/Duration;->with(Lnet/time4j/engine/Normalizer;)Lnet/time4j/Duration;

    move-result-object p1

    .line 159
    sget-object v3, Lnet/time4j/ClockNormalizer$1;->$SwitchMap$net$time4j$ClockUnit:[I

    iget-object v4, p0, Lnet/time4j/ClockNormalizer;->unit:Lnet/time4j/ClockUnit;

    invoke-virtual {v4}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_2

    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x4

    if-eq v3, v2, :cond_1

    const/4 v2, 0x5

    if-eq v3, v2, :cond_1

    return-object p1

    :cond_1
    const-wide/16 v2, 0x1f4

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x1e

    .line 172
    :goto_0
    invoke-static {}, Lnet/time4j/ClockUnit;->values()[Lnet/time4j/ClockUnit;

    move-result-object v4

    iget-object v5, p0, Lnet/time4j/ClockNormalizer;->unit:Lnet/time4j/ClockUnit;

    invoke-virtual {v5}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v5

    add-int/2addr v5, v1

    aget-object v1, v4, v5

    .line 173
    invoke-virtual {p1, v1}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/engine/ChronoUnit;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-ltz v1, :cond_3

    const-wide/16 v1, 0x1

    .line 174
    iget-object v3, p0, Lnet/time4j/ClockNormalizer;->unit:Lnet/time4j/ClockUnit;

    invoke-virtual {p1, v1, v2, v3}, Lnet/time4j/Duration;->plus(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration;

    move-result-object p1

    sget-object v1, Lnet/time4j/Duration;->STD_CLOCK_PERIOD:Lnet/time4j/engine/Normalizer;

    invoke-virtual {p1, v1}, Lnet/time4j/Duration;->with(Lnet/time4j/engine/Normalizer;)Lnet/time4j/Duration;

    move-result-object p1

    .line 176
    :cond_3
    iget-object v1, p0, Lnet/time4j/ClockNormalizer;->unit:Lnet/time4j/ClockUnit;

    invoke-virtual {v1}, Lnet/time4j/ClockUnit;->truncated()Lnet/time4j/engine/Normalizer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/time4j/Duration;->with(Lnet/time4j/engine/Normalizer;)Lnet/time4j/Duration;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 178
    invoke-virtual {p1}, Lnet/time4j/Duration;->inverse()Lnet/time4j/Duration;

    move-result-object p1

    :cond_4
    return-object p1

    .line 182
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/ClockNormalizer;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/TimeSpan$Item;

    .line 140
    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/ClockUnit;

    .line 141
    iget-object v4, p0, Lnet/time4j/ClockNormalizer;->unit:Lnet/time4j/ClockUnit;

    invoke-virtual {v3, v4}, Lnet/time4j/ClockUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gtz v4, :cond_7

    .line 142
    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v4

    invoke-static {v4, v5, v3}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 146
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object p1

    return-object p1

    .line 148
    :cond_9
    new-instance v1, Lnet/time4j/Duration;

    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result p1

    invoke-direct {v1, v0, p1}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object v1

    .line 136
    :cond_a
    iget-object v0, p0, Lnet/time4j/ClockNormalizer;->unit:Lnet/time4j/ClockUnit;

    invoke-virtual {v0, p1}, Lnet/time4j/ClockUnit;->convert(Lnet/time4j/engine/TimeSpan;)J

    move-result-wide v0

    iget-object p1, p0, Lnet/time4j/ClockNormalizer;->unit:Lnet/time4j/ClockUnit;

    invoke-static {v0, v1, p1}, Lnet/time4j/Duration;->of(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/engine/TimeSpan;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lnet/time4j/ClockNormalizer;->normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1
.end method
