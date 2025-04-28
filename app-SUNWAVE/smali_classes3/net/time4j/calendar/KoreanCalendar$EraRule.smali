.class Lnet/time4j/calendar/KoreanCalendar$EraRule;
.super Ljava/lang/Object;
.source "KoreanCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/KoreanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EraRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/KoreanCalendar;",
        "Lnet/time4j/calendar/KoreanEra;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/KoreanCalendar$1;)V
    .locals 0

    .line 864
    invoke-direct {p0}, Lnet/time4j/calendar/KoreanCalendar$EraRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 864
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$EraRule;->getChildAtCeiling(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/KoreanCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 912
    new-instance p1, Ljava/lang/AbstractMethodError;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 864
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$EraRule;->getChildAtFloor(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/KoreanCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 907
    new-instance p1, Ljava/lang/AbstractMethodError;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 864
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$EraRule;->getMaximum(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/calendar/KoreanEra;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/calendar/KoreanEra;
    .locals 0

    .line 881
    sget-object p1, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 864
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$EraRule;->getMinimum(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/calendar/KoreanEra;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/calendar/KoreanEra;
    .locals 0

    .line 876
    sget-object p1, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 864
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$EraRule;->getValue(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/calendar/KoreanEra;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/calendar/KoreanEra;
    .locals 0

    .line 871
    sget-object p1, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 864
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    check-cast p2, Lnet/time4j/calendar/KoreanEra;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/KoreanCalendar$EraRule;->isValid(Lnet/time4j/calendar/KoreanCalendar;Lnet/time4j/calendar/KoreanEra;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/KoreanCalendar;Lnet/time4j/calendar/KoreanEra;)Z
    .locals 0

    .line 889
    sget-object p1, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 864
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    check-cast p2, Lnet/time4j/calendar/KoreanEra;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/KoreanCalendar$EraRule;->withValue(Lnet/time4j/calendar/KoreanCalendar;Lnet/time4j/calendar/KoreanEra;Z)Lnet/time4j/calendar/KoreanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/KoreanCalendar;Lnet/time4j/calendar/KoreanEra;Z)Lnet/time4j/calendar/KoreanCalendar;
    .locals 1

    .line 898
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/KoreanCalendar$EraRule;->isValid(Lnet/time4j/calendar/KoreanCalendar;Lnet/time4j/calendar/KoreanEra;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p1

    .line 901
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Korean era: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
