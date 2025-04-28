.class public abstract Lnet/time4j/format/DisplayElement;
.super Lnet/time4j/engine/BasicElement;
.source "DisplayElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/lang/Comparable<",
        "TV;>;>",
        "Lnet/time4j/engine/BasicElement<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final OTHER_DISPLAY_KEYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "YEAR_OF_DISPLAY"

    const-string v2, "L_year"

    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MONTH_AS_NUMBER"

    const-string v2, "L_month"

    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HOUR_FROM_0_TO_24"

    const-string v2, "L_hour"

    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DAY_OF_MONTH"

    const-string v2, "L_day"

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DAY_OF_DIVISION"

    .line 63
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/DisplayElement;->OTHER_DISPLAY_KEYS:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lnet/time4j/engine/BasicElement;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 98
    invoke-virtual {p0}, Lnet/time4j/format/DisplayElement;->getSymbol()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 137
    invoke-virtual {p0}, Lnet/time4j/format/DisplayElement;->name()Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v1, Lnet/time4j/format/DisplayElement;->OTHER_DISPLAY_KEYS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    :sswitch_0
    const-string v0, "L_second"

    goto :goto_0

    :sswitch_1
    const-string v0, "L_minute"

    goto :goto_0

    :sswitch_2
    const-string v0, "L_day"

    goto :goto_0

    :sswitch_3
    const-string v0, "L_year"

    goto :goto_0

    :sswitch_4
    const-string v0, "L_week"

    goto :goto_0

    :sswitch_5
    const-string v0, "L_quarter"

    goto :goto_0

    :sswitch_6
    const-string v0, "L_month"

    goto :goto_0

    :sswitch_7
    const-string v0, "L_hour"

    goto :goto_0

    :sswitch_8
    const-string v0, "L_era"

    goto :goto_0

    :sswitch_9
    const-string v0, "L_weekday"

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 144
    :goto_0
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    .line 145
    invoke-virtual {p0}, Lnet/time4j/format/DisplayElement;->name()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_9
        0x47 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4b -> :sswitch_7
        0x4d -> :sswitch_6
        0x51 -> :sswitch_5
        0x57 -> :sswitch_4
        0x59 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_9
        0x68 -> :sswitch_7
        0x6b -> :sswitch_7
        0x6d -> :sswitch_1
        0x73 -> :sswitch_0
        0x75 -> :sswitch_3
        0x77 -> :sswitch_4
        0x79 -> :sswitch_3
    .end sparse-switch
.end method
