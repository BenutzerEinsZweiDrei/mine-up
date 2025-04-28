.class final Lnet/time4j/format/PredefinedKey;
.super Ljava/lang/Object;
.source "PredefinedKey.java"

# interfaces
.implements Lnet/time4j/engine/AttributeKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/AttributeKey<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TA;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing name of attribute key."

    .line 48
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Missing type of attribute."

    .line 50
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lnet/time4j/format/PredefinedKey;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lnet/time4j/format/PredefinedKey;->type:Ljava/lang/Class;

    return-void
.end method

.method static valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Lnet/time4j/format/PredefinedKey<",
            "TA;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lnet/time4j/format/PredefinedKey;

    invoke-direct {v0, p0, p1}, Lnet/time4j/format/PredefinedKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 96
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/PredefinedKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 97
    check-cast p1, Lnet/time4j/format/PredefinedKey;

    .line 98
    iget-object v1, p0, Lnet/time4j/format/PredefinedKey;->name:Ljava/lang/String;

    iget-object v3, p1, Lnet/time4j/format/PredefinedKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/format/PredefinedKey;->type:Ljava/lang/Class;

    iget-object p1, p1, Lnet/time4j/format/PredefinedKey;->type:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 108
    iget-object v0, p0, Lnet/time4j/format/PredefinedKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lnet/time4j/format/PredefinedKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/PredefinedKey;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/format/PredefinedKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lnet/time4j/format/PredefinedKey;->type:Ljava/lang/Class;

    return-object v0
.end method
