.class final enum Lnet/time4j/Moment$IntElement;
.super Ljava/lang/Enum;
.source "Moment.java"

# interfaces
.implements Lnet/time4j/engine/ChronoElement;
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IntElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/Moment$IntElement;",
        ">;",
        "Lnet/time4j/engine/ChronoElement<",
        "Ljava/lang/Integer;",
        ">;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/Moment;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/Moment$IntElement;

.field public static final enum FRACTION:Lnet/time4j/Moment$IntElement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2825
    new-instance v0, Lnet/time4j/Moment$IntElement;

    const-string v1, "FRACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/Moment$IntElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/Moment$IntElement;->FRACTION:Lnet/time4j/Moment$IntElement;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/time4j/Moment$IntElement;

    aput-object v0, v1, v2

    .line 2820
    sput-object v1, Lnet/time4j/Moment$IntElement;->$VALUES:[Lnet/time4j/Moment$IntElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2820
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/Moment$IntElement;
    .locals 1

    .line 2820
    const-class v0, Lnet/time4j/Moment$IntElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment$IntElement;

    return-object p0
.end method

.method public static values()[Lnet/time4j/Moment$IntElement;
    .locals 1

    .line 2820
    sget-object v0, Lnet/time4j/Moment$IntElement;->$VALUES:[Lnet/time4j/Moment$IntElement;

    invoke-virtual {v0}, [Lnet/time4j/Moment$IntElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/Moment$IntElement;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2820
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment$IntElement;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 0

    .line 2849
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2820
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$IntElement;->getChildAtCeiling(Lnet/time4j/Moment;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/Moment;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Moment;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2820
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$IntElement;->getChildAtFloor(Lnet/time4j/Moment;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/Moment;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Moment;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    const v0, 0x3b9ac9ff

    .line 2863
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 2820
    invoke-virtual {p0}, Lnet/time4j/Moment$IntElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 2856
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 2820
    invoke-virtual {p0}, Lnet/time4j/Moment$IntElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 2891
    invoke-virtual {p0}, Lnet/time4j/Moment$IntElement;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/Moment;)Ljava/lang/Integer;
    .locals 0

    .line 2912
    invoke-virtual {p0}, Lnet/time4j/Moment$IntElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2820
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$IntElement;->getMaximum(Lnet/time4j/Moment;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/Moment;)Ljava/lang/Integer;
    .locals 0

    .line 2905
    invoke-virtual {p0}, Lnet/time4j/Moment$IntElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2820
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$IntElement;->getMinimum(Lnet/time4j/Moment;)Ljava/lang/Integer;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2832
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue(Lnet/time4j/Moment;)Ljava/lang/Integer;
    .locals 0

    .line 2898
    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2820
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$IntElement;->getValue(Lnet/time4j/Moment;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
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

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2820
    check-cast p1, Lnet/time4j/Moment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment$IntElement;->isValid(Lnet/time4j/Moment;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/Moment;Ljava/lang/Integer;)Z
    .locals 1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 2926
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_1

    const v0, 0x3b9aca00

    if-ge p2, v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2820
    check-cast p1, Lnet/time4j/Moment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Moment$IntElement;->withValue(Lnet/time4j/Moment;Ljava/lang/Integer;Z)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/Moment;Ljava/lang/Integer;Z)Lnet/time4j/Moment;
    .locals 2

    if-eqz p2, :cond_1

    .line 2942
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2943
    sget-object p3, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    .line 2944
    invoke-virtual {p1, p3}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v0

    .line 2945
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    .line 2943
    invoke-static {v0, v1, p1, p2}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 2949
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v0

    .line 2950
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 2948
    invoke-static {v0, v1, p1, p2}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 2939
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing fraction value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
