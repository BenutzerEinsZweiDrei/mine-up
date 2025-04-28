.class public Lcom/aigestudio/wheelpicker/model/Province;
.super Ljava/lang/Object;
.source "Province.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public city:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aigestudio/wheelpicker/model/City;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aigestudio/wheelpicker/model/City;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/model/Province;->city:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/model/Province;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aigestudio/wheelpicker/model/City;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/aigestudio/wheelpicker/model/Province;->city:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/aigestudio/wheelpicker/model/Province;->name:Ljava/lang/String;

    return-void
.end method
