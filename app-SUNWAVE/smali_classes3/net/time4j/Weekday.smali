.class public final enum Lnet/time4j/Weekday;
.super Ljava/lang/Enum;
.source "Weekday.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/Weekday;",
        ">;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Lnet/time4j/base/GregorianDate;",
        ">;",
        "Lnet/time4j/engine/ChronoOperator<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/Weekday;

.field private static final ENUMS:[Lnet/time4j/Weekday;

.field public static final enum FRIDAY:Lnet/time4j/Weekday;

.field public static final enum MONDAY:Lnet/time4j/Weekday;

.field public static final enum SATURDAY:Lnet/time4j/Weekday;

.field public static final enum SUNDAY:Lnet/time4j/Weekday;

.field public static final enum THURSDAY:Lnet/time4j/Weekday;

.field public static final enum TUESDAY:Lnet/time4j/Weekday;

.field public static final enum WEDNESDAY:Lnet/time4j/Weekday;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 58
    new-instance v0, Lnet/time4j/Weekday;

    const-string v1, "MONDAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/Weekday;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/Weekday;->MONDAY:Lnet/time4j/Weekday;

    .line 62
    new-instance v1, Lnet/time4j/Weekday;

    const-string v3, "TUESDAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/Weekday;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/Weekday;->TUESDAY:Lnet/time4j/Weekday;

    .line 66
    new-instance v3, Lnet/time4j/Weekday;

    const-string v5, "WEDNESDAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/Weekday;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/Weekday;->WEDNESDAY:Lnet/time4j/Weekday;

    .line 70
    new-instance v5, Lnet/time4j/Weekday;

    const-string v7, "THURSDAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/Weekday;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/Weekday;->THURSDAY:Lnet/time4j/Weekday;

    .line 74
    new-instance v7, Lnet/time4j/Weekday;

    const-string v9, "FRIDAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/Weekday;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/Weekday;->FRIDAY:Lnet/time4j/Weekday;

    .line 78
    new-instance v9, Lnet/time4j/Weekday;

    const-string v11, "SATURDAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/time4j/Weekday;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    .line 82
    new-instance v11, Lnet/time4j/Weekday;

    const-string v13, "SUNDAY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnet/time4j/Weekday;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    const/4 v13, 0x7

    new-array v13, v13, [Lnet/time4j/Weekday;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 51
    sput-object v13, Lnet/time4j/Weekday;->$VALUES:[Lnet/time4j/Weekday;

    .line 84
    invoke-static {}, Lnet/time4j/Weekday;->values()[Lnet/time4j/Weekday;

    move-result-object v0

    sput-object v0, Lnet/time4j/Weekday;->ENUMS:[Lnet/time4j/Weekday;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/Weekday;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 459
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getWeekdays(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    const-class p2, Lnet/time4j/Weekday;

    invoke-virtual {p1, p0, v0, p2}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lnet/time4j/Weekday;

    if-eqz p1, :cond_0

    return-object p1

    .line 462
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot parse: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p2

    invoke-direct {p1, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public static valueOf(I)Lnet/time4j/Weekday;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    .line 215
    sget-object v1, Lnet/time4j/Weekday;->ENUMS:[Lnet/time4j/Weekday;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 212
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

.method public static valueOf(ILnet/time4j/Month;I)Lnet/time4j/Weekday;
    .locals 0

    .line 297
    invoke-virtual {p1}, Lnet/time4j/Month;->getValue()I

    move-result p1

    .line 295
    invoke-static {p0, p1, p2}, Lnet/time4j/base/GregorianMath;->getDayOfWeek(III)I

    move-result p0

    .line 294
    invoke-static {p0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(ILnet/time4j/Weekmodel;)Lnet/time4j/Weekday;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    .line 256
    invoke-virtual {p1}, Lnet/time4j/Weekmodel;->getFirstDayOfWeek()Lnet/time4j/Weekday;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/Weekday;->ordinal()I

    move-result p1

    .line 257
    sget-object v2, Lnet/time4j/Weekday;->ENUMS:[Lnet/time4j/Weekday;

    sub-int/2addr p0, v0

    add-int/2addr p0, p1

    rem-int/2addr p0, v1

    aget-object p0, v2, p0

    return-object p0

    .line 252
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Weekday out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/Weekday;
    .locals 1

    .line 51
    const-class v0, Lnet/time4j/Weekday;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/Weekday;

    return-object p0
.end method

.method public static values()[Lnet/time4j/Weekday;
    .locals 1

    .line 51
    sget-object v0, Lnet/time4j/Weekday;->$VALUES:[Lnet/time4j/Weekday;

    invoke-virtual {v0}, [Lnet/time4j/Weekday;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/Weekday;

    return-object v0
.end method

.method public static values(Lnet/time4j/Weekmodel;)[Lnet/time4j/Weekday;
    .locals 3

    const/4 v0, 0x7

    new-array v1, v0, [Lnet/time4j/Weekday;

    .line 176
    invoke-virtual {p0}, Lnet/time4j/Weekmodel;->getFirstDayOfWeek()Lnet/time4j/Weekday;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 179
    aput-object p0, v1, v2

    .line 180
    invoke-virtual {p0}, Lnet/time4j/Weekday;->next()Lnet/time4j/Weekday;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekday;->apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 1

    .line 483
    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_WEEK:Lnet/time4j/NavigableElement;

    invoke-virtual {p1, v0, p0}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 382
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/Weekday;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;
    .locals 0

    .line 423
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getWeekdays(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue()I
    .locals 1

    .line 105
    invoke-virtual {p0}, Lnet/time4j/Weekday;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getValue(Lnet/time4j/Weekmodel;)I
    .locals 1

    .line 139
    invoke-virtual {p1}, Lnet/time4j/Weekmodel;->getFirstDayOfWeek()Lnet/time4j/Weekday;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/Weekday;->ordinal()I

    move-result p1

    .line 140
    invoke-virtual {p0}, Lnet/time4j/Weekday;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    sub-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Lnet/time4j/Weekday;
    .locals 1

    const/4 v0, 0x1

    .line 320
    invoke-virtual {p0, v0}, Lnet/time4j/Weekday;->roll(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lnet/time4j/Weekday;
    .locals 1

    const/4 v0, -0x1

    .line 340
    invoke-virtual {p0, v0}, Lnet/time4j/Weekday;->roll(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public roll(I)Lnet/time4j/Weekday;
    .locals 1

    .line 358
    invoke-virtual {p0}, Lnet/time4j/Weekday;->ordinal()I

    move-result v0

    rem-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x7

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 51
    check-cast p1, Lnet/time4j/base/GregorianDate;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekday;->test(Lnet/time4j/base/GregorianDate;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/base/GregorianDate;)Z
    .locals 2

    .line 472
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v0

    .line 473
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v1

    .line 474
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result p1

    .line 476
    invoke-static {v0, v1, p1}, Lnet/time4j/base/GregorianMath;->getDayOfWeek(III)I

    move-result p1

    invoke-virtual {p0}, Lnet/time4j/Weekday;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
