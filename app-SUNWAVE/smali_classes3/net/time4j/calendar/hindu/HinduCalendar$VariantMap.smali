.class Lnet/time4j/calendar/hindu/HinduCalendar$VariantMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "HinduCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/hindu/HinduCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariantMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Lnet/time4j/calendar/hindu/HinduCS;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1442
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/hindu/HinduCalendar$1;)V
    .locals 0

    .line 1442
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduCalendar$VariantMap;-><init>()V

    return-void
.end method


# virtual methods
.method accept(Lnet/time4j/calendar/hindu/HinduVariant;)V
    .locals 1

    .line 1465
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduVariant;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$VariantMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1442
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$VariantMap;->get(Ljava/lang/Object;)Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lnet/time4j/calendar/hindu/HinduCS;
    .locals 1

    .line 1449
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/hindu/HinduCS;

    if-nez v0, :cond_0

    .line 1452
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1453
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduVariant;->from(Ljava/lang/String;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    .line 1454
    invoke-virtual {p0, p1, v0}, Lnet/time4j/calendar/hindu/HinduCalendar$VariantMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/hindu/HinduCS;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method
