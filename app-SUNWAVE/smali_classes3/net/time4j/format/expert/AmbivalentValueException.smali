.class Lnet/time4j/format/expert/AmbivalentValueException;
.super Lnet/time4j/engine/ChronoException;
.source "AmbivalentValueException.java"


# static fields
.field private static final serialVersionUID:J = -0x3be3211fbf3f4469L


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate element parsed with different values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    return-void
.end method
