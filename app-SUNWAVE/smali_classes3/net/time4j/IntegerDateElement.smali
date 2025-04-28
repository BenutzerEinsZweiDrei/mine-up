.class final Lnet/time4j/IntegerDateElement;
.super Lnet/time4j/AbstractDateElement;
.source "IntegerDateElement.java"

# interfaces
.implements Lnet/time4j/ProportionalElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/AbstractDateElement<",
        "Ljava/lang/Integer;",
        ">;",
        "Lnet/time4j/ProportionalElement<",
        "Ljava/lang/Integer;",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# static fields
.field static final DAY_OF_MONTH:I = 0x10

.field static final DAY_OF_QUARTER:I = 0x12

.field static final DAY_OF_YEAR:I = 0x11

.field static final MONTH:I = 0xf

.field static final YEAR:I = 0xe

.field private static final serialVersionUID:J = -0x128e81377c0ccf52L


# instance fields
.field private final transient defaultMax:Ljava/lang/Integer;

.field private final transient defaultMin:Ljava/lang/Integer;

.field private final transient index:I

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

.field private final transient symbol:C


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;C)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lnet/time4j/AbstractDateElement;-><init>(Ljava/lang/String;)V

    .line 74
    iput p2, p0, Lnet/time4j/IntegerDateElement;->index:I

    .line 75
    iput-object p3, p0, Lnet/time4j/IntegerDateElement;->defaultMin:Ljava/lang/Integer;

    .line 76
    iput-object p4, p0, Lnet/time4j/IntegerDateElement;->defaultMax:Ljava/lang/Integer;

    .line 77
    iput-char p5, p0, Lnet/time4j/IntegerDateElement;->symbol:C

    .line 78
    new-instance p1, Lnet/time4j/ProportionalFunction;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lnet/time4j/ProportionalFunction;-><init>(Lnet/time4j/engine/ChronoElement;Z)V

    iput-object p1, p0, Lnet/time4j/IntegerDateElement;->rf:Lnet/time4j/engine/ChronoFunction;

    return-void
.end method

.method static create(Ljava/lang/String;IIIC)Lnet/time4j/IntegerDateElement;
    .locals 7

    .line 202
    new-instance v6, Lnet/time4j/IntegerDateElement;

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 206
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/time4j/IntegerDateElement;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;C)V

    return-object v6
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lnet/time4j/IntegerDateElement;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/PlainDate;->lookupElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p0}, Lnet/time4j/IntegerDateElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    .line 108
    iget-object v0, p0, Lnet/time4j/IntegerDateElement;->defaultMax:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lnet/time4j/IntegerDateElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    .line 101
    iget-object v0, p0, Lnet/time4j/IntegerDateElement;->defaultMin:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lnet/time4j/IntegerDateElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getIndex()I
    .locals 1

    .line 180
    iget v0, p0, Lnet/time4j/IntegerDateElement;->index:I

    return v0
.end method

.method public getSymbol()C
    .locals 1

    .line 94
    iget-char v0, p0, Lnet/time4j/IntegerDateElement;->symbol:C

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

    .line 87
    const-class v0, Ljava/lang/Integer;

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

    .line 129
    iget-object v0, p0, Lnet/time4j/IntegerDateElement;->rf:Lnet/time4j/engine/ChronoFunction;

    return-object v0
.end method

.method public roundedDown(I)Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 158
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
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 147
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
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Lnet/time4j/RoundingOperator;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/RoundingOperator;-><init>(Lnet/time4j/ProportionalElement;Ljava/lang/Boolean;I)V

    return-object v0
.end method

.method public bridge synthetic setLenient(Ljava/lang/Number;)Lnet/time4j/ElementOperator;
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Integer;

    invoke-super {p0, p1}, Lnet/time4j/AbstractDateElement;->setLenient(Ljava/lang/Comparable;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method
