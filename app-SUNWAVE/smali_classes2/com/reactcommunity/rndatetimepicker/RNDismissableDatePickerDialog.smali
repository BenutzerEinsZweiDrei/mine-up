.class public Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "RNDismissableDatePickerDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;IIILcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;)V
    .locals 6

    .line 54
    invoke-direct/range {p0 .. p6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;->fixSpinner(Landroid/content/Context;IIILcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;IIILcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;)V
    .locals 6

    .line 42
    invoke-direct/range {p0 .. p5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;->fixSpinner(Landroid/content/Context;IIILcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;)V

    return-void
.end method

.method private fixSpinner(Landroid/content/Context;IIILcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p5

    const-string v3, "android.widget.DatePickerSpinnerDelegate"

    .line 68
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v6, 0x18

    if-ne v4, v6, :cond_0

    sget-object v4, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->SPINNER:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    if-ne v2, v4, :cond_0

    :try_start_0
    const-string v4, "com.android.internal.R$styleable"

    .line 71
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "DatePicker"

    .line 72
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v6, 0x0

    .line 73
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const v7, 0x101035c

    .line 74
    invoke-virtual {v0, v6, v4, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    const-class v4, Landroid/app/DatePickerDialog;

    const-class v8, Landroid/widget/DatePicker;

    const-string v9, "mDatePicker"

    invoke-static {v4, v8, v9}, Lcom/reactcommunity/rndatetimepicker/ReflectionHelper;->findField(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    .line 78
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 79
    const-class v9, Landroid/widget/DatePicker;

    const-string v10, "mDelegate"

    invoke-static {v9, v8, v10}, Lcom/reactcommunity/rndatetimepicker/ReflectionHelper;->findField(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 80
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 82
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 86
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v9, v3, :cond_0

    .line 87
    invoke-virtual {v8, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v4}, Landroid/widget/DatePicker;->removeAllViews()V

    .line 89
    const-class v3, Landroid/widget/DatePicker;

    const-string v9, "createSpinnerUIDelegate"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v5

    const-class v12, Landroid/util/AttributeSet;

    const/4 v13, 0x1

    aput-object v12, v11, v13

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x2

    aput-object v12, v11, v14

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    aput-object v12, v11, v15

    .line 90
    invoke-virtual {v3, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 96
    invoke-virtual {v3, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v0, v9, v5

    aput-object v6, v9, v13

    .line 99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v15

    invoke-virtual {v3, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    invoke-virtual {v8, v4, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v4, v5}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    move/from16 v0, p2

    move/from16 v3, p3

    move/from16 v6, p4

    .line 103
    invoke-virtual {v4, v0, v3, v6, v1}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 109
    :cond_0
    :goto_0
    sget-object v0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->SPINNER:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    if-ne v2, v0, :cond_1

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 2

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 63
    invoke-super {p0}, Landroid/app/DatePickerDialog;->onStop()V

    :cond_0
    return-void
.end method
