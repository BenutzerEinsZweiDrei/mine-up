.class public Lcom/henninghall/date_picker/PickerView;
.super Landroid/widget/RelativeLayout;
.source "PickerView.java"


# instance fields
.field private final layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private final measureAndLayout:Ljava/lang/Runnable;

.field private state:Lcom/henninghall/date_picker/State;

.field private uiManager:Lcom/henninghall/date_picker/ui/UIManager;

.field private updatedProps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 36
    sget-object v0, Lcom/henninghall/date_picker/DatePickerPackage;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/henninghall/date_picker/State;

    invoke-direct {v0}, Lcom/henninghall/date_picker/State;-><init>()V

    iput-object v0, p0, Lcom/henninghall/date_picker/PickerView;->state:Lcom/henninghall/date_picker/State;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henninghall/date_picker/PickerView;->updatedProps:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Lcom/henninghall/date_picker/PickerView$1;

    invoke-direct {v0, p0}, Lcom/henninghall/date_picker/PickerView$1;-><init>(Lcom/henninghall/date_picker/PickerView;)V

    iput-object v0, p0, Lcom/henninghall/date_picker/PickerView;->measureAndLayout:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/henninghall/date_picker/PickerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method private varargs didUpdate([Ljava/lang/String;)Z
    .locals 5

    .line 95
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 96
    iget-object v4, p0, Lcom/henninghall/date_picker/PickerView;->updatedProps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/henninghall/date_picker/PickerView;->state:Lcom/henninghall/date_picker/State;

    iget-object v0, v0, Lcom/henninghall/date_picker/State;->derived:Lcom/henninghall/date_picker/DerivedData;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/DerivedData;->getLastDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestLayout()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 127
    iget-object v0, p0, Lcom/henninghall/date_picker/PickerView;->measureAndLayout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/henninghall/date_picker/PickerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scroll(II)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/henninghall/date_picker/PickerView;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v0, p1, p2}, Lcom/henninghall/date_picker/ui/UIManager;->scroll(II)V

    return-void
.end method

.method public update()V
    .locals 13

    const-string v0, "androidVariant"

    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/henninghall/date_picker/PickerView;->didUpdate([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/henninghall/date_picker/PickerView;->removeAllViewsInLayout()V

    .line 44
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/henninghall/date_picker/PickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/henninghall/date_picker/PickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/henninghall/date_picker/PickerView;->state:Lcom/henninghall/date_picker/State;

    iget-object v3, v3, Lcom/henninghall/date_picker/State;->derived:Lcom/henninghall/date_picker/DerivedData;

    invoke-virtual {v3}, Lcom/henninghall/date_picker/DerivedData;->getRootLayout()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    iget-object v2, p0, Lcom/henninghall/date_picker/PickerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/henninghall/date_picker/PickerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v1, Lcom/henninghall/date_picker/ui/UIManager;

    iget-object v2, p0, Lcom/henninghall/date_picker/PickerView;->state:Lcom/henninghall/date_picker/State;

    invoke-direct {v1, v2, p0}, Lcom/henninghall/date_picker/ui/UIManager;-><init>(Lcom/henninghall/date_picker/State;Landroid/view/View;)V

    iput-object v1, p0, Lcom/henninghall/date_picker/PickerView;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    :cond_0
    const-string v1, "fadeToColor"

    .line 50
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/henninghall/date_picker/PickerView;->didUpdate([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/henninghall/date_picker/PickerView;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/ui/UIManager;->updateFadeToColor()V

    :cond_1
    const-string v1, "textColor"

    .line 54
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/henninghall/date_picker/PickerView;->didUpdate([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/henninghall/date_picker/PickerView;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/ui/UIManager;->updateTextColor()V

    :cond_2
    const-string v1, "mode"

    const-string v2, "is24hourSource"

    .line 58
    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/henninghall/date_picker/PickerView;->didUpdate([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 59
    iget-object v3, p0, Lcom/henninghall/date_picker/PickerView;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v3}, Lcom/henninghall/date_picker/ui/UIManager;->updateWheelVisibility()V

    :cond_3
    const-string v3, "height"

    .line 62
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/henninghall/date_picker/PickerView;->didUpdate([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    iget-object v3, p0, Lcom/henninghall/date_picker/PickerView;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v3}, Lcom/henninghall/date_picker/ui/UIManager;->updateHeight()V

    :cond_4
    const-string v3, "dividerHeight"

    .line 66
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/henninghall/date_picker/PickerView;->didUpdate([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 67
    iget-object v3, p0, Lcom/henninghall/date_picker/PickerView;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v3}, Lcom/henninghall/date_picker/ui/UIManager;->updateDividerHeight()V

    :cond_5
    const-string v3, "locale"

    .line 70
    filled-new-array {v1, v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henninghall/date_picker/PickerView;->didUpdate([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    iget-object v0, p0, Lcom/henninghall/date_picker/PickerView;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/ui/UIManager;->updateWheelOrder()V

    .line 74
    :cond_6
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henninghall/date_picker/PickerView;->didUpdate([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    iget-object v0, p0, Lcom/henninghall/date_picker/PickerView;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/ui/UIManager;->updateWheelPadding()V

    :cond_7
    const-string v4, "date"

    const-string v5, "height"

    const-string v6, "locale"

    const-string v7, "maximumDate"

    const-string v8, "minimumDate"

    const-string v9, "minuteInterval"

    const-string v10, "mode"

    const-string v11, "utc"

    const-string v12, "androidVariant"

    .line 78
    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henninghall/date_picker/PickerView;->didUpdate([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    iget-object v0, p0, Lcom/henninghall/date_picker/PickerView;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/ui/UIManager;->updateDisplayValues()V

    .line 85
    :cond_8
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henninghall/date_picker/PickerView;->didUpdate([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 86
    iget-object v0, p0, Lcom/henninghall/date_picker/PickerView;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/henninghall/date_picker/ui/Accessibility;->setLocale(Ljava/util/Locale;)V

    .line 89
    :cond_9
    iget-object v0, p0, Lcom/henninghall/date_picker/PickerView;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/ui/UIManager;->setWheelsToDate()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henninghall/date_picker/PickerView;->updatedProps:Ljava/util/ArrayList;

    return-void
.end method

.method public updateProp(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/henninghall/date_picker/PickerView;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0, p1, p2}, Lcom/henninghall/date_picker/State;->setProp(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V

    .line 103
    iget-object p2, p0, Lcom/henninghall/date_picker/PickerView;->updatedProps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
