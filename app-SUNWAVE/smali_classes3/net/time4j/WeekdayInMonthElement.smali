.class final Lnet/time4j/WeekdayInMonthElement;
.super Lnet/time4j/AbstractDateElement;
.source "WeekdayInMonthElement.java"

# interfaces
.implements Lnet/time4j/OrdinalWeekdayElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/WeekdayInMonthElement$SpecialOperator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/AbstractDateElement<",
        "Ljava/lang/Integer;",
        ">;",
        "Lnet/time4j/OrdinalWeekdayElement;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lnet/time4j/WeekdayInMonthElement;

.field private static final LAST:I = 0x5

.field private static final serialVersionUID:J = -0x21006b4eb69f780eL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lnet/time4j/WeekdayInMonthElement;

    invoke-direct {v0}, Lnet/time4j/WeekdayInMonthElement;-><init>()V

    sput-object v0, Lnet/time4j/WeekdayInMonthElement;->INSTANCE:Lnet/time4j/WeekdayInMonthElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "WEEKDAY_IN_MONTH"

    .line 58
    invoke-direct {p0, v0}, Lnet/time4j/AbstractDateElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 169
    sget-object v0, Lnet/time4j/WeekdayInMonthElement;->INSTANCE:Lnet/time4j/WeekdayInMonthElement;

    return-object v0
.end method

.method private setTo(ILnet/time4j/Weekday;)Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;

    invoke-direct {v0, p1, p2}, Lnet/time4j/WeekdayInMonthElement$SpecialOperator;-><init>(ILnet/time4j/Weekday;)V

    return-object v0
.end method


# virtual methods
.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x5

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lnet/time4j/WeekdayInMonthElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lnet/time4j/WeekdayInMonthElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x46

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 67
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setToFirst(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 119
    invoke-direct {p0, v0, p1}, Lnet/time4j/WeekdayInMonthElement;->setTo(ILnet/time4j/Weekday;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method

.method public setToFourth(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 140
    invoke-direct {p0, v0, p1}, Lnet/time4j/WeekdayInMonthElement;->setTo(ILnet/time4j/Weekday;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method

.method public setToLast(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 147
    invoke-direct {p0, v0, p1}, Lnet/time4j/WeekdayInMonthElement;->setTo(ILnet/time4j/Weekday;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method

.method public setToSecond(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 126
    invoke-direct {p0, v0, p1}, Lnet/time4j/WeekdayInMonthElement;->setTo(ILnet/time4j/Weekday;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method

.method public setToThird(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 133
    invoke-direct {p0, v0, p1}, Lnet/time4j/WeekdayInMonthElement;->setTo(ILnet/time4j/Weekday;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method
