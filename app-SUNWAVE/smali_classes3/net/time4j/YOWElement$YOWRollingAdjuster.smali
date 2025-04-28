.class Lnet/time4j/YOWElement$YOWRollingAdjuster;
.super Lnet/time4j/ElementOperator;
.source "YOWElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/YOWElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YOWRollingAdjuster"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/ElementOperator<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# instance fields
.field private final amount:J

.field private final yowTS:Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(J)V
    .locals 2

    .line 245
    sget-object v0, Lnet/time4j/YOWElement;->INSTANCE:Lnet/time4j/YOWElement;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lnet/time4j/ElementOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    .line 247
    iput-wide p1, p0, Lnet/time4j/YOWElement$YOWRollingAdjuster;->amount:J

    .line 249
    new-instance p1, Lnet/time4j/YOWElement$YOWRollingAdjuster$1;

    invoke-direct {p1, p0}, Lnet/time4j/YOWElement$YOWRollingAdjuster$1;-><init>(Lnet/time4j/YOWElement$YOWRollingAdjuster;)V

    iput-object p1, p0, Lnet/time4j/YOWElement$YOWRollingAdjuster;->yowTS:Lnet/time4j/engine/ChronoOperator;

    return-void
.end method

.method synthetic constructor <init>(JLnet/time4j/YOWElement$1;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1, p2}, Lnet/time4j/YOWElement$YOWRollingAdjuster;-><init>(J)V

    return-void
.end method

.method static synthetic access$300(Lnet/time4j/YOWElement$YOWRollingAdjuster;)J
    .locals 2

    .line 234
    iget-wide v0, p0, Lnet/time4j/YOWElement$YOWRollingAdjuster;->amount:J

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 234
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/YOWElement$YOWRollingAdjuster;->apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 3

    .line 267
    invoke-static {}, Lnet/time4j/YOWElement;->unitRule()Lnet/time4j/engine/UnitRule;

    move-result-object v0

    .line 268
    iget-wide v1, p0, Lnet/time4j/YOWElement$YOWRollingAdjuster;->amount:J

    invoke-interface {v0, p1, v1, v2}, Lnet/time4j/engine/UnitRule;->addTo(Ljava/lang/Object;J)Ljava/lang/Object;

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

    .line 275
    iget-object v0, p0, Lnet/time4j/YOWElement$YOWRollingAdjuster;->yowTS:Lnet/time4j/engine/ChronoOperator;

    return-object v0
.end method
