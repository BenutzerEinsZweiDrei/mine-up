.class Lnet/time4j/YOWElement$YOWRollingAdjuster$1;
.super Ljava/lang/Object;
.source "YOWElement.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/YOWElement$YOWRollingAdjuster;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "Lnet/time4j/PlainTimestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/YOWElement$YOWRollingAdjuster;


# direct methods
.method constructor <init>(Lnet/time4j/YOWElement$YOWRollingAdjuster;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lnet/time4j/YOWElement$YOWRollingAdjuster$1;->this$0:Lnet/time4j/YOWElement$YOWRollingAdjuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 250
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/YOWElement$YOWRollingAdjuster$1;->apply(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;
    .locals 3

    .line 253
    invoke-static {}, Lnet/time4j/YOWElement;->unitRule()Lnet/time4j/engine/UnitRule;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lnet/time4j/YOWElement$YOWRollingAdjuster$1;->this$0:Lnet/time4j/YOWElement$YOWRollingAdjuster;

    .line 256
    invoke-static {v1}, Lnet/time4j/YOWElement$YOWRollingAdjuster;->access$300(Lnet/time4j/YOWElement$YOWRollingAdjuster;)J

    move-result-wide v1

    .line 254
    invoke-interface {v0, p1, v1, v2}, Lnet/time4j/engine/UnitRule;->addTo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    return-object p1
.end method
