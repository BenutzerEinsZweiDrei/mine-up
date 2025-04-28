.class public Lnet/time4j/calendar/service/StdIntegerDateElement;
.super Lnet/time4j/calendar/service/StdDateElement;
.source "StdIntegerDateElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Lnet/time4j/calendar/service/StdDateElement<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x450b5dcbe1e0bbbeL


# instance fields
.field private final transient decrementor:Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final transient incrementor:Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final transient max:I

.field private final transient min:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;IIC)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;IIC)V"
        }
    .end annotation

    const-string v0, "DAY_OF_"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p5, v0}, Lnet/time4j/calendar/service/StdDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;CZ)V

    .line 63
    iput p3, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->min:I

    .line 64
    iput p4, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->max:I

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->decrementor:Lnet/time4j/engine/ChronoOperator;

    .line 66
    iput-object p1, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->incrementor:Lnet/time4j/engine/ChronoOperator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;IIC",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p5, v0}, Lnet/time4j/calendar/service/StdDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;CZ)V

    .line 81
    iput p3, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->min:I

    .line 82
    iput p4, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->max:I

    .line 83
    iput-object p6, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->decrementor:Lnet/time4j/engine/ChronoOperator;

    .line 84
    iput-object p7, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->incrementor:Lnet/time4j/engine/ChronoOperator;

    return-void
.end method


# virtual methods
.method public decremented()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->decrementor:Lnet/time4j/engine/ChronoOperator;

    if-eqz v0, :cond_0

    return-object v0

    .line 118
    :cond_0
    invoke-super {p0}, Lnet/time4j/calendar/service/StdDateElement;->decremented()Lnet/time4j/engine/ChronoOperator;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    .line 107
    iget v0, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->max:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdIntegerDateElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    .line 100
    iget v0, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->min:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdIntegerDateElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
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

    .line 93
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public incremented()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lnet/time4j/calendar/service/StdIntegerDateElement;->incrementor:Lnet/time4j/engine/ChronoOperator;

    if-eqz v0, :cond_0

    return-object v0

    .line 129
    :cond_0
    invoke-super {p0}, Lnet/time4j/calendar/service/StdDateElement;->incremented()Lnet/time4j/engine/ChronoOperator;

    move-result-object v0

    return-object v0
.end method
