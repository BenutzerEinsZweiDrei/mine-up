.class public Lnet/time4j/format/expert/ParseLog;
.super Ljava/lang/Object;
.source "ParseLog.java"


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private pp:Ljava/text/ParsePosition;

.field private rawValues:Lnet/time4j/engine/ChronoEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;"
        }
    .end annotation
.end field

.field private warning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ParseLog;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 94
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, p1}, Ljava/text/ParsePosition;-><init>(I)V

    iput-object v0, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    const-string p1, ""

    .line 95
    iput-object p1, p0, Lnet/time4j/format/expert/ParseLog;->errorMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lnet/time4j/format/expert/ParseLog;->rawValues:Lnet/time4j/engine/ChronoEntity;

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lnet/time4j/format/expert/ParseLog;->warning:Z

    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/text/ParsePosition;)V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, -0x1

    .line 114
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 115
    iput-object p1, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    const-string p1, ""

    .line 116
    iput-object p1, p0, Lnet/time4j/format/expert/ParseLog;->errorMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lnet/time4j/format/expert/ParseLog;->rawValues:Lnet/time4j/engine/ChronoEntity;

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lnet/time4j/format/expert/ParseLog;->warning:Z

    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method clearError()V
    .locals 2

    .line 377
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const-string v0, ""

    .line 378
    iput-object v0, p0, Lnet/time4j/format/expert/ParseLog;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method clearWarning()V
    .locals 1

    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lnet/time4j/format/expert/ParseLog;->warning:Z

    return-void
.end method

.method public getErrorIndex()I
    .locals 1

    .line 174
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method getPP()Ljava/text/ParsePosition;
    .locals 1

    .line 420
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 138
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0
.end method

.method public getRawValues()Lnet/time4j/engine/ChronoEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->rawValues:Lnet/time4j/engine/ChronoEntity;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lnet/time4j/format/expert/ParsedValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lnet/time4j/format/expert/ParsedValues;-><init>(IZ)V

    iput-object v0, p0, Lnet/time4j/format/expert/ParseLog;->rawValues:Lnet/time4j/engine/ChronoEntity;

    .line 214
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->rawValues:Lnet/time4j/engine/ChronoEntity;

    return-object v0
.end method

.method getRawValues0()Lnet/time4j/engine/ChronoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->rawValues:Lnet/time4j/engine/ChronoEntity;

    return-object v0
.end method

.method public isError()Z
    .locals 2

    .line 156
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWarning()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParseLog;->warning:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .line 353
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 354
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const-string v0, ""

    .line 355
    iput-object v0, p0, Lnet/time4j/format/expert/ParseLog;->errorMessage:Ljava/lang/String;

    .line 356
    iput-boolean v1, p0, Lnet/time4j/format/expert/ParseLog;->warning:Z

    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lnet/time4j/format/expert/ParseLog;->rawValues:Lnet/time4j/engine/ChronoEntity;

    return-void
.end method

.method public setError(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_2

    if-eqz p2, :cond_0

    .line 294
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error occurred at position: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lnet/time4j/format/expert/ParseLog;->errorMessage:Ljava/lang/String;

    .line 301
    iget-object p2, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 298
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined error index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setPosition(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 267
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    invoke-virtual {v0, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setRawValues(Lnet/time4j/engine/ChronoEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)V"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lnet/time4j/format/expert/ParseLog;->rawValues:Lnet/time4j/engine/ChronoEntity;

    return-void
.end method

.method public setWarning()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Warning state active."

    .line 332
    iput-object v0, p0, Lnet/time4j/format/expert/ParseLog;->errorMessage:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lnet/time4j/format/expert/ParseLog;->pp:Ljava/text/ParsePosition;

    invoke-virtual {p0}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_0
    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lnet/time4j/format/expert/ParseLog;->warning:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[position="

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p0}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error-index="

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p0}, Lnet/time4j/format/expert/ParseLog;->getErrorIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error-message=\""

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lnet/time4j/format/expert/ParseLog;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    iget-boolean v1, p0, Lnet/time4j/format/expert/ParseLog;->warning:Z

    if-eqz v1, :cond_0

    const-string v1, ", warning-active"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    iget-object v1, p0, Lnet/time4j/format/expert/ParseLog;->rawValues:Lnet/time4j/engine/ChronoEntity;

    if-eqz v1, :cond_1

    const-string v1, ", raw-values="

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v1, p0, Lnet/time4j/format/expert/ParseLog;->rawValues:Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x5d

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
