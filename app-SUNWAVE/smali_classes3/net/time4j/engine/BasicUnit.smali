.class public abstract Lnet/time4j/engine/BasicUnit;
.super Ljava/lang/Object;
.source "BasicUnit.java"

# interfaces
.implements Lnet/time4j/engine/ChronoUnit;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final derive(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/UnitRule;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(TT;)",
            "Lnet/time4j/engine/UnitRule<",
            "TT;>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/engine/BasicUnit;->derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/UnitRule;

    move-result-object p1

    return-object p1
.end method

.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/UnitRule;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)",
            "Lnet/time4j/engine/UnitRule<",
            "TT;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public isCalendrical()Z
    .locals 4

    .line 60
    invoke-virtual {p0}, Lnet/time4j/engine/BasicUnit;->getLength()D

    move-result-wide v0

    const-wide v2, 0x40f5180000000000L    # 86400.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
