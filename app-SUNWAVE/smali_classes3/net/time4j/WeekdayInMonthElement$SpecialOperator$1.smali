.class Lnet/time4j/WeekdayInMonthElement$SpecialOperator$1;
.super Ljava/lang/Object;
.source "WeekdayInMonthElement.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/WeekdayInMonthElement$SpecialOperator;-><init>(ILnet/time4j/Weekday;)V
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
.field final synthetic this$0:Lnet/time4j/WeekdayInMonthElement$SpecialOperator;


# direct methods
.method constructor <init>(Lnet/time4j/WeekdayInMonthElement$SpecialOperator;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lnet/time4j/WeekdayInMonthElement$SpecialOperator$1;->this$0:Lnet/time4j/WeekdayInMonthElement$SpecialOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/WeekdayInMonthElement$SpecialOperator$1;->apply(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;
    .locals 1

    .line 203
    iget-object v0, p0, Lnet/time4j/WeekdayInMonthElement$SpecialOperator$1;->this$0:Lnet/time4j/WeekdayInMonthElement$SpecialOperator;

    invoke-static {v0, p1}, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;->access$000(Lnet/time4j/WeekdayInMonthElement$SpecialOperator;Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    return-object p1
.end method
