.class final enum Lnet/time4j/format/expert/FractionalElement;
.super Ljava/lang/Enum;
.source "FractionalElement.java"

# interfaces
.implements Lnet/time4j/engine/ChronoElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/format/expert/FractionalElement;",
        ">;",
        "Lnet/time4j/engine/ChronoElement<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/format/expert/FractionalElement;

.field public static final enum FRACTION:Lnet/time4j/format/expert/FractionalElement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lnet/time4j/format/expert/FractionalElement;

    const-string v1, "FRACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/format/expert/FractionalElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/format/expert/FractionalElement;->FRACTION:Lnet/time4j/format/expert/FractionalElement;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/time4j/format/expert/FractionalElement;

    aput-object v0, v1, v2

    .line 36
    sput-object v1, Lnet/time4j/format/expert/FractionalElement;->$VALUES:[Lnet/time4j/format/expert/FractionalElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/format/expert/FractionalElement;
    .locals 1

    .line 36
    const-class v0, Lnet/time4j/format/expert/FractionalElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/format/expert/FractionalElement;

    return-object p0
.end method

.method public static values()[Lnet/time4j/format/expert/FractionalElement;
    .locals 1

    .line 36
    sget-object v0, Lnet/time4j/format/expert/FractionalElement;->$VALUES:[Lnet/time4j/format/expert/FractionalElement;

    invoke-virtual {v0}, [Lnet/time4j/format/expert/FractionalElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/format/expert/FractionalElement;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/expert/FractionalElement;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 0

    .line 60
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lnet/time4j/format/expert/FractionalElement;->getDefaultMaximum()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Ljava/math/BigDecimal;
    .locals 1

    .line 70
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lnet/time4j/format/expert/FractionalElement;->getDefaultMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/math/BigDecimal;
    .locals 1

    .line 65
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-virtual {p0}, Lnet/time4j/format/expert/FractionalElement;->name()Ljava/lang/String;

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
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 47
    const-class v0, Ljava/math/BigDecimal;

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
