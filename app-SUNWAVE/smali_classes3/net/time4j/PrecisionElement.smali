.class Lnet/time4j/PrecisionElement;
.super Ljava/lang/Object;
.source "PrecisionElement.java"

# interfaces
.implements Lnet/time4j/engine/ChronoElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Ljava/lang/Comparable<",
        "TU;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoElement<",
        "TU;>;"
    }
.end annotation


# static fields
.field static final CLOCK_PRECISION:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation
.end field

.field static final TIME_PRECISION:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient max:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private final transient min:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Lnet/time4j/PrecisionElement;

    const-class v1, Lnet/time4j/ClockUnit;

    sget-object v2, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    sget-object v3, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-direct {v0, v1, v2, v3}, Lnet/time4j/PrecisionElement;-><init>(Ljava/lang/Class;Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lnet/time4j/PrecisionElement;->CLOCK_PRECISION:Lnet/time4j/engine/ChronoElement;

    .line 41
    new-instance v0, Lnet/time4j/PrecisionElement;

    const-class v1, Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3}, Lnet/time4j/PrecisionElement;-><init>(Ljava/lang/Class;Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lnet/time4j/PrecisionElement;->TIME_PRECISION:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TU;>;TU;TU;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lnet/time4j/PrecisionElement;->type:Ljava/lang/Class;

    .line 60
    iput-object p2, p0, Lnet/time4j/PrecisionElement;->min:Ljava/lang/Comparable;

    .line 61
    iput-object p3, p0, Lnet/time4j/PrecisionElement;->max:Ljava/lang/Comparable;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 153
    iget-object v0, p0, Lnet/time4j/PrecisionElement;->type:Ljava/lang/Class;

    const-class v1, Lnet/time4j/ClockUnit;

    if-ne v0, v1, :cond_0

    sget-object v0, Lnet/time4j/PrecisionElement;->CLOCK_PRECISION:Lnet/time4j/engine/ChronoElement;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/PrecisionElement;->TIME_PRECISION:Lnet/time4j/engine/ChronoElement;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PrecisionElement;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 2

    .line 115
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    .line 116
    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Comparable;

    .line 118
    iget-object v0, p0, Lnet/time4j/PrecisionElement;->type:Ljava/lang/Class;

    const-class v1, Lnet/time4j/ClockUnit;

    if-ne v0, v1, :cond_0

    .line 119
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 121
    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getDefaultMaximum()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lnet/time4j/PrecisionElement;->max:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lnet/time4j/PrecisionElement;->getDefaultMaximum()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lnet/time4j/PrecisionElement;->min:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lnet/time4j/PrecisionElement;->getDefaultMinimum()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lnet/time4j/PrecisionElement;->name()Ljava/lang/String;

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
            "TU;>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lnet/time4j/PrecisionElement;->type:Ljava/lang/Class;

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

    const/4 v0, 0x1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "PRECISION"

    return-object v0
.end method
