.class public abstract enum Lnet/time4j/history/NewYearRule;
.super Ljava/lang/Enum;
.source "NewYearRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/history/NewYearRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/history/NewYearRule;

.field public static final enum BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

.field public static final enum BEGIN_OF_MARCH:Lnet/time4j/history/NewYearRule;

.field public static final enum BEGIN_OF_SEPTEMBER:Lnet/time4j/history/NewYearRule;

.field public static final enum CALCULUS_PISANUS:Lnet/time4j/history/NewYearRule;

.field public static final enum CHRISTMAS_STYLE:Lnet/time4j/history/NewYearRule;

.field private static final COUNCIL_OF_TOURS:I = 0x237

.field public static final enum EASTER_STYLE:Lnet/time4j/history/NewYearRule;

.field public static final enum EPIPHANY:Lnet/time4j/history/NewYearRule;

.field public static final enum GOOD_FRIDAY:Lnet/time4j/history/NewYearRule;

.field public static final enum MARIA_ANUNCIATA:Lnet/time4j/history/NewYearRule;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 86
    new-instance v0, Lnet/time4j/history/NewYearRule$1;

    const-string v1, "BEGIN_OF_JANUARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/history/NewYearRule$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/history/NewYearRule;->BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

    .line 110
    new-instance v1, Lnet/time4j/history/NewYearRule$2;

    const-string v3, "BEGIN_OF_MARCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/history/NewYearRule$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/history/NewYearRule;->BEGIN_OF_MARCH:Lnet/time4j/history/NewYearRule;

    .line 127
    new-instance v3, Lnet/time4j/history/NewYearRule$3;

    const-string v5, "BEGIN_OF_SEPTEMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/history/NewYearRule$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/history/NewYearRule;->BEGIN_OF_SEPTEMBER:Lnet/time4j/history/NewYearRule;

    .line 154
    new-instance v5, Lnet/time4j/history/NewYearRule$4;

    const-string v7, "CHRISTMAS_STYLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/history/NewYearRule$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/history/NewYearRule;->CHRISTMAS_STYLE:Lnet/time4j/history/NewYearRule;

    .line 192
    new-instance v7, Lnet/time4j/history/NewYearRule$5;

    const-string v9, "EASTER_STYLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/history/NewYearRule$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/history/NewYearRule;->EASTER_STYLE:Lnet/time4j/history/NewYearRule;

    .line 224
    new-instance v9, Lnet/time4j/history/NewYearRule$6;

    const-string v11, "GOOD_FRIDAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/time4j/history/NewYearRule$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/time4j/history/NewYearRule;->GOOD_FRIDAY:Lnet/time4j/history/NewYearRule;

    .line 253
    new-instance v11, Lnet/time4j/history/NewYearRule$7;

    const-string v13, "MARIA_ANUNCIATA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnet/time4j/history/NewYearRule$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/time4j/history/NewYearRule;->MARIA_ANUNCIATA:Lnet/time4j/history/NewYearRule;

    .line 277
    new-instance v13, Lnet/time4j/history/NewYearRule$8;

    const-string v15, "CALCULUS_PISANUS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lnet/time4j/history/NewYearRule$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnet/time4j/history/NewYearRule;->CALCULUS_PISANUS:Lnet/time4j/history/NewYearRule;

    .line 322
    new-instance v15, Lnet/time4j/history/NewYearRule$9;

    const-string v14, "EPIPHANY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lnet/time4j/history/NewYearRule$9;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lnet/time4j/history/NewYearRule;->EPIPHANY:Lnet/time4j/history/NewYearRule;

    const/16 v14, 0x9

    new-array v14, v14, [Lnet/time4j/history/NewYearRule;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 62
    sput-object v14, Lnet/time4j/history/NewYearRule;->$VALUES:[Lnet/time4j/history/NewYearRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/time4j/history/NewYearRule$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lnet/time4j/history/NewYearRule;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/history/NewYearRule;
    .locals 1

    .line 62
    const-class v0, Lnet/time4j/history/NewYearRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/history/NewYearRule;

    return-object p0
.end method

.method public static values()[Lnet/time4j/history/NewYearRule;
    .locals 1

    .line 62
    sget-object v0, Lnet/time4j/history/NewYearRule;->$VALUES:[Lnet/time4j/history/NewYearRule;

    invoke-virtual {v0}, [Lnet/time4j/history/NewYearRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/history/NewYearRule;

    return-object v0
.end method


# virtual methods
.method displayedYear(Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/HistoricDate;)I
    .locals 1

    .line 392
    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result p1

    .line 393
    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/time4j/history/NewYearRule;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    .line 396
    invoke-virtual {p2, v0}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result p2

    if-gez p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method abstract newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;
.end method

.method standardYear(ZLnet/time4j/history/NewYearStrategy;Lnet/time4j/history/HistoricEra;III)I
    .locals 4

    const/4 v0, 0x5

    if-lt p5, v0, :cond_0

    const/16 v0, 0x8

    if-gt p5, v0, :cond_0

    return p4

    .line 418
    :cond_0
    invoke-virtual {p0, p3, p4}, Lnet/time4j/history/NewYearRule;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    add-int/lit8 v1, p4, 0x1

    .line 419
    invoke-virtual {p2, p3, v1}, Lnet/time4j/history/NewYearStrategy;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object p2

    .line 420
    invoke-static {p3, p4, p5, p6}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v2

    const/4 v3, 0x4

    if-gt p5, v3, :cond_3

    .line 426
    invoke-static {p3, v1, p5, p6}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p3

    .line 427
    invoke-virtual {v2, v0}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result p5

    if-ltz p5, :cond_1

    move p5, p4

    goto :goto_0

    :cond_1
    move p5, v1

    .line 428
    :goto_0
    invoke-virtual {p3, p2}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result p2

    if-ltz p2, :cond_2

    goto :goto_3

    :cond_2
    :goto_1
    move p4, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, p4, -0x1

    .line 430
    invoke-static {p3, v1, p5, p6}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p3

    .line 431
    invoke-virtual {p3, v0}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result p3

    if-ltz p3, :cond_4

    move p5, v1

    goto :goto_2

    :cond_4
    move p5, p4

    .line 432
    :goto_2
    invoke-virtual {v2, p2}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result p2

    if-ltz p2, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    if-gt p5, p4, :cond_7

    if-eqz p1, :cond_6

    move p4, p5

    :cond_6
    return p4

    .line 436
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid date due to changing new year rule (year too short to cover month and day-of-month): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public until(I)Lnet/time4j/history/NewYearStrategy;
    .locals 3

    const/16 v0, 0x237

    if-le p1, v0, :cond_1

    .line 369
    new-instance v1, Lnet/time4j/history/NewYearStrategy;

    invoke-direct {v1, p0, p1}, Lnet/time4j/history/NewYearStrategy;-><init>(Lnet/time4j/history/NewYearRule;I)V

    .line 371
    sget-object p1, Lnet/time4j/history/NewYearRule;->BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

    if-eq p0, p1, :cond_0

    .line 372
    new-instance v2, Lnet/time4j/history/NewYearStrategy;

    invoke-direct {v2, p1, v0}, Lnet/time4j/history/NewYearStrategy;-><init>(Lnet/time4j/history/NewYearRule;I)V

    .line 373
    invoke-virtual {v2, v1}, Lnet/time4j/history/NewYearStrategy;->and(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/NewYearStrategy;

    move-result-object v1

    :cond_0
    return-object v1

    .line 365
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Defining New-Year-strategy is not supported before Council of Tours in AD 567."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
