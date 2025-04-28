.class public final enum Lnet/time4j/calendar/bahai/BadiEra;
.super Ljava/lang/Enum;
.source "BadiEra.java"

# interfaces
.implements Lnet/time4j/engine/CalendarEra;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/bahai/BadiEra;",
        ">;",
        "Lnet/time4j/engine/CalendarEra;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/bahai/BadiEra;

.field public static final enum BAHAI:Lnet/time4j/calendar/bahai/BadiEra;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Lnet/time4j/calendar/bahai/BadiEra;

    const-string v1, "BAHAI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/bahai/BadiEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/bahai/BadiEra;->BAHAI:Lnet/time4j/calendar/bahai/BadiEra;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/time4j/calendar/bahai/BadiEra;

    aput-object v0, v1, v2

    .line 44
    sput-object v1, Lnet/time4j/calendar/bahai/BadiEra;->$VALUES:[Lnet/time4j/calendar/bahai/BadiEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Lnet/time4j/format/TextAccessor;
    .locals 3

    .line 90
    sget-object v0, Lnet/time4j/calendar/bahai/BadiEra$1;->$SwitchMap$net$time4j$format$TextWidth:[I

    invoke-virtual {p1}, Lnet/time4j/format/TextWidth;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const-string p1, "n"

    goto :goto_0

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Lnet/time4j/format/TextWidth;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "a"

    goto :goto_0

    :cond_2
    const-string p1, "w"

    :goto_0
    const-string v0, "bahai"

    .line 105
    invoke-static {v0, p0}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p0

    .line 106
    const-class v0, Lnet/time4j/calendar/bahai/BadiEra;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "E"

    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/format/CalendarText;->getTextForms(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/bahai/BadiEra;
    .locals 1

    .line 44
    const-class v0, Lnet/time4j/calendar/bahai/BadiEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/bahai/BadiEra;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/bahai/BadiEra;
    .locals 1

    .line 44
    sget-object v0, Lnet/time4j/calendar/bahai/BadiEra;->$VALUES:[Lnet/time4j/calendar/bahai/BadiEra;

    invoke-virtual {v0}, [Lnet/time4j/calendar/bahai/BadiEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/bahai/BadiEra;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;
    .locals 0

    .line 78
    invoke-static {p1, p2}, Lnet/time4j/calendar/bahai/BadiEra;->accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
