.class final Lnet/time4j/CalendarOperator;
.super Lnet/time4j/ElementOperator;
.source "CalendarOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/ElementOperator<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# static fields
.field static final FIRST_DAY_OF_NEXT_MONTH:Lnet/time4j/CalendarOperator;

.field static final FIRST_DAY_OF_NEXT_QUARTER:Lnet/time4j/CalendarOperator;

.field static final FIRST_DAY_OF_NEXT_YEAR:Lnet/time4j/CalendarOperator;

.field static final LAST_DAY_OF_PREVIOUS_MONTH:Lnet/time4j/CalendarOperator;

.field static final LAST_DAY_OF_PREVIOUS_QUARTER:Lnet/time4j/CalendarOperator;

.field static final LAST_DAY_OF_PREVIOUS_YEAR:Lnet/time4j/CalendarOperator;


# instance fields
.field private final tsop:Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lnet/time4j/CalendarOperator;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lnet/time4j/CalendarOperator;-><init>(I)V

    sput-object v0, Lnet/time4j/CalendarOperator;->FIRST_DAY_OF_NEXT_MONTH:Lnet/time4j/CalendarOperator;

    .line 40
    new-instance v0, Lnet/time4j/CalendarOperator;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lnet/time4j/CalendarOperator;-><init>(I)V

    sput-object v0, Lnet/time4j/CalendarOperator;->FIRST_DAY_OF_NEXT_QUARTER:Lnet/time4j/CalendarOperator;

    .line 42
    new-instance v0, Lnet/time4j/CalendarOperator;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lnet/time4j/CalendarOperator;-><init>(I)V

    sput-object v0, Lnet/time4j/CalendarOperator;->FIRST_DAY_OF_NEXT_YEAR:Lnet/time4j/CalendarOperator;

    .line 45
    new-instance v0, Lnet/time4j/CalendarOperator;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lnet/time4j/CalendarOperator;-><init>(I)V

    sput-object v0, Lnet/time4j/CalendarOperator;->LAST_DAY_OF_PREVIOUS_MONTH:Lnet/time4j/CalendarOperator;

    .line 47
    new-instance v0, Lnet/time4j/CalendarOperator;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lnet/time4j/CalendarOperator;-><init>(I)V

    sput-object v0, Lnet/time4j/CalendarOperator;->LAST_DAY_OF_PREVIOUS_QUARTER:Lnet/time4j/CalendarOperator;

    .line 49
    new-instance v0, Lnet/time4j/CalendarOperator;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lnet/time4j/CalendarOperator;-><init>(I)V

    sput-object v0, Lnet/time4j/CalendarOperator;->LAST_DAY_OF_PREVIOUS_YEAR:Lnet/time4j/CalendarOperator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 59
    sget-object v0, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-direct {p0, v0, p1}, Lnet/time4j/ElementOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    .line 61
    new-instance p1, Lnet/time4j/CalendarOperator$1;

    invoke-direct {p1, p0}, Lnet/time4j/CalendarOperator$1;-><init>(Lnet/time4j/CalendarOperator;)V

    iput-object p1, p0, Lnet/time4j/CalendarOperator;->tsop:Lnet/time4j/engine/ChronoOperator;

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/CalendarOperator;Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lnet/time4j/CalendarOperator;->doApply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method private doApply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 5

    .line 90
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    .line 91
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result p1

    .line 93
    invoke-virtual {p0}, Lnet/time4j/CalendarOperator;->getType()I

    move-result v1

    const/16 v2, 0xc

    const/16 v3, 0x1f

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 137
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/CalendarOperator;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    .line 135
    invoke-static {v0, v2, v3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_1
    invoke-static {p1}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/Month;->getQuarterOfYear()Lnet/time4j/Quarter;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lnet/time4j/Quarter;->previous()Lnet/time4j/Quarter;

    move-result-object p1

    .line 125
    invoke-static {p1}, Lnet/time4j/Month;->atEndOfQuarterYear(Lnet/time4j/Quarter;)Lnet/time4j/Month;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/Month;->getValue()I

    move-result v1

    .line 126
    sget-object v2, Lnet/time4j/Quarter;->Q4:Lnet/time4j/Quarter;

    if-ne p1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 128
    invoke-static {v0, v1, v3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    sget-object v2, Lnet/time4j/Quarter;->Q1:Lnet/time4j/Quarter;

    if-ne p1, v2, :cond_1

    .line 130
    invoke-static {v0, v1, v3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0x1e

    .line 132
    invoke-static {v0, v1, p1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    :pswitch_2
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v2, p1

    .line 121
    :goto_0
    invoke-static {v0, v2}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p1

    .line 118
    invoke-static {v0, v2, p1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    :pswitch_3
    add-int/2addr v0, v4

    .line 111
    invoke-static {v0, v4, v4}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    .line 102
    :pswitch_4
    invoke-static {p1}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/Month;->getQuarterOfYear()Lnet/time4j/Quarter;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lnet/time4j/Quarter;->next()Lnet/time4j/Quarter;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lnet/time4j/Month;->atStartOfQuarterYear(Lnet/time4j/Quarter;)Lnet/time4j/Month;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/Month;->getValue()I

    move-result v1

    .line 105
    sget-object v2, Lnet/time4j/Quarter;->Q4:Lnet/time4j/Quarter;

    if-ne p1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 108
    :cond_3
    invoke-static {v0, v1, v4}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    :pswitch_5
    add-int/2addr p1, v4

    const/16 v1, 0xd

    if-lt p1, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    move p1, v4

    .line 100
    :cond_4
    invoke-static {v0, p1, v4}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/CalendarOperator;->apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lnet/time4j/CalendarOperator;->doApply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method onTimestamp()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lnet/time4j/CalendarOperator;->tsop:Lnet/time4j/engine/ChronoOperator;

    return-object v0
.end method
