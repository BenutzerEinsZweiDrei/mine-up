.class final Lnet/time4j/DateOperator;
.super Lnet/time4j/ElementOperator;
.source "DateOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/ElementOperator<",
        "Lnet/time4j/PlainDate;",
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

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/DateOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Object;)V

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

    .line 68
    invoke-direct {p0, p1, p2}, Lnet/time4j/ElementOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    packed-switch p2, :pswitch_data_0

    .line 96
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/DateOperator;->getType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 93
    :pswitch_0
    invoke-static {p1, p3}, Lnet/time4j/DateOperator;->lenient(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/DateOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-static {p1}, Lnet/time4j/engine/StdOperator;->atCeiling(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/DateOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 87
    :pswitch_2
    invoke-static {p1}, Lnet/time4j/engine/StdOperator;->atFloor(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/DateOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 84
    :pswitch_3
    invoke-static {p1}, Lnet/time4j/engine/StdOperator;->incremented(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/DateOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 81
    :pswitch_4
    invoke-static {p1}, Lnet/time4j/engine/StdOperator;->decremented(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/DateOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 78
    :pswitch_5
    invoke-static {p1}, Lnet/time4j/engine/StdOperator;->maximized(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/DateOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 75
    :pswitch_6
    invoke-static {p1}, Lnet/time4j/engine/StdOperator;->minimized(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/DateOperator;->opDelegate:Ljava/lang/Object;

    goto :goto_0

    .line 72
    :pswitch_7
    invoke-static {p1, p3}, Lnet/time4j/DateOperator;->newValue(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/DateOperator;->opDelegate:Ljava/lang/Object;

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

    .line 135
    invoke-interface {p0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 136
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

    .line 125
    invoke-interface {p0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    invoke-static {v0, p0}, Lnet/time4j/engine/StdOperator;->newValue(Ljava/lang/Object;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/time4j/ValueOperator;->of(Lnet/time4j/engine/ChronoOperator;Ljava/lang/Object;)Lnet/time4j/ValueOperator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/DateOperator;->apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 1

    .line 107
    iget-object v0, p0, Lnet/time4j/DateOperator;->opDelegate:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/engine/ChronoOperator;

    .line 108
    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 116
    iget-object v0, p0, Lnet/time4j/DateOperator;->opDelegate:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/engine/ChronoOperator;

    return-object v0
.end method
