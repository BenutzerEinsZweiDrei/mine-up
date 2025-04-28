.class Lnet/time4j/engine/TimeAxis$SelfElement;
.super Lnet/time4j/engine/BasicElement;
.source "TimeAxis.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/TimeAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelfElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/TimePoint<",
        "*TT;>;>",
        "Lnet/time4j/engine/BasicElement<",
        "TT;>;",
        "Lnet/time4j/engine/ElementRule<",
        "TT;TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x424c2af39bbdca9aL


# instance fields
.field private final max:Lnet/time4j/engine/TimePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final min:Lnet/time4j/engine/TimePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;TT;)V"
        }
    .end annotation

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-AXIS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/time4j/engine/BasicElement;-><init>(Ljava/lang/String;)V

    .line 1135
    iput-object p1, p0, Lnet/time4j/engine/TimeAxis$SelfElement;->type:Ljava/lang/Class;

    .line 1136
    iput-object p2, p0, Lnet/time4j/engine/TimeAxis$SelfElement;->min:Lnet/time4j/engine/TimePoint;

    .line 1137
    iput-object p3, p0, Lnet/time4j/engine/TimeAxis$SelfElement;->max:Lnet/time4j/engine/TimePoint;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimeAxis$1;)V
    .locals 0

    .line 1112
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/engine/TimeAxis$SelfElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)V

    return-void
.end method


# virtual methods
.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TX;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TX;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TX;TT;>;"
        }
    .end annotation

    .line 1244
    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$SelfElement;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis$SelfElement;->getChildAtCeiling(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1234
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis$SelfElement;->getChildAtFloor(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1227
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 1112
    invoke-virtual {p0}, Lnet/time4j/engine/TimeAxis$SelfElement;->getDefaultMaximum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$SelfElement;->max:Lnet/time4j/engine/TimePoint;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 1112
    invoke-virtual {p0}, Lnet/time4j/engine/TimeAxis$SelfElement;->getDefaultMinimum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$SelfElement;->min:Lnet/time4j/engine/TimePoint;

    return-object v0
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis$SelfElement;->getMaximum(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1195
    invoke-virtual {p0}, Lnet/time4j/engine/TimeAxis$SelfElement;->getDefaultMaximum()Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis$SelfElement;->getMinimum(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1188
    invoke-virtual {p0}, Lnet/time4j/engine/TimeAxis$SelfElement;->getDefaultMinimum()Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1146
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$SelfElement;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis$SelfElement;->getValue(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method protected getVeto(Lnet/time4j/engine/Chronology;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x0

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

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/TimePoint;

    check-cast p2, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/TimeAxis$SelfElement;->isValid(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/TimePoint;

    check-cast p2, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/engine/TimeAxis$SelfElement;->withValue(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Z)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Z)Lnet/time4j/engine/TimePoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;Z)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    return-object p2

    .line 1217
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
