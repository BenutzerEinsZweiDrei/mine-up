.class final Lnet/time4j/LongElement;
.super Lnet/time4j/AbstractTimeElement;
.source "LongElement.java"

# interfaces
.implements Lnet/time4j/ProportionalElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/AbstractTimeElement<",
        "Ljava/lang/Long;",
        ">;",
        "Lnet/time4j/ProportionalElement<",
        "Ljava/lang/Long;",
        "Lnet/time4j/PlainTime;",
        ">;"
    }
.end annotation


# static fields
.field static final DAY_OVERFLOW:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x524f1cda692a50bdL


# instance fields
.field private final transient defaultMax:Ljava/lang/Long;

.field private final transient defaultMin:Ljava/lang/Long;

.field private final transient rf:Lnet/time4j/engine/ChronoFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lnet/time4j/LongElement;

    invoke-direct {v0}, Lnet/time4j/LongElement;-><init>()V

    sput-object v0, Lnet/time4j/LongElement;->DAY_OVERFLOW:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const-string v1, "DAY_OVERFLOW"

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    .line 59
    invoke-direct/range {v0 .. v5}, Lnet/time4j/LongElement;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lnet/time4j/AbstractTimeElement;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/LongElement;->defaultMin:Ljava/lang/Long;

    .line 70
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/LongElement;->defaultMax:Ljava/lang/Long;

    .line 72
    new-instance p1, Lnet/time4j/ProportionalFunction;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lnet/time4j/ProportionalFunction;-><init>(Lnet/time4j/engine/ChronoElement;Z)V

    iput-object p1, p0, Lnet/time4j/LongElement;->rf:Lnet/time4j/engine/ChronoFunction;

    return-void
.end method

.method static create(Ljava/lang/String;JJ)Lnet/time4j/LongElement;
    .locals 7

    .line 167
    new-instance v6, Lnet/time4j/LongElement;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/time4j/LongElement;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lnet/time4j/LongElement;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/PlainTime;->lookupElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lnet/time4j/LongElement;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DAY_OVERFLOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lnet/time4j/LongElement;->DAY_OVERFLOW:Lnet/time4j/engine/ChronoElement;

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p0}, Lnet/time4j/LongElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getDefaultMaximum()Ljava/lang/Long;
    .locals 1

    .line 95
    iget-object v0, p0, Lnet/time4j/LongElement;->defaultMax:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lnet/time4j/LongElement;->getDefaultMaximum()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Long;
    .locals 1

    .line 88
    iget-object v0, p0, Lnet/time4j/LongElement;->defaultMin:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lnet/time4j/LongElement;->getDefaultMinimum()Ljava/lang/Long;

    move-result-object v0

    return-object v0
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

    .line 81
    const-class v0, Ljava/lang/Long;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ratio()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lnet/time4j/LongElement;->rf:Lnet/time4j/engine/ChronoFunction;

    return-object v0
.end method

.method public roundedDown(I)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lnet/time4j/RoundingOperator;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/RoundingOperator;-><init>(Lnet/time4j/ProportionalElement;Ljava/lang/Boolean;I)V

    return-object v0
.end method

.method public roundedHalf(I)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Lnet/time4j/RoundingOperator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/RoundingOperator;-><init>(Lnet/time4j/ProportionalElement;Ljava/lang/Boolean;I)V

    return-object v0
.end method

.method public roundedUp(I)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lnet/time4j/RoundingOperator;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/RoundingOperator;-><init>(Lnet/time4j/ProportionalElement;Ljava/lang/Boolean;I)V

    return-object v0
.end method

.method public bridge synthetic setLenient(Ljava/lang/Number;)Lnet/time4j/ElementOperator;
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Long;

    invoke-super {p0, p1}, Lnet/time4j/AbstractTimeElement;->setLenient(Ljava/lang/Comparable;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method
