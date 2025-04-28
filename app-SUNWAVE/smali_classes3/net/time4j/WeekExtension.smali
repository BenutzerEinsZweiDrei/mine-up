.class Lnet/time4j/WeekExtension;
.super Ljava/lang/Object;
.source "WeekExtension.java"

# interfaces
.implements Lnet/time4j/engine/ChronoExtension;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public canResolve(Lnet/time4j/engine/ChronoElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getElements(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    invoke-static {p1}, Lnet/time4j/Weekmodel;->of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/Weekmodel;->getElements()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lnet/time4j/engine/ChronoEntity;Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Ljava/util/Locale;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;"
        }
    .end annotation

    return-object p1
.end method
