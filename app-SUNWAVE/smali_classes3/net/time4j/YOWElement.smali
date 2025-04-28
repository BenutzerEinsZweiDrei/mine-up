.class final Lnet/time4j/YOWElement;
.super Lnet/time4j/AbstractDateElement;
.source "YOWElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/YOWElement$ERule;,
        Lnet/time4j/YOWElement$URule;,
        Lnet/time4j/YOWElement$YOWRollingAdjuster;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/AbstractDateElement<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lnet/time4j/YOWElement;

.field private static final U_RULE:Lnet/time4j/engine/UnitRule;

.field private static final serialVersionUID:J = -0x5fdba1420201c0f4L


# instance fields
.field private final transient nextAdjuster:Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field private final transient previousAdjuster:Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lnet/time4j/YOWElement$URule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/YOWElement$URule;-><init>(Lnet/time4j/YOWElement$1;)V

    sput-object v0, Lnet/time4j/YOWElement;->U_RULE:Lnet/time4j/engine/UnitRule;

    .line 53
    new-instance v0, Lnet/time4j/YOWElement;

    const-string v1, "YEAR_OF_WEEKDATE"

    invoke-direct {v0, v1}, Lnet/time4j/YOWElement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/YOWElement;->INSTANCE:Lnet/time4j/YOWElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 65
    invoke-direct {p0, p1}, Lnet/time4j/AbstractDateElement;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance p1, Lnet/time4j/YOWElement$YOWRollingAdjuster;

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lnet/time4j/YOWElement$YOWRollingAdjuster;-><init>(JLnet/time4j/YOWElement$1;)V

    iput-object p1, p0, Lnet/time4j/YOWElement;->previousAdjuster:Lnet/time4j/ElementOperator;

    .line 68
    new-instance p1, Lnet/time4j/YOWElement$YOWRollingAdjuster;

    const-wide/16 v0, 0x1

    invoke-direct {p1, v0, v1, v2}, Lnet/time4j/YOWElement$YOWRollingAdjuster;-><init>(JLnet/time4j/YOWElement$1;)V

    iput-object p1, p0, Lnet/time4j/YOWElement;->nextAdjuster:Lnet/time4j/ElementOperator;

    return-void
.end method

.method static synthetic access$400(Lnet/time4j/PlainDate;)I
    .locals 0

    .line 42
    invoke-static {p0}, Lnet/time4j/YOWElement;->getWeekOfYear(Lnet/time4j/PlainDate;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lnet/time4j/PlainDate;I)I
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lnet/time4j/YOWElement;->getFirstCalendarWeekAsDayOfYear(Lnet/time4j/PlainDate;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lnet/time4j/PlainDate;I)I
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lnet/time4j/YOWElement;->getLengthOfYear(Lnet/time4j/PlainDate;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(I)I
    .locals 0

    .line 42
    invoke-static {p0}, Lnet/time4j/YOWElement;->getFirstCalendarWeekAsDayOfYear(I)I

    move-result p0

    return p0
.end method

.method static elementRule(Ljava/lang/Class;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance p0, Lnet/time4j/YOWElement$ERule;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/time4j/YOWElement$ERule;-><init>(Lnet/time4j/YOWElement$1;)V

    return-object p0
.end method

.method private static getFirstCalendarWeekAsDayOfYear(I)I
    .locals 1

    const/4 v0, 0x1

    .line 174
    invoke-static {p0, v0, v0}, Lnet/time4j/base/GregorianMath;->getDayOfWeek(III)I

    move-result p0

    invoke-static {p0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object p0

    .line 175
    sget-object v0, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    invoke-virtual {p0, v0}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p0

    .line 177
    sget-object v0, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    .line 178
    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getMinimalDaysInFirstWeek()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x8

    if-gt p0, v0, :cond_0

    rsub-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    rsub-int/lit8 p0, p0, 0x9

    :goto_0
    return p0
.end method

.method private static getFirstCalendarWeekAsDayOfYear(Lnet/time4j/PlainDate;I)I
    .locals 0

    .line 165
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getYear()I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {p0}, Lnet/time4j/YOWElement;->getFirstCalendarWeekAsDayOfYear(I)I

    move-result p0

    return p0
.end method

.method private static getLengthOfYear(Lnet/time4j/PlainDate;I)I
    .locals 0

    .line 192
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getYear()I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {p0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16e

    goto :goto_0

    :cond_0
    const/16 p0, 0x16d

    :goto_0
    return p0
.end method

.method private static getWeekOfYear(Lnet/time4j/PlainDate;)I
    .locals 5

    .line 202
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result v0

    const/4 v1, 0x0

    .line 203
    invoke-static {p0, v1}, Lnet/time4j/YOWElement;->getFirstCalendarWeekAsDayOfYear(Lnet/time4j/PlainDate;I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v0, :cond_1

    sub-int v2, v0, v2

    .line 206
    div-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v3

    const/16 v4, 0x35

    if-lt v2, v4, :cond_0

    .line 210
    invoke-static {p0, v3}, Lnet/time4j/YOWElement;->getFirstCalendarWeekAsDayOfYear(Lnet/time4j/PlainDate;I)I

    move-result v4

    .line 211
    invoke-static {p0, v1}, Lnet/time4j/YOWElement;->getLengthOfYear(Lnet/time4j/PlainDate;I)I

    move-result p0

    add-int/2addr v4, p0

    if-gt v4, v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    const/4 v1, -0x1

    .line 219
    invoke-static {p0, v1}, Lnet/time4j/YOWElement;->getFirstCalendarWeekAsDayOfYear(Lnet/time4j/PlainDate;I)I

    move-result v2

    .line 220
    invoke-static {p0, v1}, Lnet/time4j/YOWElement;->getLengthOfYear(Lnet/time4j/PlainDate;I)I

    move-result p0

    add-int/2addr v0, p0

    sub-int/2addr v0, v2

    .line 221
    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    return v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 228
    sget-object v0, Lnet/time4j/YOWElement;->INSTANCE:Lnet/time4j/YOWElement;

    return-object v0
.end method

.method static unitRule()Lnet/time4j/engine/UnitRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>()",
            "Lnet/time4j/engine/UnitRule<",
            "TT;>;"
        }
    .end annotation

    .line 154
    sget-object v0, Lnet/time4j/YOWElement;->U_RULE:Lnet/time4j/engine/UnitRule;

    return-object v0
.end method


# virtual methods
.method public decremented()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lnet/time4j/YOWElement;->previousAdjuster:Lnet/time4j/ElementOperator;

    return-object v0
.end method

.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    .line 98
    sget-object v0, Lnet/time4j/PlainDate;->MAX_YEAR:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lnet/time4j/YOWElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    .line 91
    sget-object v0, Lnet/time4j/PlainDate;->MIN_YEAR:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lnet/time4j/YOWElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x59

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

    .line 77
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public incremented()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lnet/time4j/YOWElement;->nextAdjuster:Lnet/time4j/ElementOperator;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
