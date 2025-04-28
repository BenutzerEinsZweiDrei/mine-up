.class public Lcom/henninghall/date_picker/DatePickerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "DatePickerModule.java"


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    .line 24
    invoke-static {p1, v0}, Lnet/time4j/android/ApplicationStarter;->initialize(Landroid/content/Context;Z)V

    return-void
.end method

.method private createDialog(Lcom/facebook/react/bridge/ReadableMap;Lcom/henninghall/date_picker/PickerView;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)Landroid/app/AlertDialog;
    .locals 5

    const-string v0, "title"

    .line 46
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "confirmText"

    .line 47
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancelText"

    .line 48
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-direct {p0, p2}, Lcom/henninghall/date_picker/DatePickerModule;->withTopMargin(Lcom/henninghall/date_picker/PickerView;)Landroid/view/View;

    move-result-object v2

    .line 51
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/henninghall/date_picker/DatePickerPackage;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 53
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/henninghall/date_picker/DatePickerModule$3;

    invoke-direct {v2, p0, p3, p2}, Lcom/henninghall/date_picker/DatePickerModule$3;-><init>(Lcom/henninghall/date_picker/DatePickerModule;Lcom/facebook/react/bridge/Callback;Lcom/henninghall/date_picker/PickerView;)V

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/henninghall/date_picker/DatePickerModule$2;

    invoke-direct {p3, p0, p4}, Lcom/henninghall/date_picker/DatePickerModule$2;-><init>(Lcom/henninghall/date_picker/DatePickerModule;Lcom/facebook/react/bridge/Callback;)V

    .line 61
    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/henninghall/date_picker/DatePickerModule$1;

    invoke-direct {p2, p0, p4}, Lcom/henninghall/date_picker/DatePickerModule$1;-><init>(Lcom/henninghall/date_picker/DatePickerModule;Lcom/facebook/react/bridge/Callback;)V

    .line 67
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method private createPicker(Lcom/facebook/react/bridge/ReadableMap;)Lcom/henninghall/date_picker/PickerView;
    .locals 5

    .line 78
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xb4

    .line 80
    invoke-static {v1}, Lcom/henninghall/date_picker/Utils;->toDp(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    new-instance v1, Lcom/henninghall/date_picker/PickerView;

    invoke-direct {v1, v0}, Lcom/henninghall/date_picker/PickerView;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 83
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v3

    const-string v4, "style"

    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/henninghall/date_picker/PickerView;->updateProp(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v1}, Lcom/henninghall/date_picker/PickerView;->update()V

    return-object v1
.end method

.method private withTopMargin(Lcom/henninghall/date_picker/PickerView;)Landroid/view/View;
    .locals 4

    .line 99
    new-instance v0, Landroid/widget/LinearLayout;

    sget-object v1, Lcom/henninghall/date_picker/DatePickerPackage;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p1, 0x14

    .line 105
    invoke-static {p1}, Lcom/henninghall/date_picker/Utils;->toDp(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNDatePicker"

    return-object v0
.end method

.method public openPicker(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/henninghall/date_picker/DatePickerModule;->createPicker(Lcom/facebook/react/bridge/ReadableMap;)Lcom/henninghall/date_picker/PickerView;

    move-result-object v0

    .line 40
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/henninghall/date_picker/DatePickerModule;->createDialog(Lcom/facebook/react/bridge/ReadableMap;Lcom/henninghall/date_picker/PickerView;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method
