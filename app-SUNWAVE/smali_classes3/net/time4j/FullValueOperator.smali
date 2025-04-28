.class final Lnet/time4j/FullValueOperator;
.super Lnet/time4j/ElementOperator;
.source "FullValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/ElementOperator<",
        "Lnet/time4j/PlainTime;",
        ">;"
    }
.end annotation


# static fields
.field static final NEXT_FULL_HOUR:Lnet/time4j/FullValueOperator;

.field static final NEXT_FULL_MINUTE:Lnet/time4j/FullValueOperator;

.field static final ROUNDING_FULL_HOUR:Lnet/time4j/FullValueOperator;

.field static final ROUNDING_FULL_MINUTE:Lnet/time4j/FullValueOperator;


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
    new-instance v0, Lnet/time4j/FullValueOperator;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lnet/time4j/FullValueOperator;-><init>(I)V

    sput-object v0, Lnet/time4j/FullValueOperator;->ROUNDING_FULL_HOUR:Lnet/time4j/FullValueOperator;

    .line 40
    new-instance v0, Lnet/time4j/FullValueOperator;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lnet/time4j/FullValueOperator;-><init>(I)V

    sput-object v0, Lnet/time4j/FullValueOperator;->ROUNDING_FULL_MINUTE:Lnet/time4j/FullValueOperator;

    .line 42
    new-instance v0, Lnet/time4j/FullValueOperator;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lnet/time4j/FullValueOperator;-><init>(I)V

    sput-object v0, Lnet/time4j/FullValueOperator;->NEXT_FULL_HOUR:Lnet/time4j/FullValueOperator;

    .line 44
    new-instance v0, Lnet/time4j/FullValueOperator;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lnet/time4j/FullValueOperator;-><init>(I)V

    sput-object v0, Lnet/time4j/FullValueOperator;->NEXT_FULL_MINUTE:Lnet/time4j/FullValueOperator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 54
    sget-object v0, Lnet/time4j/PlainTime;->COMPONENT:Lnet/time4j/WallTimeElement;

    invoke-direct {p0, v0, p1}, Lnet/time4j/ElementOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    .line 56
    new-instance p1, Lnet/time4j/FullValueOperator$1;

    invoke-direct {p1, p0}, Lnet/time4j/FullValueOperator$1;-><init>(Lnet/time4j/FullValueOperator;)V

    iput-object p1, p0, Lnet/time4j/FullValueOperator;->tsop:Lnet/time4j/engine/ChronoOperator;

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/FullValueOperator;Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lnet/time4j/FullValueOperator;->doApply(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
.end method

.method private doApply(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;
    .locals 9

    .line 92
    invoke-virtual {p1}, Lnet/time4j/PlainTime;->getHour()I

    move-result v0

    .line 93
    invoke-virtual {p1}, Lnet/time4j/PlainTime;->getMinute()I

    move-result v1

    .line 95
    invoke-virtual {p0}, Lnet/time4j/FullValueOperator;->getType()I

    move-result v2

    const/16 v3, 0x3c

    const/16 v4, 0x18

    const/16 v5, 0x19

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    .line 137
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/FullValueOperator;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    if-ne v0, v4, :cond_0

    move v0, v7

    move v7, v8

    goto :goto_0

    :cond_0
    add-int/2addr v1, v8

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v7, v1

    .line 135
    :goto_0
    invoke-static {v0, v7}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    :pswitch_1
    add-int/2addr v0, v8

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    move v8, v0

    .line 123
    :goto_1
    invoke-static {v8}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 105
    :pswitch_2
    invoke-virtual {p1}, Lnet/time4j/PlainTime;->getSecond()I

    move-result p1

    if-lt p1, v6, :cond_4

    if-ne v0, v4, :cond_3

    move v0, v7

    move v1, v8

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    move v1, v7

    .line 117
    :cond_4
    :goto_2
    invoke-static {v0, v1}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    :pswitch_3
    if-lt v1, v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_5

    move v0, v8

    .line 103
    :cond_5
    invoke-static {v0}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xd
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
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/FullValueOperator;->apply(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lnet/time4j/FullValueOperator;->doApply(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

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

    .line 86
    iget-object v0, p0, Lnet/time4j/FullValueOperator;->tsop:Lnet/time4j/engine/ChronoOperator;

    return-object v0
.end method
