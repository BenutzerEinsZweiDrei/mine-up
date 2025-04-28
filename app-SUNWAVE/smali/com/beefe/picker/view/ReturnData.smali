.class public Lcom/beefe/picker/view/ReturnData;
.super Ljava/lang/Object;
.source "ReturnData.java"


# instance fields
.field private index:I

.field private item:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/beefe/picker/view/ReturnData;->index:I

    return v0
.end method

.method public getItem()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/beefe/picker/view/ReturnData;->item:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/beefe/picker/view/ReturnData;->index:I

    return-void
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/beefe/picker/view/ReturnData;->item:Ljava/lang/String;

    return-void
.end method
