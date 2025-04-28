.class final Lnet/time4j/TimeOperator;
.super Lnet/time4j/ElementOperator;
.source "TimeOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/ElementOperator<",
        "Lnet/time4j/PlainTime;",
        ">;"
    }
.end annotation


# instance fields
.field private final opDelegate:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/TimeOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Lnet/time4j/ElementOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    packed-switch p2, :pswitch_data_0

    .line 97
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/TimeOperator;->getType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 94
    :pswitch_0
    invoke-static {p1, p3}, Lnet/time4j/TimeOperator;->lenient(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/TimeOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x1

    .line 91
    invoke-static {p1, p2}, Lnet/time4j/TimeOperator;->child(Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/TimeOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    const/4 p2, 0x0

    .line 88
    invoke-static {p1, p2}, Lnet/time4j/TimeOperator;->child(Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/TimeOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 85
    :pswitch_3
    invoke-static {p1}, Lnet/time4j/engine/StdOperator;->incremented(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/TimeOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 82
    :pswitch_4
    invoke-static {p1}, Lnet/time4j/engine/StdOperator;->decremented(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/TimeOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 79
    :pswitch_5
    invoke-static {p1}, Lnet/time4j/engine/StdOperator;->maximized(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/TimeOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 76
    :pswitch_6
    invoke-static {p1}, Lnet/time4j/engine/StdOperator;->minimized(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/TimeOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 73
    :pswitch_7
    invoke-static {p1, p3}, Lnet/time4j/TimeOperator;->newValue(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/TimeOperator;->opDelegate:Ljava/lang/Object;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static child(Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;Z)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 146
    invoke-interface {p0}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MILLI_OF_SECOND"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "MILLI_OF_DAY"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "MICRO_OF_SECOND"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "MICRO_OF_DAY"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "NANO_OF_SECOND"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NANO_OF_DAY"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 166
    invoke-static {p0}, Lnet/time4j/engine/StdOperator;->atCeiling(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p0

    return-object p0

    .line 168
    :cond_3
    invoke-static {p0}, Lnet/time4j/engine/StdOperator;->atFloor(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p0

    return-object p0

    .line 162
    :cond_4
    :goto_0
    new-instance p0, Lnet/time4j/FractionOperator;

    const/16 v0, 0x39

    invoke-direct {p0, v0, p1}, Lnet/time4j/FractionOperator;-><init>(CZ)V

    return-object p0

    .line 157
    :cond_5
    :goto_1
    new-instance p0, Lnet/time4j/FractionOperator;

    const/16 v0, 0x36

    invoke-direct {p0, v0, p1}, Lnet/time4j/FractionOperator;-><init>(CZ)V

    return-object p0

    .line 152
    :cond_6
    :goto_2
    new-instance p0, Lnet/time4j/FractionOperator;

    const/16 v0, 0x33

    invoke-direct {p0, v0, p1}, Lnet/time4j/FractionOperator;-><init>(CZ)V

    return-object p0
.end method

.method private static lenient(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 136
    invoke-interface {p0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    invoke-static {v0, p0}, Lnet/time4j/engine/StdOperator;->setLenient(Ljava/lang/Object;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/time4j/ValueOperator;->of(Lnet/time4j/engine/ChronoOperator;Ljava/lang/Object;)Lnet/time4j/ValueOperator;

    move-result-object p0

    return-object p0
.end method

.method private static newValue(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 126
    invoke-interface {p0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    invoke-static {v0, p0}, Lnet/time4j/engine/StdOperator;->newValue(Ljava/lang/Object;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/time4j/ValueOperator;->of(Lnet/time4j/engine/ChronoOperator;Ljava/lang/Object;)Lnet/time4j/ValueOperator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/TimeOperator;->apply(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;
    .locals 1

    .line 108
    iget-object v0, p0, Lnet/time4j/TimeOperator;->opDelegate:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/engine/ChronoOperator;

    .line 109
    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

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

    .line 117
    iget-object v0, p0, Lnet/time4j/TimeOperator;->opDelegate:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/engine/ChronoOperator;

    return-object v0
.end method
