.class final enum Lnet/time4j/format/expert/TimezoneElement;
.super Ljava/lang/Enum;
.source "TimezoneElement.java"

# interfaces
.implements Lnet/time4j/engine/ChronoElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/format/expert/TimezoneElement;",
        ">;",
        "Lnet/time4j/engine/ChronoElement<",
        "Lnet/time4j/tz/TZID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/format/expert/TimezoneElement;

.field public static final enum TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

.field public static final enum TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Lnet/time4j/format/expert/TimezoneElement;

    const-string v1, "TIMEZONE_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/format/expert/TimezoneElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    .line 45
    new-instance v1, Lnet/time4j/format/expert/TimezoneElement;

    const-string v3, "TIMEZONE_OFFSET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/format/expert/TimezoneElement;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/format/expert/TimezoneElement;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 38
    sput-object v3, Lnet/time4j/format/expert/TimezoneElement;->$VALUES:[Lnet/time4j/format/expert/TimezoneElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/format/expert/TimezoneElement;
    .locals 1

    .line 38
    const-class v0, Lnet/time4j/format/expert/TimezoneElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/format/expert/TimezoneElement;

    return-object p0
.end method

.method public static values()[Lnet/time4j/format/expert/TimezoneElement;
    .locals 1

    .line 38
    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->$VALUES:[Lnet/time4j/format/expert/TimezoneElement;

    invoke-virtual {v0}, [Lnet/time4j/format/expert/TimezoneElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/format/expert/TimezoneElement;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/expert/TimezoneElement;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 0

    .line 72
    invoke-interface {p1}, Lnet/time4j/engine/ChronoDisplay;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object p1

    .line 73
    invoke-interface {p2}, Lnet/time4j/engine/ChronoDisplay;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object p2

    .line 75
    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lnet/time4j/format/expert/TimezoneElement;->getDefaultMaximum()Lnet/time4j/tz/TZID;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/tz/TZID;
    .locals 2

    .line 99
    sget-object v0, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lnet/time4j/format/expert/TimezoneElement;->getDefaultMinimum()Lnet/time4j/tz/TZID;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/tz/TZID;
    .locals 2

    .line 87
    sget-object v0, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 142
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    const-string v0, "L_zone"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lnet/time4j/format/expert/TimezoneElement;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getSymbol()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    .line 52
    const-class v0, Lnet/time4j/tz/TZID;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLenient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
