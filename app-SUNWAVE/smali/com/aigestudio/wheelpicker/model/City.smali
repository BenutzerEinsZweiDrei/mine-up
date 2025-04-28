.class public Lcom/aigestudio/wheelpicker/model/City;
.super Ljava/lang/Object;
.source "City.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public area:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/model/City;->area:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/model/City;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setArea(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/aigestudio/wheelpicker/model/City;->area:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/aigestudio/wheelpicker/model/City;->name:Ljava/lang/String;

    return-void
.end method
