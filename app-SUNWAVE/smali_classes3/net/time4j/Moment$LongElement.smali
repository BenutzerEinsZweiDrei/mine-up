.class final enum Lnet/time4j/Moment$LongElement;
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
    name = "LongElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/Moment$LongElement;",
        ">;",
        "Lnet/time4j/engine/ChronoElement<",
        "Ljava/lang/Long;",
        ">;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/Moment;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/Moment$LongElement;

.field public static final enum POSIX_TIME:Lnet/time4j/Moment$LongElement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2680
    new-instance v0, Lnet/time4j/Moment$LongElement;

    const-string v1, "POSIX_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/Moment$LongElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/Moment$LongElement;->POSIX_TIME:Lnet/time4j/Moment$LongElement;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/time4j/Moment$LongElement;

    aput-object v0, v1, v2

    .line 2675
    sput-object v1, Lnet/time4j/Moment$LongElement;->$VALUES:[Lnet/time4j/Moment$LongElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2675
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/Moment$LongElement;
    .locals 1

    .line 2675
    const-class v0, Lnet/time4j/Moment$LongElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment$LongElement;

    return-object p0
.end method

.method public static values()[Lnet/time4j/Moment$LongElement;
    .locals 1

    .line 2675
    sget-object v0, Lnet/time4j/Moment$LongElement;->$VALUES:[Lnet/time4j/Moment$LongElement;

    invoke-virtual {v0}, [Lnet/time4j/Moment$LongElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/Moment$LongElement;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2675
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment$LongElement;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 0

    .line 2704
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2675
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$LongElement;->getChildAtCeiling(Lnet/time4j/Moment;)Lnet/time4j/engine/ChronoElement;

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

    .line 2814
    sget-object p1, Lnet/time4j/Moment$IntElement;->FRACTION:Lnet/time4j/Moment$IntElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2675
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$LongElement;->getChildAtFloor(Lnet/time4j/Moment;)Lnet/time4j/engine/ChronoElement;

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

    .line 2807
    sget-object p1, Lnet/time4j/Moment$IntElement;->FRACTION:Lnet/time4j/Moment$IntElement;

    return-object p1
.end method

.method public getDefaultMaximum()Ljava/lang/Long;
    .locals 2

    .line 2718
    invoke-static {}, Lnet/time4j/Moment;->access$1300()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 2675
    invoke-virtual {p0}, Lnet/time4j/Moment$LongElement;->getDefaultMaximum()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Long;
    .locals 2

    .line 2711
    invoke-static {}, Lnet/time4j/Moment;->access$1200()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 2675
    invoke-virtual {p0}, Lnet/time4j/Moment$LongElement;->getDefaultMinimum()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 2746
    invoke-virtual {p0}, Lnet/time4j/Moment$LongElement;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/Moment;)Ljava/lang/Long;
    .locals 2

    .line 2767
    invoke-static {}, Lnet/time4j/Moment;->access$1300()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2675
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$LongElement;->getMaximum(Lnet/time4j/Moment;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/Moment;)Ljava/lang/Long;
    .locals 2

    .line 2760
    invoke-static {}, Lnet/time4j/Moment;->access$1200()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2675
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$LongElement;->getMinimum(Lnet/time4j/Moment;)Ljava/lang/Long;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2687
    const-class v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getValue(Lnet/time4j/Moment;)Ljava/lang/Long;
    .locals 2

    .line 2753
    invoke-virtual {p1}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2675
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$LongElement;->getValue(Lnet/time4j/Moment;)Ljava/lang/Long;

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

    .line 2675
    check-cast p1, Lnet/time4j/Moment;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment$LongElement;->isValid(Lnet/time4j/Moment;Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/Moment;Ljava/lang/Long;)Z
    .locals 4

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 2781
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2782
    invoke-static {}, Lnet/time4j/Moment;->access$1200()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-ltz p2, :cond_1

    invoke-static {}, Lnet/time4j/Moment;->access$1300()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2675
    check-cast p1, Lnet/time4j/Moment;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Moment$LongElement;->withValue(Lnet/time4j/Moment;Ljava/lang/Long;Z)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/Moment;Ljava/lang/Long;Z)Lnet/time4j/Moment;
    .locals 1

    if-eqz p2, :cond_0

    .line 2798
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 2799
    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    sget-object v0, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 2797
    invoke-static {p2, p3, p1, v0}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 2794
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing elapsed seconds."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
