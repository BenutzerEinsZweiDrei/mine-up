.class public final enum Lnet/time4j/calendar/IndianMonth;
.super Ljava/lang/Enum;
.source "IndianMonth.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/IndianMonth;",
        ">;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Lnet/time4j/calendar/IndianCalendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/IndianMonth;

.field public static final enum AGRAHAYANA:Lnet/time4j/calendar/IndianMonth;

.field public static final enum ASHADHA:Lnet/time4j/calendar/IndianMonth;

.field public static final enum ASHWIN:Lnet/time4j/calendar/IndianMonth;

.field public static final enum BHAADRA:Lnet/time4j/calendar/IndianMonth;

.field public static final enum CHAITRA:Lnet/time4j/calendar/IndianMonth;

.field private static final ENUMS:[Lnet/time4j/calendar/IndianMonth;

.field public static final enum JYESHTHA:Lnet/time4j/calendar/IndianMonth;

.field public static final enum KARTIKA:Lnet/time4j/calendar/IndianMonth;

.field public static final enum MAGHA:Lnet/time4j/calendar/IndianMonth;

.field public static final enum PAUSHA:Lnet/time4j/calendar/IndianMonth;

.field public static final enum PHALGUNA:Lnet/time4j/calendar/IndianMonth;

.field public static final enum SHRAVANA:Lnet/time4j/calendar/IndianMonth;

.field public static final enum VAISHAKHA:Lnet/time4j/calendar/IndianMonth;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 59
    new-instance v0, Lnet/time4j/calendar/IndianMonth;

    const-string v1, "CHAITRA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/IndianMonth;->CHAITRA:Lnet/time4j/calendar/IndianMonth;

    .line 69
    new-instance v1, Lnet/time4j/calendar/IndianMonth;

    const-string v3, "VAISHAKHA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/IndianMonth;->VAISHAKHA:Lnet/time4j/calendar/IndianMonth;

    .line 79
    new-instance v3, Lnet/time4j/calendar/IndianMonth;

    const-string v5, "JYESHTHA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/calendar/IndianMonth;->JYESHTHA:Lnet/time4j/calendar/IndianMonth;

    .line 89
    new-instance v5, Lnet/time4j/calendar/IndianMonth;

    const-string v7, "ASHADHA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/calendar/IndianMonth;->ASHADHA:Lnet/time4j/calendar/IndianMonth;

    .line 99
    new-instance v7, Lnet/time4j/calendar/IndianMonth;

    const-string v9, "SHRAVANA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/calendar/IndianMonth;->SHRAVANA:Lnet/time4j/calendar/IndianMonth;

    .line 109
    new-instance v9, Lnet/time4j/calendar/IndianMonth;

    const-string v11, "BHAADRA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/time4j/calendar/IndianMonth;->BHAADRA:Lnet/time4j/calendar/IndianMonth;

    .line 119
    new-instance v11, Lnet/time4j/calendar/IndianMonth;

    const-string v13, "ASHWIN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/time4j/calendar/IndianMonth;->ASHWIN:Lnet/time4j/calendar/IndianMonth;

    .line 129
    new-instance v13, Lnet/time4j/calendar/IndianMonth;

    const-string v15, "KARTIKA"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnet/time4j/calendar/IndianMonth;->KARTIKA:Lnet/time4j/calendar/IndianMonth;

    .line 139
    new-instance v15, Lnet/time4j/calendar/IndianMonth;

    const-string v14, "AGRAHAYANA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lnet/time4j/calendar/IndianMonth;->AGRAHAYANA:Lnet/time4j/calendar/IndianMonth;

    .line 149
    new-instance v14, Lnet/time4j/calendar/IndianMonth;

    const-string v12, "PAUSHA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lnet/time4j/calendar/IndianMonth;->PAUSHA:Lnet/time4j/calendar/IndianMonth;

    .line 159
    new-instance v12, Lnet/time4j/calendar/IndianMonth;

    const-string v10, "MAGHA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lnet/time4j/calendar/IndianMonth;->MAGHA:Lnet/time4j/calendar/IndianMonth;

    .line 169
    new-instance v10, Lnet/time4j/calendar/IndianMonth;

    const-string v8, "PHALGUNA"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lnet/time4j/calendar/IndianMonth;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnet/time4j/calendar/IndianMonth;->PHALGUNA:Lnet/time4j/calendar/IndianMonth;

    const/16 v8, 0xc

    new-array v8, v8, [Lnet/time4j/calendar/IndianMonth;

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

    .line 42
    sput-object v8, Lnet/time4j/calendar/IndianMonth;->$VALUES:[Lnet/time4j/calendar/IndianMonth;

    .line 171
    invoke-static {}, Lnet/time4j/calendar/IndianMonth;->values()[Lnet/time4j/calendar/IndianMonth;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/IndianMonth;->ENUMS:[Lnet/time4j/calendar/IndianMonth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lnet/time4j/calendar/IndianMonth;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xc

    if-gt p0, v1, :cond_0

    .line 195
    sget-object v1, Lnet/time4j/calendar/IndianMonth;->ENUMS:[Lnet/time4j/calendar/IndianMonth;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 192
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

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/IndianMonth;
    .locals 1

    .line 42
    const-class v0, Lnet/time4j/calendar/IndianMonth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/IndianMonth;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/IndianMonth;
    .locals 1

    .line 42
    sget-object v0, Lnet/time4j/calendar/IndianMonth;->$VALUES:[Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {v0}, [Lnet/time4j/calendar/IndianMonth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/IndianMonth;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 233
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/calendar/IndianMonth;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;
    .locals 1

    const-string v0, "indian"

    .line 272
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    .line 273
    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue()I
    .locals 1

    .line 211
    invoke-virtual {p0}, Lnet/time4j/calendar/IndianMonth;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public roll(I)Lnet/time4j/calendar/IndianMonth;
    .locals 1

    .line 300
    invoke-virtual {p0}, Lnet/time4j/calendar/IndianMonth;->ordinal()I

    move-result v0

    rem-int/lit8 p1, p1, 0xc

    add-int/lit8 p1, p1, 0xc

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/calendar/IndianMonth;->valueOf(I)Lnet/time4j/calendar/IndianMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianMonth;->test(Lnet/time4j/calendar/IndianCalendar;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/calendar/IndianCalendar;)Z
    .locals 0

    .line 280
    invoke-virtual {p1}, Lnet/time4j/calendar/IndianCalendar;->getMonth()Lnet/time4j/calendar/IndianMonth;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
