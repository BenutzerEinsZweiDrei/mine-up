.class public final Lnet/time4j/calendar/EastAsianMonth;
.super Ljava/lang/Object;
.source "EastAsianMonth.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/calendar/EastAsianMonth;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final CACHE:[Lnet/time4j/calendar/EastAsianMonth;

.field public static final LEAP_MONTH_INDICATOR:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEAP_MONTH_IS_TRAILING:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x68b1e23bcb72bb9fL


# instance fields
.field private final index:I

.field private final leap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 87
    const-class v0, Ljava/lang/Character;

    const-string v1, "LEAP_MONTH_INDICATOR"

    .line 88
    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/EastAsianMonth;->LEAP_MONTH_INDICATOR:Lnet/time4j/engine/AttributeKey;

    .line 110
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "LEAP_MONTH_IS_TRAILING"

    .line 111
    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/EastAsianMonth;->LEAP_MONTH_IS_TRAILING:Lnet/time4j/engine/AttributeKey;

    const/16 v0, 0x18

    new-array v0, v0, [Lnet/time4j/calendar/EastAsianMonth;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    .line 118
    new-instance v3, Lnet/time4j/calendar/EastAsianMonth;

    invoke-direct {v3, v2, v1}, Lnet/time4j/calendar/EastAsianMonth;-><init>(IZ)V

    aput-object v3, v0, v2

    add-int/lit8 v3, v2, 0xc

    .line 119
    new-instance v4, Lnet/time4j/calendar/EastAsianMonth;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lnet/time4j/calendar/EastAsianMonth;-><init>(IZ)V

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_0
    sput-object v0, Lnet/time4j/calendar/EastAsianMonth;->CACHE:[Lnet/time4j/calendar/EastAsianMonth;

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Lnet/time4j/calendar/EastAsianMonth;->index:I

    .line 147
    iput-boolean p2, p0, Lnet/time4j/calendar/EastAsianMonth;->leap:Z

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 396
    :try_start_0
    sget-object v0, Lnet/time4j/calendar/EastAsianMonth;->CACHE:[Lnet/time4j/calendar/EastAsianMonth;

    iget v1, p0, Lnet/time4j/calendar/EastAsianMonth;->index:I

    iget-boolean v2, p0, Lnet/time4j/calendar/EastAsianMonth;->leap:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 398
    :catch_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0
.end method

.method public static valueOf(I)Lnet/time4j/calendar/EastAsianMonth;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xc

    if-gt p0, v1, :cond_0

    .line 177
    sget-object v1, Lnet/time4j/calendar/EastAsianMonth;->CACHE:[Lnet/time4j/calendar/EastAsianMonth;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 66
    check-cast p1, Lnet/time4j/calendar/EastAsianMonth;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianMonth;->compareTo(Lnet/time4j/calendar/EastAsianMonth;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/calendar/EastAsianMonth;)I
    .locals 4

    .line 324
    iget v0, p0, Lnet/time4j/calendar/EastAsianMonth;->index:I

    iget v1, p1, Lnet/time4j/calendar/EastAsianMonth;->index:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 328
    :cond_1
    iget-boolean v0, p0, Lnet/time4j/calendar/EastAsianMonth;->leap:Z

    if-eqz v0, :cond_2

    .line 329
    iget-boolean p1, p1, Lnet/time4j/calendar/EastAsianMonth;->leap:Z

    xor-int/2addr p1, v3

    return p1

    .line 331
    :cond_2
    iget-boolean p1, p1, Lnet/time4j/calendar/EastAsianMonth;->leap:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 341
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/EastAsianMonth;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 342
    check-cast p1, Lnet/time4j/calendar/EastAsianMonth;

    .line 343
    iget v1, p0, Lnet/time4j/calendar/EastAsianMonth;->index:I

    iget v3, p1, Lnet/time4j/calendar/EastAsianMonth;->index:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lnet/time4j/calendar/EastAsianMonth;->leap:Z

    iget-boolean p1, p1, Lnet/time4j/calendar/EastAsianMonth;->leap:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/NumberSystem;)Ljava/lang/String;
    .locals 2

    .line 306
    invoke-static {}, Lnet/time4j/format/Attributes;->empty()Lnet/time4j/format/Attributes;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/calendar/EastAsianMonth;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/NumberSystem;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/String;

    move-result-object p2

    .line 307
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u6708"

    if-eqz v0, :cond_0

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v0, "ko"

    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\uc6d4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, "ja"

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method getDisplayName(Ljava/util/Locale;Lnet/time4j/format/NumberSystem;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/String;
    .locals 4

    const-string v0, "generic"

    .line 372
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    .line 373
    sget-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p2}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 374
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v1

    invoke-static {p2, v0, v1}, Lnet/time4j/format/internal/DualFormatHelper;->toNumeral(Lnet/time4j/format/NumberSystem;CI)Ljava/lang/String;

    move-result-object p2

    .line 376
    iget-boolean v0, p0, Lnet/time4j/calendar/EastAsianMonth;->leap:Z

    if-eqz v0, :cond_1

    .line 377
    sget-object v0, Lnet/time4j/calendar/EastAsianMonth;->LEAP_MONTH_IS_TRAILING:Lnet/time4j/engine/AttributeKey;

    const-string v1, "leap-alignment"

    .line 378
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "R"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 379
    sget-object v1, Lnet/time4j/calendar/EastAsianMonth;->LEAP_MONTH_INDICATOR:Lnet/time4j/engine/AttributeKey;

    const-string v3, "leap-indicator"

    .line 380
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    .line 381
    new-instance p3, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p1

    :cond_1
    return-object p2
.end method

.method public getNumber()I
    .locals 1

    .line 201
    iget v0, p0, Lnet/time4j/calendar/EastAsianMonth;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getOldJapaneseName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const-string v0, "japanese"

    .line 255
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 353
    iget v0, p0, Lnet/time4j/calendar/EastAsianMonth;->index:I

    iget-boolean v1, p0, Lnet/time4j/calendar/EastAsianMonth;->leap:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isLeap()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lnet/time4j/calendar/EastAsianMonth;->leap:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 360
    iget v0, p0, Lnet/time4j/calendar/EastAsianMonth;->index:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-boolean v1, p0, Lnet/time4j/calendar/EastAsianMonth;->leap:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public withLeap()Lnet/time4j/calendar/EastAsianMonth;
    .locals 2

    .line 233
    sget-object v0, Lnet/time4j/calendar/EastAsianMonth;->CACHE:[Lnet/time4j/calendar/EastAsianMonth;

    iget v1, p0, Lnet/time4j/calendar/EastAsianMonth;->index:I

    add-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method
