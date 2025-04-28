.class public Lcom/beefe/picker/view/PickerViewAlone;
.super Landroid/widget/LinearLayout;
.source "PickerViewAlone.java"


# instance fields
.field private curSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/beefe/picker/view/ReturnData;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectedListener:Lcom/beefe/picker/view/OnSelectedListener;

.field private pickerViewAloneLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/PickerViewAlone;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/PickerViewAlone;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/beefe/picker/view/PickerViewAlone;)Lcom/beefe/picker/view/OnSelectedListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewAlone;->onSelectedListener:Lcom/beefe/picker/view/OnSelectedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/beefe/picker/view/PickerViewAlone;)Ljava/util/ArrayList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewAlone;->curSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/beefe/picker/view/PickerViewAlone;)Landroid/widget/LinearLayout;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;
    .locals 6
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

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 263
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 265
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReadableType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "Boolean"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "String"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "Number"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    const-string v3, ""

    goto :goto_2

    .line 267
    :pswitch_0
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 277
    :pswitch_1
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 271
    :pswitch_2
    :try_start_0
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 273
    :catch_0
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 280
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_2
        -0x6bc5b3cf -> :sswitch_1
        0x67140408 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/beefe/picker/R$layout;->picker_view_alone:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 47
    sget v0, Lcom/beefe/picker/R$id;->pickerViewAloneLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method private setAloneData(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3

    .line 71
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/PickerViewAlone;->arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p0}, Lcom/beefe/picker/view/PickerViewAlone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/beefe/picker/view/LoopView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 75
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 76
    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/LoopView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setItems(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/LoopView;->setSelectedPosition(I)V

    .line 79
    new-instance v2, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v2}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    .line 80
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 82
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone;->curSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone;->curSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone;->curSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 87
    :goto_0
    new-instance p1, Lcom/beefe/picker/view/PickerViewAlone$1;

    invoke-direct {p1, p0}, Lcom/beefe/picker/view/PickerViewAlone$1;-><init>(Lcom/beefe/picker/view/PickerViewAlone;)V

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/LoopView;->setListener(Lcom/beefe/picker/view/OnItemSelectedListener;)V

    .line 99
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setMultipleData(Lcom/facebook/react/bridge/ReadableArray;[D)V
    .locals 9

    .line 103
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 104
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    .line 105
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 106
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReadableType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v5, "Array"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 108
    :cond_0
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    .line 109
    invoke-direct {p0, v4}, Lcom/beefe/picker/view/PickerViewAlone;->arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;

    move-result-object v4

    .line 110
    new-instance v5, Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p0}, Lcom/beefe/picker/view/PickerViewAlone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/beefe/picker/view/LoopView;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    .line 113
    array-length v8, p2

    if-ge v3, v8, :cond_1

    .line 114
    aget-wide v7, p2, v3

    double-to-float v7, v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 116
    :cond_1
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 119
    :cond_2
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 121
    :goto_1
    invoke-virtual {v5, v6}, Lcom/beefe/picker/view/LoopView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {v5, v4}, Lcom/beefe/picker/view/LoopView;->setItems(Ljava/util/List;)V

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beefe/picker/view/LoopView;->setTag(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v5, v2}, Lcom/beefe/picker/view/LoopView;->setSelectedPosition(I)V

    .line 126
    new-instance v6, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v6}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    .line 127
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v5}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 129
    iget-object v7, p0, Lcom/beefe/picker/view/PickerViewAlone;->curSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v3, :cond_3

    .line 130
    iget-object v7, p0, Lcom/beefe/picker/view/PickerViewAlone;->curSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 132
    :cond_3
    iget-object v7, p0, Lcom/beefe/picker/view/PickerViewAlone;->curSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    :goto_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    .line 135
    new-instance v4, Lcom/beefe/picker/view/PickerViewAlone$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/beefe/picker/view/PickerViewAlone$2;-><init>(Lcom/beefe/picker/view/PickerViewAlone;[Ljava/lang/String;[I)V

    invoke-virtual {v5, v4}, Lcom/beefe/picker/view/LoopView;->setListener(Lcom/beefe/picker/view/OnItemSelectedListener;)V

    .line 159
    iget-object v4, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private setSelect(I[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/beefe/picker/view/ReturnData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 181
    instance-of v2, v1, Lcom/beefe/picker/view/LoopView;

    if-eqz v2, :cond_0

    .line 182
    check-cast v1, Lcom/beefe/picker/view/LoopView;

    .line 183
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/beefe/picker/view/LoopView;->hasItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/beefe/picker/view/LoopView;->setSelectedItem(Ljava/lang/String;)V

    .line 185
    new-instance v2, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v2}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    .line 186
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 188
    invoke-virtual {p3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
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

    .line 67
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone;->curSelectedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 254
    instance-of v2, v0, Lcom/beefe/picker/view/LoopView;

    if-eqz v2, :cond_0

    .line 255
    check-cast v0, Lcom/beefe/picker/view/LoopView;

    .line 256
    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->getViewHeight()I

    move-result v1

    :cond_0
    return v1
.end method

.method public setIsLoop(Z)V
    .locals 3

    if-nez p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 243
    instance-of v2, v1, Lcom/beefe/picker/view/LoopView;

    if-eqz v2, :cond_0

    .line 244
    check-cast v1, Lcom/beefe/picker/view/LoopView;

    .line 245
    invoke-virtual {v1}, Lcom/beefe/picker/view/LoopView;->setNotLoop()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnSelectedListener(Lcom/beefe/picker/view/OnSelectedListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone;->onSelectedListener:Lcom/beefe/picker/view/OnSelectedListener;

    return-void
.end method

.method public setPickerData(Lcom/facebook/react/bridge/ReadableArray;[D)V
    .locals 2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone;->curSelectedList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 56
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReadableType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "Array"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/PickerViewAlone;->setAloneData(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/beefe/picker/view/PickerViewAlone;->setMultipleData(Lcom/facebook/react/bridge/ReadableArray;[D)V

    :goto_0
    return-void
.end method

.method public setSelectValue([Ljava/lang/String;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 169
    array-length v1, p1

    if-gt v1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone;->curSelectedList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, v0}, Lcom/beefe/picker/view/PickerViewAlone;->setSelect(I[Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewAlone;->curSelectedList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, v1}, Lcom/beefe/picker/view/PickerViewAlone;->setSelect(I[Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 197
    iget-object v2, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 198
    instance-of v3, v2, Lcom/beefe/picker/view/LoopView;

    if-eqz v3, :cond_0

    .line 199
    check-cast v2, Lcom/beefe/picker/view/LoopView;

    .line 200
    invoke-virtual {v2, p1}, Lcom/beefe/picker/view/LoopView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTextEllipsisLen(I)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 230
    iget-object v2, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 231
    instance-of v3, v2, Lcom/beefe/picker/view/LoopView;

    if-eqz v3, :cond_0

    .line 232
    check-cast v2, Lcom/beefe/picker/view/LoopView;

    .line 233
    invoke-virtual {v2, p1}, Lcom/beefe/picker/view/LoopView;->setTextEllipsisLen(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTextSize(F)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 208
    iget-object v2, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 209
    instance-of v3, v2, Lcom/beefe/picker/view/LoopView;

    if-eqz v3, :cond_0

    .line 210
    check-cast v2, Lcom/beefe/picker/view/LoopView;

    .line 211
    invoke-virtual {v2, p1}, Lcom/beefe/picker/view/LoopView;->setTextSize(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 219
    iget-object v2, p0, Lcom/beefe/picker/view/PickerViewAlone;->pickerViewAloneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 220
    instance-of v3, v2, Lcom/beefe/picker/view/LoopView;

    if-eqz v3, :cond_0

    .line 221
    check-cast v2, Lcom/beefe/picker/view/LoopView;

    .line 222
    invoke-virtual {v2, p1}, Lcom/beefe/picker/view/LoopView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
