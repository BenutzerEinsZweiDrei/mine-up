.class Lnet/time4j/Weekmodel$1;
.super Ljava/lang/Object;
.source "Weekmodel.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/Weekmodel;-><init>(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Lnet/time4j/base/GregorianDate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/Weekmodel;

.field final synthetic val$endOfWeekend:Lnet/time4j/Weekday;

.field final synthetic val$startOfWeekend:Lnet/time4j/Weekday;


# direct methods
.method constructor <init>(Lnet/time4j/Weekmodel;Lnet/time4j/Weekday;Lnet/time4j/Weekday;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lnet/time4j/Weekmodel$1;->this$0:Lnet/time4j/Weekmodel;

    iput-object p2, p0, Lnet/time4j/Weekmodel$1;->val$startOfWeekend:Lnet/time4j/Weekday;

    iput-object p3, p0, Lnet/time4j/Weekmodel$1;->val$endOfWeekend:Lnet/time4j/Weekday;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 212
    check-cast p1, Lnet/time4j/base/GregorianDate;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$1;->test(Lnet/time4j/base/GregorianDate;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/base/GregorianDate;)Z
    .locals 2

    .line 215
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v0

    .line 216
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v1

    .line 217
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result p1

    .line 219
    invoke-static {v0, v1, p1}, Lnet/time4j/base/GregorianMath;->getDayOfWeek(III)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lnet/time4j/Weekmodel$1;->val$startOfWeekend:Lnet/time4j/Weekday;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lnet/time4j/Weekmodel$1;->val$endOfWeekend:Lnet/time4j/Weekday;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
