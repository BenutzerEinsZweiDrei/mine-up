.class public final enum Lnet/time4j/engine/FlagElement;
.super Ljava/lang/Enum;
.source "FlagElement.java"

# interfaces
.implements Lnet/time4j/engine/ChronoElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/engine/FlagElement;",
        ">;",
        "Lnet/time4j/engine/ChronoElement<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/engine/FlagElement;

.field public static final enum DAYLIGHT_SAVING:Lnet/time4j/engine/FlagElement;

.field public static final enum LEAP_SECOND:Lnet/time4j/engine/FlagElement;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 49
    new-instance v0, Lnet/time4j/engine/FlagElement;

    const-string v1, "LEAP_SECOND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/engine/FlagElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/engine/FlagElement;->LEAP_SECOND:Lnet/time4j/engine/FlagElement;

    .line 57
    new-instance v1, Lnet/time4j/engine/FlagElement;

    const-string v3, "DAYLIGHT_SAVING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/engine/FlagElement;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/engine/FlagElement;->DAYLIGHT_SAVING:Lnet/time4j/engine/FlagElement;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/engine/FlagElement;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 38
    sput-object v3, Lnet/time4j/engine/FlagElement;->$VALUES:[Lnet/time4j/engine/FlagElement;

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

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/engine/FlagElement;
    .locals 1

    .line 38
    const-class v0, Lnet/time4j/engine/FlagElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/engine/FlagElement;

    return-object p0
.end method

.method public static values()[Lnet/time4j/engine/FlagElement;
    .locals 1

    .line 38
    sget-object v0, Lnet/time4j/engine/FlagElement;->$VALUES:[Lnet/time4j/engine/FlagElement;

    invoke-virtual {v0}, [Lnet/time4j/engine/FlagElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/engine/FlagElement;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/FlagElement;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 0

    .line 81
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    .line 82
    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getDefaultMaximum()Ljava/lang/Boolean;
    .locals 1

    .line 97
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lnet/time4j/engine/FlagElement;->getDefaultMaximum()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Boolean;
    .locals 1

    .line 90
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lnet/time4j/engine/FlagElement;->getDefaultMinimum()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 125
    invoke-virtual {p0}, Lnet/time4j/engine/FlagElement;->name()Ljava/lang/String;

    move-result-object p1

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 64
    const-class v0, Ljava/lang/Boolean;

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
