.class final Lnet/time4j/calendar/HistoricCalendar$1;
.super Lnet/time4j/calendar/service/StdEnumDateElement;
.source "HistoricCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/service/StdEnumDateElement<",
        "Lnet/time4j/Month;",
        "Lnet/time4j/calendar/HistoricCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;CLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V
    .locals 0

    .line 298
    invoke-direct/range {p0 .. p6}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;CLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    return-void
.end method


# virtual methods
.method protected getCalendarType(Lnet/time4j/engine/AttributeQuery;)Ljava/lang/String;
    .locals 0

    const-string p1, "iso8601"

    return-object p1
.end method
