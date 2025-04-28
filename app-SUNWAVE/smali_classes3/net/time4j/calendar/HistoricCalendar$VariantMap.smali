.class Lnet/time4j/calendar/HistoricCalendar$VariantMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "HistoricCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariantMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Lnet/time4j/engine/CalendarSystem<",
        "Lnet/time4j/calendar/HistoricCalendar;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1069
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HistoricCalendar$1;)V
    .locals 0

    .line 1069
    invoke-direct {p0}, Lnet/time4j/calendar/HistoricCalendar$VariantMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1069
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$VariantMap;->get(Ljava/lang/Object;)Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lnet/time4j/engine/CalendarSystem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lnet/time4j/engine/CalendarSystem<",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ">;"
        }
    .end annotation

    .line 1077
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/CalendarSystem;

    if-nez v0, :cond_0

    .line 1080
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1083
    :try_start_0
    new-instance v0, Lnet/time4j/calendar/HistoricCalendar$Transformer;

    invoke-static {p1}, Lnet/time4j/history/ChronoHistory;->from(Ljava/lang/String;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/calendar/HistoricCalendar$Transformer;-><init>(Lnet/time4j/history/ChronoHistory;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    invoke-virtual {p0, p1, v0}, Lnet/time4j/calendar/HistoricCalendar$VariantMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/CalendarSystem;

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    return-object v0
.end method
