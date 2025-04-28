.class public Lcom/beefe/picker/PickerViewModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "PickerViewModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# static fields
.field private static final ERROR_NOT_INIT:Ljava/lang/String; = "please initialize the component first"

.field private static final EVENT_KEY_CANCEL:Ljava/lang/String; = "cancel"

.field private static final EVENT_KEY_CONFIRM:Ljava/lang/String; = "confirm"

.field private static final EVENT_KEY_SELECTED:Ljava/lang/String; = "select"

.field private static final FONTS:Ljava/lang/String; = "fonts/"

.field private static final IS_LOOP:Ljava/lang/String; = "isLoop"

.field private static final OTF:Ljava/lang/String; = ".otf"

.field private static final PICKER_BG_COLOR:Ljava/lang/String; = "pickerBg"

.field private static final PICKER_CANCEL_BTN_COLOR:Ljava/lang/String; = "pickerCancelBtnColor"

.field private static final PICKER_CANCEL_BTN_TEXT:Ljava/lang/String; = "pickerCancelBtnText"

.field private static final PICKER_CONFIRM_BTN_COLOR:Ljava/lang/String; = "pickerConfirmBtnColor"

.field private static final PICKER_CONFIRM_BTN_TEXT:Ljava/lang/String; = "pickerConfirmBtnText"

.field private static final PICKER_DATA:Ljava/lang/String; = "pickerData"

.field private static final PICKER_EVENT_NAME:Ljava/lang/String; = "pickerEvent"

.field private static final PICKER_FONT_FAMILY:Ljava/lang/String; = "pickerFontFamily"

.field private static final PICKER_TEXT_COLOR:Ljava/lang/String; = "pickerFontColor"

.field private static final PICKER_TEXT_ELLIPSIS_LEN:Ljava/lang/String; = "pickerTextEllipsisLen"

.field private static final PICKER_TEXT_SIZE:Ljava/lang/String; = "pickerFontSize"

.field private static final PICKER_TITLE_TEXT:Ljava/lang/String; = "pickerTitleText"

.field private static final PICKER_TITLE_TEXT_COLOR:Ljava/lang/String; = "pickerTitleColor"

.field private static final PICKER_TOOL_BAR_BG:Ljava/lang/String; = "pickerToolBarBg"

.field private static final PICKER_TOOL_BAR_HEIGHT:Ljava/lang/String; = "pickerToolBarHeight"

.field private static final PICKER_TOOL_BAR_TEXT_SIZE:Ljava/lang/String; = "pickerToolBarFontSize"

.field private static final REACT_CLASS:Ljava/lang/String; = "BEEPickerManager"

.field private static final SELECTED_VALUE:Ljava/lang/String; = "selectedValue"

.field private static final TTF:Ljava/lang/String; = ".ttf"

.field private static final WEIGHTS:Ljava/lang/String; = "wheelFlex"


# instance fields
.field private cancelText:Ljava/lang/String;

.field private confirmText:Ljava/lang/String;

.field private curStatus:I

.field private dialog:Landroid/app/Dialog;

.field private isLoop:Z

.field private pickerTextEllipsisLen:I

.field private pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

.field private pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

.field private returnData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/beefe/picker/view/ReturnData;",
            ">;"
        }
    .end annotation
.end field

.field private titleText:Ljava/lang/String;

.field private weights:[D


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 141
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/beefe/picker/PickerViewModule;->isLoop:Z

    .line 142
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/beefe/picker/PickerViewModule;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/beefe/picker/PickerViewModule;->curStatus:I

    return p0
.end method

.method static synthetic access$102(Lcom/beefe/picker/PickerViewModule;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/beefe/picker/PickerViewModule;->returnData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/beefe/picker/PickerViewModule;)Lcom/beefe/picker/view/PickerViewAlone;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    return-object p0
.end method

.method static synthetic access$300(Lcom/beefe/picker/PickerViewModule;)Lcom/beefe/picker/view/PickerViewLinkage;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    return-object p0
.end method

.method static synthetic access$400(Lcom/beefe/picker/PickerViewModule;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/beefe/picker/PickerViewModule;->commonEvent(Ljava/lang/String;)V

    return-void
.end method

.method private commonEvent(Ljava/lang/String;)V
    .locals 5

    .line 518
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string/jumbo v1, "type"

    .line 519
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 521
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 522
    iget-object v2, p0, Lcom/beefe/picker/PickerViewModule;->returnData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/beefe/picker/view/ReturnData;

    .line 523
    invoke-virtual {v3}, Lcom/beefe/picker/view/ReturnData;->getIndex()I

    move-result v4

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 524
    invoke-virtual {v3}, Lcom/beefe/picker/view/ReturnData;->getItem()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "selectedValue"

    .line 526
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string v1, "selectedIndex"

    .line 527
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 528
    invoke-virtual {p0}, Lcom/beefe/picker/PickerViewModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-string v1, "pickerEvent"

    invoke-direct {p0, p1, v1, v0}, Lcom/beefe/picker/PickerViewModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method private getColor(Lcom/facebook/react/bridge/ReadableArray;)[I
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 465
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v0, v1

    goto :goto_1

    .line 470
    :cond_1
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getSelectedValue(Lcom/facebook/react/bridge/ReadableArray;)[Ljava/lang/String;
    .locals 7

    .line 483
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    move v3, v1

    .line 485
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 486
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReadableType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "Boolean"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "String"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "Number"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 488
    :pswitch_0
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 498
    :pswitch_1
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 492
    :pswitch_2
    :try_start_0
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 494
    :catch_0
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 501
    :goto_2
    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

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

.method private select([Ljava/lang/String;)V
    .locals 2

    .line 507
    iget v0, p0, Lcom/beefe/picker/PickerViewModule;->curStatus:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/PickerViewLinkage;->setSelectValue([Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/PickerViewAlone;->setSelectValue([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 534
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 535
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 536
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public _init(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 17
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/beefe/picker/PickerViewModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1a

    const-string v3, "pickerData"

    .line 153
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 154
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/beefe/picker/R$layout;->picker_view:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 155
    sget v5, Lcom/beefe/picker/R$id;->barLayout:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 156
    sget v7, Lcom/beefe/picker/R$id;->cancel:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 157
    sget v8, Lcom/beefe/picker/R$id;->title:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 158
    sget v9, Lcom/beefe/picker/R$id;->confirm:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 159
    sget v10, Lcom/beefe/picker/R$id;->pickerLayout:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 160
    sget v11, Lcom/beefe/picker/R$id;->pickerViewLinkage:I

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/beefe/picker/view/PickerViewLinkage;

    iput-object v11, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    .line 161
    sget v11, Lcom/beefe/picker/R$id;->pickerViewAlone:I

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/beefe/picker/view/PickerViewAlone;

    iput-object v11, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    const-string v11, "pickerToolBarHeight"

    .line 164
    invoke-interface {v1, v11}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 166
    :try_start_0
    invoke-interface {v1, v11}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    invoke-interface {v1, v11}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-int v11, v11

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x42200000    # 40.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 173
    :goto_0
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v12, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v12, "pickerToolBarBg"

    .line 178
    invoke-interface {v1, v12}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x3

    const/4 v13, 0x1

    const/4 v6, 0x0

    if-eqz v14, :cond_1

    .line 179
    invoke-interface {v1, v12}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v12

    .line 180
    invoke-direct {v0, v12}, Lcom/beefe/picker/PickerViewModule;->getColor(Lcom/facebook/react/bridge/ReadableArray;)[I

    move-result-object v12

    .line 181
    aget v14, v12, v15

    aget v15, v12, v6

    aget v6, v12, v13

    const/16 v16, 0x2

    aget v12, v12, v16

    invoke-static {v14, v15, v6, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_1
    const-string v5, "pickerToolBarFontSize"

    .line 184
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 185
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    .line 186
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 187
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 188
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    const-string v5, "pickerConfirmBtnText"

    .line 191
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 192
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/beefe/picker/PickerViewModule;->confirmText:Ljava/lang/String;

    .line 194
    :cond_3
    iget-object v5, v0, Lcom/beefe/picker/PickerViewModule;->confirmText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ""

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/beefe/picker/PickerViewModule;->confirmText:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v5, v6

    :goto_1
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "pickerConfirmBtnColor"

    .line 196
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 197
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v5

    .line 198
    invoke-direct {v0, v5}, Lcom/beefe/picker/PickerViewModule;->getColor(Lcom/facebook/react/bridge/ReadableArray;)[I

    move-result-object v5

    const/4 v12, 0x3

    .line 199
    aget v14, v5, v12

    const/4 v12, 0x0

    aget v15, v5, v12

    aget v12, v5, v13

    const/16 v16, 0x2

    aget v5, v5, v16

    invoke-static {v14, v15, v12, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    :cond_5
    new-instance v5, Lcom/beefe/picker/PickerViewModule$1;

    invoke-direct {v5, v0}, Lcom/beefe/picker/PickerViewModule$1;-><init>(Lcom/beefe/picker/PickerViewModule;)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "pickerTitleText"

    .line 218
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 219
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/beefe/picker/PickerViewModule;->titleText:Ljava/lang/String;

    .line 221
    :cond_6
    iget-object v5, v0, Lcom/beefe/picker/PickerViewModule;->titleText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lcom/beefe/picker/PickerViewModule;->titleText:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "pickerTitleColor"

    .line 222
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 223
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v5

    .line 224
    invoke-direct {v0, v5}, Lcom/beefe/picker/PickerViewModule;->getColor(Lcom/facebook/react/bridge/ReadableArray;)[I

    move-result-object v5

    const/4 v12, 0x3

    .line 225
    aget v14, v5, v12

    const/4 v12, 0x0

    aget v15, v5, v12

    aget v12, v5, v13

    const/16 v16, 0x2

    aget v5, v5, v16

    invoke-static {v14, v15, v12, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    const-string v5, "pickerCancelBtnText"

    .line 228
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 229
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/beefe/picker/PickerViewModule;->cancelText:Ljava/lang/String;

    .line 231
    :cond_9
    iget-object v5, v0, Lcom/beefe/picker/PickerViewModule;->cancelText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v6, v0, Lcom/beefe/picker/PickerViewModule;->cancelText:Ljava/lang/String;

    :cond_a
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "pickerCancelBtnColor"

    .line 232
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 233
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v5

    .line 234
    invoke-direct {v0, v5}, Lcom/beefe/picker/PickerViewModule;->getColor(Lcom/facebook/react/bridge/ReadableArray;)[I

    move-result-object v5

    const/4 v6, 0x3

    .line 235
    aget v12, v5, v6

    const/4 v6, 0x0

    aget v14, v5, v6

    aget v6, v5, v13

    const/4 v15, 0x2

    aget v5, v5, v15

    invoke-static {v12, v14, v6, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    :cond_b
    new-instance v5, Lcom/beefe/picker/PickerViewModule$2;

    invoke-direct {v5, v0}, Lcom/beefe/picker/PickerViewModule$2;-><init>(Lcom/beefe/picker/PickerViewModule;)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "pickerTextEllipsisLen"

    .line 253
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 254
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/beefe/picker/PickerViewModule;->pickerTextEllipsisLen:I

    :cond_c
    const-string v5, "isLoop"

    .line 257
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 258
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/beefe/picker/PickerViewModule;->isLoop:Z

    :cond_d
    const-string/jumbo v5, "wheelFlex"

    .line 261
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 262
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v5

    .line 263
    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    new-array v6, v6, [D

    iput-object v6, v0, Lcom/beefe/picker/PickerViewModule;->weights:[D

    const/4 v6, 0x0

    .line 264
    :goto_3
    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v12

    if-ge v6, v12, :cond_10

    .line 265
    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/facebook/react/bridge/ReadableType;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    const-string v14, "Number"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "String"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 281
    iget-object v12, v0, Lcom/beefe/picker/PickerViewModule;->weights:[D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v12, v6

    goto :goto_4

    .line 275
    :cond_e
    :try_start_1
    iget-object v12, v0, Lcom/beefe/picker/PickerViewModule;->weights:[D

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    aput-wide v14, v12, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 277
    :catch_1
    iget-object v12, v0, Lcom/beefe/picker/PickerViewModule;->weights:[D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v12, v6

    goto :goto_4

    .line 268
    :cond_f
    :try_start_2
    iget-object v12, v0, Lcom/beefe/picker/PickerViewModule;->weights:[D

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v14

    int-to-double v14, v14

    aput-wide v14, v12, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 270
    :catch_2
    iget-object v12, v0, Lcom/beefe/picker/PickerViewModule;->weights:[D

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v14

    aput-wide v14, v12, v6

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_10
    const/high16 v5, -0x1000000

    const-string v6, "pickerFontColor"

    .line 288
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v5, "pickerFontColor"

    .line 289
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v5

    .line 290
    invoke-direct {v0, v5}, Lcom/beefe/picker/PickerViewModule;->getColor(Lcom/facebook/react/bridge/ReadableArray;)[I

    move-result-object v5

    const/4 v6, 0x3

    .line 291
    aget v12, v5, v6

    const/4 v6, 0x0

    aget v14, v5, v6

    aget v6, v5, v13

    const/4 v15, 0x2

    aget v5, v5, v15

    invoke-static {v12, v14, v6, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    :cond_11
    const/16 v6, 0x10

    const-string v12, "pickerFontSize"

    .line 295
    invoke-interface {v1, v12}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 297
    :try_start_3
    invoke-interface {v1, v12}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 299
    :catch_3
    invoke-interface {v1, v12}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-int v6, v14

    .line 303
    :cond_12
    :goto_5
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    const/4 v12, 0x0

    .line 306
    invoke-interface {v3, v12}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/facebook/react/bridge/ReadableType;->name()Ljava/lang/String;

    move-result-object v14

    .line 307
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    const-string v15, "Map"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/16 v15, 0x8

    if-nez v14, :cond_13

    .line 329
    iput v12, v0, Lcom/beefe/picker/PickerViewModule;->curStatus:I

    .line 330
    iget-object v14, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-virtual {v14, v12}, Lcom/beefe/picker/view/PickerViewAlone;->setVisibility(I)V

    .line 331
    iget-object v12, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-virtual {v12, v15}, Lcom/beefe/picker/view/PickerViewLinkage;->setVisibility(I)V

    .line 333
    iget-object v12, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    iget-object v14, v0, Lcom/beefe/picker/PickerViewModule;->weights:[D

    invoke-virtual {v12, v3, v14}, Lcom/beefe/picker/view/PickerViewAlone;->setPickerData(Lcom/facebook/react/bridge/ReadableArray;[D)V

    .line 334
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-virtual {v3, v5}, Lcom/beefe/picker/view/PickerViewAlone;->setTextColor(I)V

    .line 335
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    int-to-float v5, v6

    invoke-virtual {v3, v5}, Lcom/beefe/picker/view/PickerViewAlone;->setTextSize(F)V

    .line 336
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    iget v5, v0, Lcom/beefe/picker/PickerViewModule;->pickerTextEllipsisLen:I

    invoke-virtual {v3, v5}, Lcom/beefe/picker/view/PickerViewAlone;->setTextEllipsisLen(I)V

    .line 337
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    iget-boolean v5, v0, Lcom/beefe/picker/PickerViewModule;->isLoop:Z

    invoke-virtual {v3, v5}, Lcom/beefe/picker/view/PickerViewAlone;->setIsLoop(Z)V

    .line 339
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    new-instance v5, Lcom/beefe/picker/PickerViewModule$4;

    invoke-direct {v5, v0}, Lcom/beefe/picker/PickerViewModule$4;-><init>(Lcom/beefe/picker/PickerViewModule;)V

    invoke-virtual {v3, v5}, Lcom/beefe/picker/view/PickerViewAlone;->setOnSelectedListener(Lcom/beefe/picker/view/OnSelectedListener;)V

    .line 347
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-virtual {v3}, Lcom/beefe/picker/view/PickerViewAlone;->getViewHeight()I

    move-result v3

    goto :goto_6

    .line 309
    :cond_13
    iput v13, v0, Lcom/beefe/picker/PickerViewModule;->curStatus:I

    .line 310
    iget-object v12, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/beefe/picker/view/PickerViewLinkage;->setVisibility(I)V

    .line 311
    iget-object v12, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-virtual {v12, v15}, Lcom/beefe/picker/view/PickerViewAlone;->setVisibility(I)V

    .line 313
    iget-object v12, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    iget-object v14, v0, Lcom/beefe/picker/PickerViewModule;->weights:[D

    invoke-virtual {v12, v3, v14}, Lcom/beefe/picker/view/PickerViewLinkage;->setPickerData(Lcom/facebook/react/bridge/ReadableArray;[D)V

    .line 314
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-virtual {v3, v5}, Lcom/beefe/picker/view/PickerViewLinkage;->setTextColor(I)V

    .line 315
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    int-to-float v5, v6

    invoke-virtual {v3, v5}, Lcom/beefe/picker/view/PickerViewLinkage;->setTextSize(F)V

    .line 316
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    iget v5, v0, Lcom/beefe/picker/PickerViewModule;->pickerTextEllipsisLen:I

    invoke-virtual {v3, v5}, Lcom/beefe/picker/view/PickerViewLinkage;->setTextEllipsisLen(I)V

    .line 317
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    iget-boolean v5, v0, Lcom/beefe/picker/PickerViewModule;->isLoop:Z

    invoke-virtual {v3, v5}, Lcom/beefe/picker/view/PickerViewLinkage;->setIsLoop(Z)V

    .line 319
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    new-instance v5, Lcom/beefe/picker/PickerViewModule$3;

    invoke-direct {v5, v0}, Lcom/beefe/picker/PickerViewModule$3;-><init>(Lcom/beefe/picker/PickerViewModule;)V

    invoke-virtual {v3, v5}, Lcom/beefe/picker/view/PickerViewLinkage;->setOnSelectListener(Lcom/beefe/picker/view/OnSelectedListener;)V

    .line 326
    iget-object v3, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-virtual {v3}, Lcom/beefe/picker/view/PickerViewLinkage;->getViewHeight()I

    move-result v3

    :goto_6
    const-string v5, "pickerFontFamily"

    .line 351
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 353
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "pickerFontFamily"

    .line 354
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 356
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fonts/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".ttf"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 357
    invoke-static {v5, v12}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    .line 360
    :catch_4
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fonts/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".otf"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 361
    invoke-static {v5, v12}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    const/4 v5, 0x0

    .line 364
    :try_start_6
    invoke-static {v6, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    const/4 v6, 0x0

    .line 369
    :goto_7
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 370
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 371
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 373
    iget-object v5, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewAlone:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-virtual {v5, v6}, Lcom/beefe/picker/view/PickerViewAlone;->setTypeface(Landroid/graphics/Typeface;)V

    .line 374
    iget-object v5, v0, Lcom/beefe/picker/PickerViewModule;->pickerViewLinkage:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-virtual {v5, v6}, Lcom/beefe/picker/view/PickerViewLinkage;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_14
    const-string v5, "selectedValue"

    .line 377
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "selectedValue"

    .line 378
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v5

    .line 379
    invoke-direct {v0, v5}, Lcom/beefe/picker/PickerViewModule;->getSelectedValue(Lcom/facebook/react/bridge/ReadableArray;)[Ljava/lang/String;

    move-result-object v5

    .line 380
    invoke-direct {v0, v5}, Lcom/beefe/picker/PickerViewModule;->select([Ljava/lang/String;)V

    :cond_15
    const-string v5, "pickerBg"

    .line 383
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "pickerBg"

    .line 384
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    .line 385
    invoke-direct {v0, v1}, Lcom/beefe/picker/PickerViewModule;->getColor(Lcom/facebook/react/bridge/ReadableArray;)[I

    move-result-object v1

    const/4 v5, 0x3

    .line 386
    aget v5, v1, v5

    const/4 v6, 0x0

    aget v6, v1, v6

    aget v7, v1, v13

    const/4 v8, 0x2

    aget v1, v1, v8

    invoke-static {v5, v6, v7, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_16
    add-int/2addr v11, v3

    .line 390
    iget-object v1, v0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_19

    .line 391
    new-instance v1, Landroid/app/Dialog;

    sget v3, Lcom/beefe/picker/R$style;->Dialog_Full_Screen:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    .line 392
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 393
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 394
    iget-object v2, v0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 396
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_17

    const/16 v3, 0x7d3

    .line 397
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_8

    .line 399
    :cond_17
    invoke-static {}, Lcom/beefe/picker/util/MIUIUtils;->isMIUI()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x2

    .line 400
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 405
    :cond_18
    :goto_8
    iput v15, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x2

    .line 406
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 407
    sget v3, Lcom/beefe/picker/R$style;->PickerAnim:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v3, -0x1

    .line 408
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 409
    iput v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x50

    .line 410
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 411
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_9

    .line 414
    :cond_19
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 415
    iget-object v1, v0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_1a
    :goto_9
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "BEEPickerManager"

    return-object v0
.end method

.method public hide()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public isPickerShow(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "please initialize the component first"

    aput-object v1, v0, v2

    .line 457
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 459
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/beefe/picker/PickerViewModule;->hide()V

    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 546
    invoke-virtual {p0}, Lcom/beefe/picker/PickerViewModule;->hide()V

    const/4 v0, 0x0

    .line 547
    iput-object v0, p0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method

.method public select(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "please initialize the component first"

    aput-object v1, p1, v0

    .line 424
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 428
    :cond_1
    invoke-direct {p0, p1}, Lcom/beefe/picker/PickerViewModule;->getSelectedValue(Lcom/facebook/react/bridge/ReadableArray;)[Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-direct {p0, p1}, Lcom/beefe/picker/PickerViewModule;->select([Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    .line 437
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/beefe/picker/PickerViewModule;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
