.class final Lnet/time4j/NavigationOperator;
.super Lnet/time4j/ElementOperator;
.source "NavigationOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Enum<",
        "TV;>;>",
        "Lnet/time4j/ElementOperator<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# instance fields
.field private final len:I

.field private final navTS:Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;ITV;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lnet/time4j/ElementOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    const-string p2, "Missing value."

    .line 60
    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    iput-object p3, p0, Lnet/time4j/NavigationOperator;->value:Ljava/lang/Enum;

    .line 64
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    array-length p1, p1

    iput p1, p0, Lnet/time4j/NavigationOperator;->len:I

    .line 66
    new-instance p1, Lnet/time4j/NavigationOperator$1;

    invoke-direct {p1, p0}, Lnet/time4j/NavigationOperator$1;-><init>(Lnet/time4j/NavigationOperator;)V

    iput-object p1, p0, Lnet/time4j/NavigationOperator;->navTS:Lnet/time4j/engine/ChronoOperator;

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/NavigationOperator;Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lnet/time4j/NavigationOperator;->doApply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p0

    return-object p0
.end method

.method private delta(I)I
    .locals 2

    .line 140
    iget-object v0, p0, Lnet/time4j/NavigationOperator;->value:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 142
    invoke-virtual {p0}, Lnet/time4j/NavigationOperator;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 164
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/NavigationOperator;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    if-le v0, p1, :cond_0

    .line 160
    iget p1, p0, Lnet/time4j/NavigationOperator;->len:I

    goto :goto_0

    :pswitch_1
    if-ge v0, p1, :cond_0

    .line 155
    iget p1, p0, Lnet/time4j/NavigationOperator;->len:I

    goto :goto_1

    :pswitch_2
    if-lt v0, p1, :cond_0

    .line 150
    iget p1, p0, Lnet/time4j/NavigationOperator;->len:I

    :goto_0
    sub-int/2addr v0, p1

    goto :goto_2

    :pswitch_3
    if-gt v0, p1, :cond_0

    .line 145
    iget p1, p0, Lnet/time4j/NavigationOperator;->len:I

    :goto_1
    add-int/2addr v0, p1

    :cond_0
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doApply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 94
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    .line 96
    invoke-virtual {p0}, Lnet/time4j/NavigationOperator;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 98
    invoke-direct {p0, v1}, Lnet/time4j/NavigationOperator;->delta(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    return-object p1

    .line 103
    :cond_0
    sget-object v3, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    sub-int/2addr v2, v1

    int-to-long v1, v2

    .line 107
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v4

    invoke-virtual {p0}, Lnet/time4j/NavigationOperator;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/time4j/engine/TimeAxis;->getBaseUnit(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v4

    .line 105
    invoke-virtual {v0, v1, v2, v4}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v0

    .line 103
    invoke-virtual {p1, v3, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 114
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/NavigationOperator;->getType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/NavigationOperator;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    const-string p1, "setToPreviousOrSame"

    goto :goto_0

    :pswitch_1
    const-string p1, "setToNextOrSame"

    goto :goto_0

    :pswitch_2
    const-string p1, "setToPrevious"

    goto :goto_0

    :pswitch_3
    const-string p1, "setToNext"

    .line 131
    :goto_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "()-operation not supported on: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lnet/time4j/NavigationOperator;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/NavigationOperator;->apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lnet/time4j/NavigationOperator;->doApply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

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

    .line 88
    iget-object v0, p0, Lnet/time4j/NavigationOperator;->navTS:Lnet/time4j/engine/ChronoOperator;

    return-object v0
.end method
