.class public final enum Lnet/time4j/engine/ValidationElement;
.super Ljava/lang/Enum;
.source "ValidationElement.java"

# interfaces
.implements Lnet/time4j/engine/ChronoElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/engine/ValidationElement;",
        ">;",
        "Lnet/time4j/engine/ChronoElement<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/engine/ValidationElement;

.field public static final enum ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lnet/time4j/engine/ValidationElement;

    const-string v1, "ERROR_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/engine/ValidationElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/time4j/engine/ValidationElement;

    aput-object v0, v1, v2

    .line 41
    sput-object v1, Lnet/time4j/engine/ValidationElement;->$VALUES:[Lnet/time4j/engine/ValidationElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/engine/ValidationElement;
    .locals 1

    .line 41
    const-class v0, Lnet/time4j/engine/ValidationElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/engine/ValidationElement;

    return-object p0
.end method

.method public static values()[Lnet/time4j/engine/ValidationElement;
    .locals 1

    .line 41
    sget-object v0, Lnet/time4j/engine/ValidationElement;->$VALUES:[Lnet/time4j/engine/ValidationElement;

    invoke-virtual {v0}, [Lnet/time4j/engine/ValidationElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/engine/ValidationElement;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/ValidationElement;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 0

    .line 77
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    .line 78
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

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lnet/time4j/engine/ValidationElement;->getDefaultMaximum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Ljava/lang/String;
    .locals 1

    const v0, 0xffff

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lnet/time4j/engine/ValidationElement;->getDefaultMinimum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 121
    invoke-virtual {p0}, Lnet/time4j/engine/ValidationElement;->name()Ljava/lang/String;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    const-class v0, Ljava/lang/String;

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
