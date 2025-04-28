.class public final Lnet/time4j/tz/ZonalOffset;
.super Ljava/lang/Object;
.source "ZonalOffset.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lnet/time4j/tz/TZID;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/tz/ZonalOffset;",
        ">;",
        "Lnet/time4j/tz/TZID;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DECIMAL_240:Ljava/math/BigDecimal;

.field private static final DECIMAL_3600:Ljava/math/BigDecimal;

.field private static final DECIMAL_60:Ljava/math/BigDecimal;

.field private static final DECIMAL_NEG_180:Ljava/math/BigDecimal;

.field private static final DECIMAL_POS_180:Ljava/math/BigDecimal;

.field private static final MRD:Ljava/math/BigDecimal;

.field private static final OFFSET_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/tz/ZonalOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTC:Lnet/time4j/tz/ZonalOffset;

.field private static final serialVersionUID:J = -0x139325c112cdfef2L


# instance fields
.field private final transient fraction:I

.field private final transient name:Ljava/lang/String;

.field private final transient total:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/tz/ZonalOffset;->OFFSET_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 61
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x3c

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v1, Lnet/time4j/tz/ZonalOffset;->DECIMAL_60:Ljava/math/BigDecimal;

    .line 62
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0xe10

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v1, Lnet/time4j/tz/ZonalOffset;->DECIMAL_3600:Ljava/math/BigDecimal;

    .line 63
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, -0xb4

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v1, Lnet/time4j/tz/ZonalOffset;->DECIMAL_NEG_180:Ljava/math/BigDecimal;

    .line 64
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0xb4

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v1, Lnet/time4j/tz/ZonalOffset;->DECIMAL_POS_180:Ljava/math/BigDecimal;

    .line 65
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0xf0

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v1, Lnet/time4j/tz/ZonalOffset;->DECIMAL_240:Ljava/math/BigDecimal;

    .line 66
    new-instance v1, Ljava/math/BigDecimal;

    const v2, 0x3b9aca00

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v1, Lnet/time4j/tz/ZonalOffset;->MRD:Ljava/math/BigDecimal;

    .line 79
    new-instance v1, Lnet/time4j/tz/ZonalOffset;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lnet/time4j/tz/ZonalOffset;-><init>(II)V

    sput-object v1, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 7

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_1

    const v0, -0xfd20

    if-lt p1, v0, :cond_0

    const v0, 0xfd20

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total seconds out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 107
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0x3b9ac9ff

    if-gt v0, v1, :cond_f

    const v0, -0x9ab0

    if-lt p1, v0, :cond_e

    const v0, 0x9ab0

    if-gt p1, v0, :cond_e

    if-gez p1, :cond_2

    if-gtz p2, :cond_3

    :cond_2
    if-lez p1, :cond_4

    if-ltz p2, :cond_3

    goto :goto_0

    .line 121
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different signs: offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fraction="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    if-ltz p1, :cond_6

    if-gez p2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    .line 126
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_7

    const/16 v1, 0x2d

    goto :goto_3

    :cond_7
    const/16 v1, 0x2b

    .line 127
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 130
    div-int/lit16 v3, v1, 0xe10

    .line 131
    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    .line 132
    rem-int/lit8 v1, v1, 0x3c

    const/16 v5, 0xa

    const/16 v6, 0x30

    if-ge v3, v5, :cond_8

    .line 135
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v4, v5, :cond_9

    .line 142
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :cond_9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v1, :cond_a

    if-eqz p2, :cond_d

    .line 151
    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v1, v5, :cond_b

    .line 153
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_d

    const/16 v1, 0x2e

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x9

    :goto_4
    if-ge v0, v3, :cond_c

    .line 161
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 163
    :cond_c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/tz/ZonalOffset;->name:Ljava/lang/String;

    .line 168
    iput p1, p0, Lnet/time4j/tz/ZonalOffset;->total:I

    .line 169
    iput p2, p0, Lnet/time4j/tz/ZonalOffset;->fraction:I

    return-void

    .line 114
    :cond_e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total seconds out of range while fraction is non-zero: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 108
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fraction out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static atLongitude(Ljava/math/BigDecimal;)Lnet/time4j/tz/ZonalOffset;
    .locals 3

    .line 202
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->DECIMAL_POS_180:Ljava/math/BigDecimal;

    .line 203
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_3

    sget-object v0, Lnet/time4j/tz/ZonalOffset;->DECIMAL_NEG_180:Ljava/math/BigDecimal;

    .line 204
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 209
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->DECIMAL_240:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 v0, 0x0

    .line 210
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 211
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const/16 v1, 0x9

    .line 212
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v1, Lnet/time4j/tz/ZonalOffset;->MRD:Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 214
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result v0

    .line 215
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p0

    if-nez p0, :cond_0

    .line 218
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0

    :cond_0
    const v1, 0x3b9aca00

    if-ne p0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 220
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0

    :cond_1
    const v1, -0x3b9aca00

    if-ne p0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 222
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0

    .line 224
    :cond_2
    new-instance v1, Lnet/time4j/tz/ZonalOffset;

    invoke-direct {v1, v0, p0}, Lnet/time4j/tz/ZonalOffset;-><init>(II)V

    return-object v1

    .line 206
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static atLongitude(Lnet/time4j/tz/OffsetSign;IID)Lnet/time4j/tz/ZonalOffset;
    .locals 5

    const-string v0, "Missing sign."

    .line 274
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p1, :cond_5

    const/16 v0, 0xb4

    if-gt p1, v0, :cond_5

    if-ltz p2, :cond_4

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_4

    const-wide/16 v0, 0x0

    .line 281
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-ltz v2, :cond_3

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gez v2, :cond_3

    int-to-long v2, p1

    .line 286
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    const/16 v2, 0xf

    if-eqz p2, :cond_0

    int-to-long v3, p2

    .line 290
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 291
    invoke-virtual {p2, v2, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    sget-object v3, Lnet/time4j/tz/ZonalOffset;->DECIMAL_60:Ljava/math/BigDecimal;

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 292
    invoke-virtual {p2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 293
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_0
    cmpl-double p2, p3, v0

    if-eqz p2, :cond_1

    .line 298
    invoke-static {p3, p4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    sget-object p3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 299
    invoke-virtual {p2, v2, p3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    sget-object p3, Lnet/time4j/tz/ZonalOffset;->DECIMAL_3600:Ljava/math/BigDecimal;

    sget-object p4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 300
    invoke-virtual {p2, p3, p4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 301
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 304
    :cond_1
    sget-object p2, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    if-ne p0, p2, :cond_2

    .line 305
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p1

    .line 308
    :cond_2
    invoke-static {p1}, Lnet/time4j/tz/ZonalOffset;->atLongitude(Ljava/math/BigDecimal;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0

    .line 282
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arc second out of range (0.0 <= arcSeconds < 60.0)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 279
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arc minute out of range (0 <= arcMinutes <= 59)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 276
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Degrees of longitude out of range (0 <= degrees <= 180)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static format(II)Ljava/lang/String;
    .locals 2

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hours="

    .line 1044
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",minutes="

    .line 1046
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 1048
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;
    .locals 1

    const/4 v0, 0x0

    .line 341
    invoke-static {p0, p1, v0}, Lnet/time4j/tz/ZonalOffset;->ofHoursMinutes(Lnet/time4j/tz/OffsetSign;II)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0
.end method

.method public static ofHoursMinutes(Lnet/time4j/tz/OffsetSign;II)Lnet/time4j/tz/ZonalOffset;
    .locals 2

    const-string v0, "Missing sign."

    .line 392
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p1, :cond_4

    const/16 v0, 0x12

    if-gt p1, v0, :cond_4

    if-ltz p2, :cond_3

    const/16 v1, 0x3b

    if-gt p2, v1, :cond_3

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time zone offset out of range (-18:00:00 <= offset <= 18:00:00) in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-static {p1, p2}, Lnet/time4j/tz/ZonalOffset;->format(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    mul-int/lit16 p1, p1, 0xe10

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p1, p2

    .line 413
    sget-object p2, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    if-ne p0, p2, :cond_2

    neg-int p1, p1

    .line 417
    :cond_2
    invoke-static {p1}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0

    .line 398
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Minute part out of range (0 <= minutes <= 59) in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {p1, p2}, Lnet/time4j/tz/ZonalOffset;->format(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 394
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hour part out of range (0 <= hours <= 18) in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-static {p1, p2}, Lnet/time4j/tz/ZonalOffset;->format(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;
    .locals 1

    const/4 v0, 0x0

    .line 443
    invoke-static {p0, v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(II)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0
.end method

.method public static ofTotalSeconds(II)Lnet/time4j/tz/ZonalOffset;
    .locals 3

    if-eqz p1, :cond_0

    .line 487
    new-instance v0, Lnet/time4j/tz/ZonalOffset;

    invoke-direct {v0, p0, p1}, Lnet/time4j/tz/ZonalOffset;-><init>(II)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    .line 489
    sget-object p0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    return-object p0

    .line 490
    :cond_1
    rem-int/lit16 p1, p0, 0x384

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 491
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 492
    sget-object v1, Lnet/time4j/tz/ZonalOffset;->OFFSET_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/tz/ZonalOffset;

    if-nez v2, :cond_2

    .line 494
    new-instance v2, Lnet/time4j/tz/ZonalOffset;

    invoke-direct {v2, p0, v0}, Lnet/time4j/tz/ZonalOffset;-><init>(II)V

    .line 495
    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lnet/time4j/tz/ZonalOffset;

    :cond_2
    return-object v2

    .line 500
    :cond_3
    new-instance p1, Lnet/time4j/tz/ZonalOffset;

    invoke-direct {p1, p0, v0}, Lnet/time4j/tz/ZonalOffset;-><init>(II)V

    return-object p1
.end method

.method private static parse(Ljava/lang/String;II)I
    .locals 5

    .line 1021
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v3, p1, v1

    .line 1022
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    if-ne v2, v0, :cond_0

    add-int/lit8 v3, v3, -0x30

    move v2, v3

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static parse(Ljava/lang/String;)Lnet/time4j/tz/ZonalOffset;
    .locals 1

    const/4 v0, 0x1

    .line 847
    invoke-static {p0, v0}, Lnet/time4j/tz/ZonalOffset;->parse(Ljava/lang/String;Z)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0
.end method

.method static parse(Ljava/lang/String;Z)Lnet/time4j/tz/ZonalOffset;
    .locals 11

    const-string v0, "Z"

    .line 909
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    sget-object p0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    return-object p0

    .line 913
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    const-string v3, "UTC"

    .line 917
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    :cond_1
    const-string v3, "GMT"

    .line 920
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_2

    return-object v1

    .line 922
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use UTC-prefix for canonical offset instead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v3, p0

    :goto_0
    const/4 v4, 0x2

    if-lt v0, v4, :cond_c

    const/4 v5, 0x0

    .line 934
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_4

    .line 935
    sget-object v5, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    goto :goto_1

    .line 936
    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_5

    .line 937
    sget-object v5, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    goto :goto_1

    :cond_5
    move-object v5, v1

    :goto_1
    const/4 v6, 0x1

    .line 940
    invoke-static {v3, v6, v4}, Lnet/time4j/tz/ZonalOffset;->parse(Ljava/lang/String;II)I

    move-result v6

    if-ltz v6, :cond_c

    if-gt v0, v2, :cond_6

    .line 944
    invoke-static {v5, v6}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 v7, 0x4

    .line 949
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_7

    goto :goto_2

    :cond_7
    move v2, v7

    .line 953
    :goto_2
    invoke-static {v3, v2, v4}, Lnet/time4j/tz/ZonalOffset;->parse(Ljava/lang/String;II)I

    move-result v7

    add-int/lit8 v8, v2, -0x1

    .line 956
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_c

    if-ltz v7, :cond_c

    add-int/lit8 v8, v2, 0x2

    if-ne v0, v8, :cond_8

    .line 960
    invoke-static {v5, v6, v7}, Lnet/time4j/tz/ZonalOffset;->ofHoursMinutes(Lnet/time4j/tz/OffsetSign;II)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0

    :cond_8
    add-int/lit8 v10, v2, 0x5

    if-lt v0, v10, :cond_c

    .line 963
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_c

    add-int/lit8 v8, v2, 0x3

    .line 965
    invoke-static {v3, v8, v4}, Lnet/time4j/tz/ZonalOffset;->parse(Ljava/lang/String;II)I

    move-result v4

    if-ltz v4, :cond_c

    mul-int/lit16 v6, v6, 0xe10

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    .line 968
    sget-object v4, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    if-ne v5, v4, :cond_9

    neg-int v6, v6

    :cond_9
    if-ne v0, v10, :cond_a

    .line 972
    invoke-static {v6}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0

    :cond_a
    add-int/lit8 v4, v2, 0xf

    if-ne v0, v4, :cond_c

    .line 975
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_c

    add-int/lit8 v2, v2, 0x6

    const/16 v0, 0x9

    .line 977
    invoke-static {v3, v2, v0}, Lnet/time4j/tz/ZonalOffset;->parse(Ljava/lang/String;II)I

    move-result v0

    if-ltz v0, :cond_c

    .line 979
    sget-object p0, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    if-ne v5, p0, :cond_b

    neg-int v0, v0

    .line 982
    :cond_b
    invoke-static {v6, v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(II)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    return-object p0

    :cond_c
    if-nez p1, :cond_d

    return-object v1

    .line 994
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No canonical zonal offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1096
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1084
    new-instance v0, Lnet/time4j/tz/SPX;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lnet/time4j/tz/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public canonical()Ljava/lang/String;
    .locals 2

    .line 752
    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->total:I

    if-nez v0, :cond_0

    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->fraction:I

    if-nez v0, :cond_0

    const-string v0, "Z"

    return-object v0

    .line 759
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/tz/ZonalOffset;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0, p1}, Lnet/time4j/tz/ZonalOffset;->compareTo(Lnet/time4j/tz/ZonalOffset;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/tz/ZonalOffset;)I
    .locals 4

    .line 642
    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->total:I

    iget v1, p1, Lnet/time4j/tz/ZonalOffset;->total:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 647
    :cond_1
    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->fraction:I

    iget p1, p1, Lnet/time4j/tz/ZonalOffset;->fraction:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 664
    :cond_0
    instance-of v1, p1, Lnet/time4j/tz/ZonalOffset;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 665
    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    .line 666
    iget v1, p0, Lnet/time4j/tz/ZonalOffset;->total:I

    iget v3, p1, Lnet/time4j/tz/ZonalOffset;->total:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/tz/ZonalOffset;->fraction:I

    iget p1, p1, Lnet/time4j/tz/ZonalOffset;->fraction:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAbsoluteHours()I
    .locals 1

    .line 539
    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->total:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    return v0
.end method

.method public getAbsoluteMinutes()I
    .locals 1

    .line 557
    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->total:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public getAbsoluteSeconds()I
    .locals 1

    .line 575
    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->total:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public getFractionalAmount()I
    .locals 1

    .line 617
    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->fraction:I

    return v0
.end method

.method public getIntegralAmount()I
    .locals 1

    .line 593
    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->total:I

    return v0
.end method

.method getModel()Lnet/time4j/tz/SingleOffsetTimezone;
    .locals 1

    .line 1009
    invoke-static {p0}, Lnet/time4j/tz/SingleOffsetTimezone;->of(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/tz/SingleOffsetTimezone;

    move-result-object v0

    return-object v0
.end method

.method public getSign()Lnet/time4j/tz/OffsetSign;
    .locals 1

    .line 517
    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->total:I

    if-ltz v0, :cond_1

    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->fraction:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    :goto_1
    return-object v0
.end method

.method public getStdFormatPattern(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 882
    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->total:I

    if-nez v0, :cond_0

    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->fraction:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 885
    :goto_0
    :try_start_0
    sget-object v1, Lnet/time4j/tz/Timezone;->NAME_PROVIDER:Lnet/time4j/tz/ZoneNameProvider;

    invoke-interface {v1, v0, p1}, Lnet/time4j/tz/ZoneNameProvider;->getStdFormatPattern(ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    if-eqz v0, :cond_1

    const-string p1, "GMT"

    goto :goto_1

    :cond_1
    const-string p1, "GMT\u00b1hh:mm"

    :goto_1
    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 685
    iget v0, p0, Lnet/time4j/tz/ZonalOffset;->total:I

    not-int v0, v0

    iget v1, p0, Lnet/time4j/tz/ZonalOffset;->fraction:I

    const v2, 0xfa00

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 719
    iget-object v0, p0, Lnet/time4j/tz/ZonalOffset;->name:Ljava/lang/String;

    return-object v0
.end method
