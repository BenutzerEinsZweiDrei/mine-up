.class public final enum Lnet/time4j/calendar/ThaiSolarEra;
.super Ljava/lang/Enum;
.source "ThaiSolarEra.java"

# interfaces
.implements Lnet/time4j/engine/CalendarEra;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/ThaiSolarEra;",
        ">;",
        "Lnet/time4j/engine/CalendarEra;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/ThaiSolarEra;

.field public static final enum BUDDHIST:Lnet/time4j/calendar/ThaiSolarEra;

.field public static final enum RATTANAKOSIN:Lnet/time4j/calendar/ThaiSolarEra;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    new-instance v0, Lnet/time4j/calendar/ThaiSolarEra;

    const-string v1, "RATTANAKOSIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/ThaiSolarEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/ThaiSolarEra;->RATTANAKOSIN:Lnet/time4j/calendar/ThaiSolarEra;

    .line 85
    new-instance v1, Lnet/time4j/calendar/ThaiSolarEra;

    const-string v3, "BUDDHIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/ThaiSolarEra;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/ThaiSolarEra;->BUDDHIST:Lnet/time4j/calendar/ThaiSolarEra;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/calendar/ThaiSolarEra;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 48
    sput-object v3, Lnet/time4j/calendar/ThaiSolarEra;->$VALUES:[Lnet/time4j/calendar/ThaiSolarEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/ThaiSolarEra;
    .locals 1

    .line 48
    const-class v0, Lnet/time4j/calendar/ThaiSolarEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/ThaiSolarEra;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/ThaiSolarEra;
    .locals 1

    .line 48
    sget-object v0, Lnet/time4j/calendar/ThaiSolarEra;->$VALUES:[Lnet/time4j/calendar/ThaiSolarEra;

    invoke-virtual {v0}, [Lnet/time4j/calendar/ThaiSolarEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/ThaiSolarEra;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/calendar/ThaiSolarEra;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;
    .locals 1

    const-string v0, "buddhist"

    .line 141
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p2}, Lnet/time4j/format/CalendarText;->getEras(Lnet/time4j/format/TextWidth;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getYear(Lnet/time4j/engine/CalendarDate;)I
    .locals 4

    .line 164
    invoke-interface {p1}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {v0, v1, v2}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 167
    sget-object v1, Lnet/time4j/calendar/ThaiSolarEra;->RATTANAKOSIN:Lnet/time4j/calendar/ThaiSolarEra;

    const/4 v2, 0x4

    if-ne p0, v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, -0x6f5

    .line 169
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v0

    if-ge v0, v2, :cond_1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 173
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x21f

    const/16 v3, 0x9b4

    if-ge v1, v3, :cond_1

    .line 174
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v0

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-lt v1, v0, :cond_2

    return v1

    .line 180
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method toIsoYear(II)I
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    .line 199
    sget-object v1, Lnet/time4j/calendar/ThaiSolarEra;->RATTANAKOSIN:Lnet/time4j/calendar/ThaiSolarEra;

    const/4 v2, 0x4

    if-ne p0, v1, :cond_0

    const/16 v1, 0x6f5

    .line 200
    invoke-static {p1, v1}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p1

    if-ge p2, v2, :cond_2

    .line 202
    invoke-static {p1, v0}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x21f

    .line 205
    invoke-static {p1, v1}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p1

    if-ge p2, v2, :cond_2

    const/16 v1, 0x794

    if-eq p1, v1, :cond_1

    if-ge p1, v1, :cond_2

    .line 210
    invoke-static {p1, v0}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p1

    goto :goto_0

    .line 208
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buddhist year 2483 does not know month: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return p1

    .line 194
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
