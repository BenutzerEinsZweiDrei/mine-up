.class Lnet/time4j/AnnualDate$1;
.super Ljava/lang/Object;
.source "AnnualDate.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/AnnualDate;->asNextExactEvent()Lnet/time4j/engine/ChronoOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/AnnualDate;


# direct methods
.method constructor <init>(Lnet/time4j/AnnualDate;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lnet/time4j/AnnualDate$1;->this$0:Lnet/time4j/AnnualDate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$1;->apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 4

    .line 529
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    .line 530
    iget-object v1, p0, Lnet/time4j/AnnualDate$1;->this$0:Lnet/time4j/AnnualDate;

    invoke-virtual {v1}, Lnet/time4j/AnnualDate;->getMonth()Lnet/time4j/Month;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/Month;->getValue()I

    move-result v1

    .line 531
    iget-object v2, p0, Lnet/time4j/AnnualDate$1;->this$0:Lnet/time4j/AnnualDate;

    invoke-virtual {v2}, Lnet/time4j/AnnualDate;->getDayOfMonth()I

    move-result v2

    .line 532
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result p1

    if-gt v2, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/4 p1, 0x2

    if-ne v1, p1, :cond_2

    const/16 p1, 0x1d

    if-ne v2, p1, :cond_2

    .line 536
    :goto_0
    invoke-static {v0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-nez p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_2
    invoke-static {v0, v1, v2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method
