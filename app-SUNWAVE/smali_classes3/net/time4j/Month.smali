.class public final enum Lnet/time4j/Month;
.super Ljava/lang/Enum;
.source "Month.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/Month;",
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
.field private static final synthetic $VALUES:[Lnet/time4j/Month;

.field public static final enum APRIL:Lnet/time4j/Month;

.field public static final enum AUGUST:Lnet/time4j/Month;

.field public static final enum DECEMBER:Lnet/time4j/Month;

.field private static final ENUMS:[Lnet/time4j/Month;

.field public static final enum FEBRUARY:Lnet/time4j/Month;

.field public static final enum JANUARY:Lnet/time4j/Month;

.field public static final enum JULY:Lnet/time4j/Month;

.field public static final enum JUNE:Lnet/time4j/Month;

.field public static final enum MARCH:Lnet/time4j/Month;

.field public static final enum MAY:Lnet/time4j/Month;

.field public static final enum NOVEMBER:Lnet/time4j/Month;

.field public static final enum OCTOBER:Lnet/time4j/Month;

.field public static final enum SEPTEMBER:Lnet/time4j/Month;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 57
    new-instance v0, Lnet/time4j/Month;

    const-string v1, "JANUARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/Month;->JANUARY:Lnet/time4j/Month;

    .line 61
    new-instance v1, Lnet/time4j/Month;

    const-string v3, "FEBRUARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/Month;->FEBRUARY:Lnet/time4j/Month;

    .line 65
    new-instance v3, Lnet/time4j/Month;

    const-string v5, "MARCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/Month;->MARCH:Lnet/time4j/Month;

    .line 69
    new-instance v5, Lnet/time4j/Month;

    const-string v7, "APRIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/Month;->APRIL:Lnet/time4j/Month;

    .line 73
    new-instance v7, Lnet/time4j/Month;

    const-string v9, "MAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/Month;->MAY:Lnet/time4j/Month;

    .line 77
    new-instance v9, Lnet/time4j/Month;

    const-string v11, "JUNE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/time4j/Month;->JUNE:Lnet/time4j/Month;

    .line 81
    new-instance v11, Lnet/time4j/Month;

    const-string v13, "JULY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/time4j/Month;->JULY:Lnet/time4j/Month;

    .line 85
    new-instance v13, Lnet/time4j/Month;

    const-string v15, "AUGUST"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnet/time4j/Month;->AUGUST:Lnet/time4j/Month;

    .line 89
    new-instance v15, Lnet/time4j/Month;

    const-string v14, "SEPTEMBER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lnet/time4j/Month;->SEPTEMBER:Lnet/time4j/Month;

    .line 93
    new-instance v14, Lnet/time4j/Month;

    const-string v12, "OCTOBER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lnet/time4j/Month;->OCTOBER:Lnet/time4j/Month;

    .line 97
    new-instance v12, Lnet/time4j/Month;

    const-string v10, "NOVEMBER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lnet/time4j/Month;->NOVEMBER:Lnet/time4j/Month;

    .line 101
    new-instance v10, Lnet/time4j/Month;

    const-string v8, "DECEMBER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lnet/time4j/Month;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnet/time4j/Month;->DECEMBER:Lnet/time4j/Month;

    const/16 v8, 0xc

    new-array v8, v8, [Lnet/time4j/Month;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 50
    sput-object v8, Lnet/time4j/Month;->$VALUES:[Lnet/time4j/Month;

    .line 103
    invoke-static {}, Lnet/time4j/Month;->values()[Lnet/time4j/Month;

    move-result-object v0

    sput-object v0, Lnet/time4j/Month;->ENUMS:[Lnet/time4j/Month;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static atEndOfQuarterYear(Lnet/time4j/Quarter;)Lnet/time4j/Month;
    .locals 1

    .line 221
    sget-object v0, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Quarter:[I

    invoke-virtual {p0}, Lnet/time4j/Quarter;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 229
    sget-object p0, Lnet/time4j/Month;->DECEMBER:Lnet/time4j/Month;

    return-object p0

    .line 227
    :cond_0
    sget-object p0, Lnet/time4j/Month;->SEPTEMBER:Lnet/time4j/Month;

    return-object p0

    .line 225
    :cond_1
    sget-object p0, Lnet/time4j/Month;->JUNE:Lnet/time4j/Month;

    return-object p0

    .line 223
    :cond_2
    sget-object p0, Lnet/time4j/Month;->MARCH:Lnet/time4j/Month;

    return-object p0
.end method

.method public static atStartOfQuarterYear(Lnet/time4j/Quarter;)Lnet/time4j/Month;
    .locals 1

    .line 194
    sget-object v0, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Quarter:[I

    invoke-virtual {p0}, Lnet/time4j/Quarter;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 202
    sget-object p0, Lnet/time4j/Month;->OCTOBER:Lnet/time4j/Month;

    return-object p0

    .line 200
    :cond_0
    sget-object p0, Lnet/time4j/Month;->JULY:Lnet/time4j/Month;

    return-object p0

    .line 198
    :cond_1
    sget-object p0, Lnet/time4j/Month;->APRIL:Lnet/time4j/Month;

    return-object p0

    .line 196
    :cond_2
    sget-object p0, Lnet/time4j/Month;->JANUARY:Lnet/time4j/Month;

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/Month;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 409
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    const-class p2, Lnet/time4j/Month;

    invoke-virtual {p1, p0, v0, p2}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lnet/time4j/Month;

    if-eqz p1, :cond_0

    return-object p1

    .line 412
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

.method public static valueOf(I)Lnet/time4j/Month;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xc

    if-gt p0, v1, :cond_0

    .line 129
    sget-object v1, Lnet/time4j/Month;->ENUMS:[Lnet/time4j/Month;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 126
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

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/Month;
    .locals 1

    .line 50
    const-class v0, Lnet/time4j/Month;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/Month;

    return-object p0
.end method

.method public static values()[Lnet/time4j/Month;
    .locals 1

    .line 50
    sget-object v0, Lnet/time4j/Month;->$VALUES:[Lnet/time4j/Month;

    invoke-virtual {v0}, [Lnet/time4j/Month;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/Month;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/Month;->apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 1

    .line 429
    sget-object v0, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p1, v0, p0}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 332
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/Month;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;
    .locals 0

    .line 373
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLength(I)I
    .locals 1

    .line 250
    invoke-virtual {p0}, Lnet/time4j/Month;->getValue()I

    move-result v0

    invoke-static {p1, v0}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p1

    return p1
.end method

.method public getQuarterOfYear()Lnet/time4j/Quarter;
    .locals 2

    .line 161
    sget-object v0, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Month:[I

    invoke-virtual {p0}, Lnet/time4j/Month;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 175
    sget-object v0, Lnet/time4j/Quarter;->Q4:Lnet/time4j/Quarter;

    return-object v0

    .line 173
    :pswitch_0
    sget-object v0, Lnet/time4j/Quarter;->Q3:Lnet/time4j/Quarter;

    return-object v0

    .line 169
    :pswitch_1
    sget-object v0, Lnet/time4j/Quarter;->Q2:Lnet/time4j/Quarter;

    return-object v0

    .line 165
    :pswitch_2
    sget-object v0, Lnet/time4j/Quarter;->Q1:Lnet/time4j/Quarter;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()I
    .locals 1

    .line 145
    invoke-virtual {p0}, Lnet/time4j/Month;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Lnet/time4j/Month;
    .locals 1

    const/4 v0, 0x1

    .line 270
    invoke-virtual {p0, v0}, Lnet/time4j/Month;->roll(I)Lnet/time4j/Month;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lnet/time4j/Month;
    .locals 1

    const/4 v0, -0x1

    .line 290
    invoke-virtual {p0, v0}, Lnet/time4j/Month;->roll(I)Lnet/time4j/Month;

    move-result-object v0

    return-object v0
.end method

.method public roll(I)Lnet/time4j/Month;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lnet/time4j/Month;->ordinal()I

    move-result v0

    rem-int/lit8 p1, p1, 0xc

    add-int/lit8 p1, p1, 0xc

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 50
    check-cast p1, Lnet/time4j/base/GregorianDate;

    invoke-virtual {p0, p1}, Lnet/time4j/Month;->test(Lnet/time4j/base/GregorianDate;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/base/GregorianDate;)Z
    .locals 1

    .line 422
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result p1

    invoke-virtual {p0}, Lnet/time4j/Month;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
