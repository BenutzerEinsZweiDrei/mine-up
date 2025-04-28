.class Lnet/time4j/CalendarOperator$1;
.super Ljava/lang/Object;
.source "CalendarOperator.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/CalendarOperator;-><init>(I)V
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
.field final synthetic this$0:Lnet/time4j/CalendarOperator;


# direct methods
.method constructor <init>(Lnet/time4j/CalendarOperator;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lnet/time4j/CalendarOperator$1;->this$0:Lnet/time4j/CalendarOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/CalendarOperator$1;->apply(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;
    .locals 2

    .line 65
    iget-object v0, p0, Lnet/time4j/CalendarOperator$1;->this$0:Lnet/time4j/CalendarOperator;

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/CalendarOperator;->access$000(Lnet/time4j/CalendarOperator;Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->with(Lnet/time4j/PlainDate;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method
