.class Lnet/time4j/Duration$LengthComparator;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LengthComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lnet/time4j/IsoUnit;",
        "T:",
        "Lnet/time4j/engine/TimePoint<",
        "TU;TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/time4j/Duration<",
        "+TU;>;>;"
    }
.end annotation


# instance fields
.field private final base:Lnet/time4j/engine/TimePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/time4j/engine/TimePoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing base time point."

    .line 4643
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4646
    iput-object p1, p0, Lnet/time4j/Duration$LengthComparator;->base:Lnet/time4j/engine/TimePoint;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/engine/TimePoint;Lnet/time4j/Duration$1;)V
    .locals 0

    .line 4630
    invoke-direct {p0, p1}, Lnet/time4j/Duration$LengthComparator;-><init>(Lnet/time4j/engine/TimePoint;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 4630
    check-cast p1, Lnet/time4j/Duration;

    check-cast p2, Lnet/time4j/Duration;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Duration$LengthComparator;->compare(Lnet/time4j/Duration;Lnet/time4j/Duration;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/Duration;Lnet/time4j/Duration;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Duration<",
            "+TU;>;",
            "Lnet/time4j/Duration<",
            "+TU;>;)I"
        }
    .end annotation

    .line 4658
    invoke-virtual {p1}, Lnet/time4j/Duration;->isNegative()Z

    move-result v0

    .line 4659
    invoke-virtual {p2}, Lnet/time4j/Duration;->isNegative()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4665
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 4669
    :cond_2
    iget-object v0, p0, Lnet/time4j/Duration$LengthComparator;->base:Lnet/time4j/engine/TimePoint;

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimePoint;->plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/Duration$LengthComparator;->base:Lnet/time4j/engine/TimePoint;

    invoke-virtual {v0, p2}, Lnet/time4j/engine/TimePoint;->plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/engine/TimePoint;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/engine/TimePoint;->compareTo(Lnet/time4j/engine/TimePoint;)I

    move-result p1

    return p1
.end method
