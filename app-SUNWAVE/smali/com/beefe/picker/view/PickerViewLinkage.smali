.class public Lcom/beefe/picker/view/PickerViewLinkage;
.super Landroid/widget/LinearLayout;
.source "PickerViewLinkage.java"


# instance fields
.field private curRow:I

.field private curSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/beefe/picker/view/ReturnData;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ">;"
        }
    .end annotation
.end field

.field private loopViewOne:Lcom/beefe/picker/view/LoopView;

.field private loopViewThree:Lcom/beefe/picker/view/LoopView;

.field private loopViewTwo:Lcom/beefe/picker/view/LoopView;

.field private onSelectedListener:Lcom/beefe/picker/view/OnSelectedListener;

.field private oneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private returnData:Lcom/beefe/picker/view/ReturnData;

.field private returnData1:Lcom/beefe/picker/view/ReturnData;

.field private returnData2:Lcom/beefe/picker/view/ReturnData;

.field private selectOneIndex:I

.field private selectTwoIndex:I

.field private threeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private twoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->data:Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/PickerViewLinkage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    .line 79
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    .line 81
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->data:Ljava/util/ArrayList;

    .line 43
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/PickerViewLinkage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    .line 79
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    .line 81
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->data:Ljava/util/ArrayList;

    .line 48
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/PickerViewLinkage;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/beefe/picker/view/PickerViewLinkage;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/beefe/picker/view/PickerViewLinkage;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData:Lcom/beefe/picker/view/ReturnData;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/LoopView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData:Lcom/beefe/picker/view/ReturnData;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/OnSelectedListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->onSelectedListener:Lcom/beefe/picker/view/OnSelectedListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/beefe/picker/view/PickerViewLinkage;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectTwoIndex:I

    return p0
.end method

.method static synthetic access$1302(Lcom/beefe/picker/view/PickerViewLinkage;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectTwoIndex:I

    return p1
.end method

.method static synthetic access$1400(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/LoopView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/beefe/picker/view/PickerViewLinkage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->data:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/LoopView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/LoopView;Ljava/util/ArrayList;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/beefe/picker/view/PickerViewLinkage;->checkItems(Lcom/beefe/picker/view/LoopView;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    return-object p0
.end method

.method static synthetic access$702(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    return-object p1
.end method

.method static synthetic access$800(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$802(Lcom/beefe/picker/view/PickerViewLinkage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/PickerViewLinkage;->arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 389
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    const-string v3, ""

    .line 391
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReadableType;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x74423897

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v7, :cond_2

    const v7, -0x6bc5b3cf

    if-eq v6, v7, :cond_1

    const v7, 0x67140408

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "Boolean"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v5, v1

    goto :goto_1

    :cond_1
    const-string v6, "String"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v5, v8

    goto :goto_1

    :cond_2
    const-string v6, "Number"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v5, v9

    :cond_3
    :goto_1
    if-eqz v5, :cond_6

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_4

    goto :goto_2

    .line 403
    :cond_4
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 397
    :cond_5
    :try_start_1
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 399
    :catch_0
    :try_start_2
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 393
    :cond_6
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 406
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v0

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private checkItems(Lcom/beefe/picker/view/LoopView;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beefe/picker/view/LoopView;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    invoke-virtual {p1, p2}, Lcom/beefe/picker/view/LoopView;->setItems(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 94
    invoke-virtual {p1, p2}, Lcom/beefe/picker/view/LoopView;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method

.method private getAllTwoListData()V
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->data:Ljava/util/ArrayList;

    iget v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 565
    invoke-direct {p0, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    return-void
.end method

.method private getThreeListData()V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->data:Ljava/util/ArrayList;

    iget v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    iget v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectTwoIndex:I

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 588
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 590
    invoke-direct {p0, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    return-void
.end method

.method private getTwoListData()V
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->data:Ljava/util/ArrayList;

    iget v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 574
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 575
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 576
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v2

    .line 577
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    iget-object v3, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/beefe/picker/R$layout;->picker_view_linkage:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 53
    sget v0, Lcom/beefe/picker/R$id;->loopViewOne:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/beefe/picker/view/LoopView;

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    .line 54
    sget v0, Lcom/beefe/picker/R$id;->loopViewTwo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/beefe/picker/view/LoopView;

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    .line 55
    sget v0, Lcom/beefe/picker/R$id;->loopViewThree:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/beefe/picker/view/LoopView;

    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    return-void
.end method

.method private selectOneLoop([Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/beefe/picker/view/ReturnData;",
            ">;)V"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/beefe/picker/view/LoopView;->hasItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->getItemPosition(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    goto :goto_0

    .line 514
    :cond_0
    iput v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    .line 516
    :goto_0
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    iget v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setSelectedPosition(I)V

    .line 518
    new-instance p1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {p1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData:Lcom/beefe/picker/view/ReturnData;

    .line 519
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    iget v2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneIndex:I

    invoke-virtual {v0, v2}, Lcom/beefe/picker/view/LoopView;->getIndexItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 520
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData:Lcom/beefe/picker/view/ReturnData;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 521
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private selectThreeLoop([Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/beefe/picker/view/ReturnData;",
            ">;)V"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/LoopView;->setItems(Ljava/util/List;)V

    .line 547
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    const/4 v1, 0x2

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/beefe/picker/view/LoopView;->hasItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->getItemPosition(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 552
    :goto_0
    new-instance v0, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v0}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    .line 553
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setSelectedPosition(I)V

    .line 554
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    iget-object v2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v2, p1}, Lcom/beefe/picker/view/LoopView;->getIndexItem(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 555
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 556
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private selectTwoLoop([Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/beefe/picker/view/ReturnData;",
            ">;)V"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/LoopView;->setItems(Ljava/util/List;)V

    .line 529
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/beefe/picker/view/LoopView;->hasItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->getItemPosition(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectTwoIndex:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 532
    iput p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectTwoIndex:I

    .line 534
    :goto_0
    new-instance p1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {p1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    .line 535
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    iget v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectTwoIndex:I

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setSelectedPosition(I)V

    .line 536
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    iget v2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->selectTwoIndex:I

    invoke-virtual {v0, v2}, Lcom/beefe/picker/view/LoopView;->getIndexItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 537
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 538
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private selectValues([Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/beefe/picker/view/ReturnData;",
            ">;)V"
        }
    .end annotation

    .line 483
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneLoop([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 487
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 488
    invoke-direct {p0}, Lcom/beefe/picker/view/PickerViewLinkage;->getTwoListData()V

    .line 489
    invoke-direct {p0, p1, p2}, Lcom/beefe/picker/view/PickerViewLinkage;->selectTwoLoop([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 491
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 492
    invoke-direct {p0}, Lcom/beefe/picker/view/PickerViewLinkage;->getThreeListData()V

    .line 493
    invoke-direct {p0, p1, p2}, Lcom/beefe/picker/view/PickerViewLinkage;->selectThreeLoop([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 496
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneLoop([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 498
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 499
    invoke-direct {p0}, Lcom/beefe/picker/view/PickerViewLinkage;->getAllTwoListData()V

    .line 500
    invoke-direct {p0, p1, p2}, Lcom/beefe/picker/view/PickerViewLinkage;->selectTwoLoop([Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method private setRow(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iput v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curRow:I

    .line 68
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v1}, Lcom/beefe/picker/view/LoopView;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v1}, Lcom/beefe/picker/view/LoopView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v1}, Lcom/beefe/picker/view/LoopView;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_1
    iput v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curRow:I

    .line 62
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v1}, Lcom/beefe/picker/view/LoopView;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v1}, Lcom/beefe/picker/view/LoopView;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setWeights([D)V
    .locals 9

    .line 99
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    iget v2, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curRow:I

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-eq v2, v5, :cond_3

    const/4 v8, 0x3

    if-eq v2, v8, :cond_0

    goto :goto_2

    .line 119
    :cond_0
    array-length v2, p1

    if-eq v2, v7, :cond_2

    if-eq v2, v5, :cond_1

    .line 131
    aget-wide v1, p1, v1

    double-to-float v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 132
    aget-wide v1, p1, v7

    double-to-float v1, v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 133
    aget-wide v1, p1, v5

    double-to-float p1, v1

    iput p1, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 126
    :cond_1
    aget-wide v1, p1, v1

    double-to-float v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    aget-wide v1, p1, v7

    double-to-float p1, v1

    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 128
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 121
    :cond_2
    aget-wide v1, p1, v1

    double-to-float p1, v1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 123
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v3}, Lcom/beefe/picker/view/LoopView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v4}, Lcom/beefe/picker/view/LoopView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 105
    :cond_3
    array-length v2, p1

    if-eq v2, v7, :cond_4

    .line 111
    aget-wide v1, p1, v1

    double-to-float v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 112
    aget-wide v1, p1, v7

    double-to-float p1, v1

    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 107
    :cond_4
    aget-wide v1, p1, v1

    double-to-float p1, v1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 108
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 115
    :goto_1
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v3}, Lcom/beefe/picker/view/LoopView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getSelectedData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/beefe/picker/view/ReturnData;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getViewHeight()I

    move-result v0

    return v0
.end method

.method public setIsLoop(Z)V
    .locals 1

    if-nez p1, :cond_2

    .line 651
    iget p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curRow:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1}, Lcom/beefe/picker/view/LoopView;->setNotLoop()V

    .line 658
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1}, Lcom/beefe/picker/view/LoopView;->setNotLoop()V

    .line 659
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1}, Lcom/beefe/picker/view/LoopView;->setNotLoop()V

    goto :goto_0

    .line 653
    :cond_1
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1}, Lcom/beefe/picker/view/LoopView;->setNotLoop()V

    .line 654
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1}, Lcom/beefe/picker/view/LoopView;->setNotLoop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnSelectListener(Lcom/beefe/picker/view/OnSelectedListener;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->onSelectedListener:Lcom/beefe/picker/view/OnSelectedListener;

    return-void
.end method

.method public setPickerData(Lcom/facebook/react/bridge/ReadableArray;[D)V
    .locals 4

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v0}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData:Lcom/beefe/picker/view/ReturnData;

    .line 150
    new-instance v0, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v0}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    .line 151
    new-instance v0, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v0}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    .line 152
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 153
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 154
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 155
    iget-object v3, p0, Lcom/beefe/picker/view/PickerViewLinkage;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v2

    .line 157
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 159
    iget-object v3, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/beefe/picker/view/PickerViewLinkage;->checkItems(Lcom/beefe/picker/view/LoopView;Ljava/util/ArrayList;)V

    .line 164
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData:Lcom/beefe/picker/view/ReturnData;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData:Lcom/beefe/picker/view/ReturnData;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v1}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 166
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 167
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 172
    :goto_1
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->data:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    .line 173
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReadableType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Map"

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    const/4 p1, 0x3

    .line 175
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/PickerViewLinkage;->setRow(I)V

    .line 177
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 178
    invoke-direct {p0}, Lcom/beefe/picker/view/PickerViewLinkage;->getTwoListData()V

    .line 179
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/beefe/picker/view/PickerViewLinkage;->checkItems(Lcom/beefe/picker/view/LoopView;Ljava/util/ArrayList;)V

    .line 180
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v1}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 182
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_3

    .line 183
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 185
    :cond_3
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 188
    :goto_2
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->data:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->oneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    .line 189
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    .line 191
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 192
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/PickerViewLinkage;->arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    .line 193
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-direct {p0, v1, p1}, Lcom/beefe/picker/view/PickerViewLinkage;->checkItems(Lcom/beefe/picker/view/LoopView;Ljava/util/ArrayList;)V

    .line 195
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 196
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 198
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_4

    .line 199
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 201
    :cond_4
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 205
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    new-instance v0, Lcom/beefe/picker/view/PickerViewLinkage$1;

    invoke-direct {v0, p0}, Lcom/beefe/picker/view/PickerViewLinkage$1;-><init>(Lcom/beefe/picker/view/PickerViewLinkage;)V

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setListener(Lcom/beefe/picker/view/OnItemSelectedListener;)V

    .line 250
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    new-instance v0, Lcom/beefe/picker/view/PickerViewLinkage$2;

    invoke-direct {v0, p0}, Lcom/beefe/picker/view/PickerViewLinkage$2;-><init>(Lcom/beefe/picker/view/PickerViewLinkage;)V

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setListener(Lcom/beefe/picker/view/OnItemSelectedListener;)V

    .line 295
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    new-instance v0, Lcom/beefe/picker/view/PickerViewLinkage$3;

    invoke-direct {v0, p0}, Lcom/beefe/picker/view/PickerViewLinkage$3;-><init>(Lcom/beefe/picker/view/PickerViewLinkage;)V

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setListener(Lcom/beefe/picker/view/OnItemSelectedListener;)V

    goto :goto_5

    .line 329
    :cond_6
    invoke-direct {p0, v2}, Lcom/beefe/picker/view/PickerViewLinkage;->setRow(I)V

    .line 330
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    new-instance v2, Lcom/beefe/picker/view/PickerViewLinkage$4;

    invoke-direct {v2, p0}, Lcom/beefe/picker/view/PickerViewLinkage$4;-><init>(Lcom/beefe/picker/view/PickerViewLinkage;)V

    invoke-virtual {v1, v2}, Lcom/beefe/picker/view/LoopView;->setListener(Lcom/beefe/picker/view/OnItemSelectedListener;)V

    .line 352
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 353
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/PickerViewLinkage;->arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    .line 354
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-direct {p0, v1, p1}, Lcom/beefe/picker/view/PickerViewLinkage;->checkItems(Lcom/beefe/picker/view/LoopView;Ljava/util/ArrayList;)V

    .line 355
    new-instance p1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {p1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    .line 356
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 358
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_7

    .line 359
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 361
    :cond_7
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 363
    :goto_4
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    new-instance v0, Lcom/beefe/picker/view/PickerViewLinkage$5;

    invoke-direct {v0, p0}, Lcom/beefe/picker/view/PickerViewLinkage$5;-><init>(Lcom/beefe/picker/view/PickerViewLinkage;)V

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setListener(Lcom/beefe/picker/view/OnItemSelectedListener;)V

    :goto_5
    if-eqz p2, :cond_8

    .line 382
    invoke-direct {p0, p2}, Lcom/beefe/picker/view/PickerViewLinkage;->setWeights([D)V

    :cond_8
    return-void
.end method

.method public setSelectValue([Ljava/lang/String;)V
    .locals 6

    .line 415
    iget v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curRow:I

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 416
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->selectValues([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 419
    :cond_0
    array-length v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    goto/16 :goto_0

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneLoop([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 460
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 461
    invoke-direct {p0}, Lcom/beefe/picker/view/PickerViewLinkage;->getTwoListData()V

    .line 462
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->selectTwoLoop([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 465
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 466
    invoke-direct {p0}, Lcom/beefe/picker/view/PickerViewLinkage;->getThreeListData()V

    .line 467
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setItems(Ljava/util/List;)V

    .line 468
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v5}, Lcom/beefe/picker/view/LoopView;->setSelectedPosition(I)V

    .line 469
    new-instance p1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {p1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    .line 470
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, v5}, Lcom/beefe/picker/view/LoopView;->getIndexItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 472
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->selectOneLoop([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 422
    iget p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curRow:I

    if-eq p1, v4, :cond_5

    if-eq p1, v2, :cond_4

    goto/16 :goto_0

    .line 424
    :cond_4
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 425
    invoke-direct {p0}, Lcom/beefe/picker/view/PickerViewLinkage;->getTwoListData()V

    .line 426
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setItems(Ljava/util/List;)V

    .line 427
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v5}, Lcom/beefe/picker/view/LoopView;->setSelectedPosition(I)V

    .line 428
    new-instance p1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {p1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    .line 429
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, v5}, Lcom/beefe/picker/view/LoopView;->getIndexItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 431
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 434
    invoke-direct {p0}, Lcom/beefe/picker/view/PickerViewLinkage;->getThreeListData()V

    .line 435
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->threeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setItems(Ljava/util/List;)V

    .line 436
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v5}, Lcom/beefe/picker/view/LoopView;->setSelectedPosition(I)V

    .line 437
    new-instance p1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {p1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    .line 438
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, v5}, Lcom/beefe/picker/view/LoopView;->getIndexItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 439
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 440
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData2:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 444
    :cond_5
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 445
    invoke-direct {p0}, Lcom/beefe/picker/view/PickerViewLinkage;->getAllTwoListData()V

    .line 446
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->twoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->setItems(Ljava/util/List;)V

    .line 447
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, v5}, Lcom/beefe/picker/view/LoopView;->setSelectedPosition(I)V

    .line 448
    new-instance p1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {p1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    .line 449
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, v5}, Lcom/beefe/picker/view/LoopView;->getIndexItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 450
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 451
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curSelectedList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->returnData1:Lcom/beefe/picker/view/ReturnData;

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 636
    iget v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curRow:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextColor(I)V

    .line 643
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextColor(I)V

    .line 644
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextColor(I)V

    goto :goto_0

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextColor(I)V

    .line 639
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setTextEllipsisLen(I)V
    .locals 2

    .line 622
    iget v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curRow:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextEllipsisLen(I)V

    .line 629
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextEllipsisLen(I)V

    .line 630
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextEllipsisLen(I)V

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextEllipsisLen(I)V

    .line 625
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextEllipsisLen(I)V

    :goto_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 594
    iget v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curRow:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextSize(F)V

    .line 601
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextSize(F)V

    .line 602
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextSize(F)V

    goto :goto_0

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextSize(F)V

    .line 597
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTextSize(F)V

    :goto_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 608
    iget v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->curRow:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 615
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 616
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewThree:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewOne:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 611
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage;->loopViewTwo:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method
