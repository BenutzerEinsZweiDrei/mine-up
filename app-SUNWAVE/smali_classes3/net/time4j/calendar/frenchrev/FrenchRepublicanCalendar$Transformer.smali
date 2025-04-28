.class Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Transformer;
.super Ljava/lang/Object;
.source "FrenchRepublicanCalendar.java"

# interfaces
.implements Lnet/time4j/engine/CalendarSystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/CalendarSystem<",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V
    .locals 0

    .line 1613
    invoke-direct {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Transformer;-><init>()V

    return-void
.end method


# virtual methods
.method public getEras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 1651
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanEra;->REPUBLICAN:Lnet/time4j/calendar/frenchrev/FrenchRepublicanEra;

    .line 1652
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSinceUTC()J
    .locals 3

    .line 1643
    new-instance v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    const/16 v1, 0x4b2

    const/16 v2, 0x16e

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    .line 1644
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Transformer;->transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 2

    .line 1635
    new-instance v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    .line 1636
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Transformer;->transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 1613
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Transformer;->transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J
    .locals 2

    .line 1628
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$800()Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 1613
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Transformer;->transform(J)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 1

    .line 1621
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$800()Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->transform(J)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1
.end method
