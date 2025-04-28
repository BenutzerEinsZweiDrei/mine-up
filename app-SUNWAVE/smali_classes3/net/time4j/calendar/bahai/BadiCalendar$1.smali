.class final Lnet/time4j/calendar/bahai/BadiCalendar$1;
.super Lnet/time4j/calendar/service/StdEnumDateElement;
.source "BadiCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/bahai/BadiCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/service/StdEnumDateElement<",
        "Lnet/time4j/calendar/bahai/BadiEra;",
        "Lnet/time4j/calendar/bahai/BadiCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V
    .locals 0

    .line 439
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    return-void
.end method


# virtual methods
.method protected accessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;Z)Lnet/time4j/format/TextAccessor;
    .locals 1

    .line 446
    sget-object p2, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p1, p2, p3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Locale;

    .line 447
    sget-object p3, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p1, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextWidth;

    .line 448
    invoke-static {p2, p1}, Lnet/time4j/calendar/bahai/BadiEra;->accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method
