.class public Lcom/hypon/sunwave/dialog/PrivateDialog;
.super Ljava/lang/Object;
.source "PrivateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;,
        Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;
    }
.end annotation


# static fields
.field private static instace:Lcom/hypon/sunwave/dialog/PrivateDialog;


# instance fields
.field private cancle:Ljava/lang/String;

.field private clickTiem:F

.field private listener:Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;

.field private message:Ljava/lang/String;

.field private sure:Ljava/lang/String;

.field private tipDialog:Landroid/app/Dialog;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->title:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->clickTiem:F

    return-void
.end method

.method static synthetic access$002(Lcom/hypon/sunwave/dialog/PrivateDialog;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->clickTiem:F

    return p1
.end method

.method static synthetic access$100(Lcom/hypon/sunwave/dialog/PrivateDialog;)Landroid/app/Dialog;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hypon/sunwave/dialog/PrivateDialog;)Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->listener:Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;

    return-object p0
.end method

.method public static getInstace()Lcom/hypon/sunwave/dialog/PrivateDialog;
    .locals 2

    .line 35
    sget-object v0, Lcom/hypon/sunwave/dialog/PrivateDialog;->instace:Lcom/hypon/sunwave/dialog/PrivateDialog;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/hypon/sunwave/dialog/PrivateDialog;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/hypon/sunwave/dialog/PrivateDialog;->instace:Lcom/hypon/sunwave/dialog/PrivateDialog;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/hypon/sunwave/dialog/PrivateDialog;

    invoke-direct {v1}, Lcom/hypon/sunwave/dialog/PrivateDialog;-><init>()V

    sput-object v1, Lcom/hypon/sunwave/dialog/PrivateDialog;->instace:Lcom/hypon/sunwave/dialog/PrivateDialog;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/hypon/sunwave/dialog/PrivateDialog;->instace:Lcom/hypon/sunwave/dialog/PrivateDialog;

    return-object v0
.end method


# virtual methods
.method public cancle(Ljava/lang/String;)Lcom/hypon/sunwave/dialog/PrivateDialog;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->cancle:Ljava/lang/String;

    return-object p0
.end method

.method public create(Landroid/content/Context;)V
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/hypon/sunwave/dialog/PrivateDialog;->showConnectDialog(Landroid/content/Context;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method public message(Ljava/lang/String;)Lcom/hypon/sunwave/dialog/PrivateDialog;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setOnTipItemClickListener(Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;)Lcom/hypon/sunwave/dialog/PrivateDialog;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->listener:Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;

    return-object p0
.end method

.method public showConnectDialog(Landroid/content/Context;)V
    .locals 13

    .line 61
    invoke-virtual {p0}, Lcom/hypon/sunwave/dialog/PrivateDialog;->dismiss()V

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->clickTiem:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c001e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090168

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090167

    .line 71
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090165

    .line 72
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090166

    .line 73
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 74
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v8, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, p0, p1, v9}, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;-><init>(Lcom/hypon/sunwave/dialog/PrivateDialog;Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f00ba

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00b8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x11

    .line 75
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 77
    new-instance v8, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, p0, p1, v9}, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;-><init>(Lcom/hypon/sunwave/dialog/PrivateDialog;Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f00bb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0f00b9

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 77
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 79
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 83
    iget-object v3, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 89
    iget-object v2, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->cancle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->cancle:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->sure:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->sure:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/hypon/sunwave/dialog/PrivateDialog$1;

    invoke-direct {v3, p0}, Lcom/hypon/sunwave/dialog/PrivateDialog$1;-><init>(Lcom/hypon/sunwave/dialog/PrivateDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v2, Lcom/hypon/sunwave/dialog/PrivateDialog$2;

    invoke-direct {v2, p0}, Lcom/hypon/sunwave/dialog/PrivateDialog$2;-><init>(Lcom/hypon/sunwave/dialog/PrivateDialog;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/hypon/sunwave/dialog/PrivateDialog$3;

    invoke-direct {v3, p0}, Lcom/hypon/sunwave/dialog/PrivateDialog$3;-><init>(Lcom/hypon/sunwave/dialog/PrivateDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 128
    iget-object v2, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 129
    iget-object v2, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 130
    iget-object v2, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 131
    iget-object v1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    const-string v0, "window"

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 136
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    int-to-double v1, p1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 139
    iget-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->tipDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public sure(Ljava/lang/String;)Lcom/hypon/sunwave/dialog/PrivateDialog;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->sure:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/hypon/sunwave/dialog/PrivateDialog;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog;->title:Ljava/lang/String;

    return-object p0
.end method
