.class Lnet/time4j/calendar/CommonElements$DayOperator;
.super Ljava/lang/Object;
.source "CommonElements.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/CommonElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final amount:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    iput p1, p0, Lnet/time4j/calendar/CommonElements$DayOperator;->amount:I

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1240
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$DayOperator;->apply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1260
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lnet/time4j/calendar/CommonElements$DayOperator;->amount:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 1261
    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v2, v0, v1}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method
