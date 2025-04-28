.class public Lcom/hypon/sunwave/PrivacyPolicyActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PrivacyPolicyActivity.java"


# instance fields
.field private DIALOG_SHOW:Ljava/lang/String;

.field intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "dialog_show"

    .line 13
    iput-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->DIALOG_SHOW:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/hypon/sunwave/PrivacyPolicyActivity;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->DIALOG_SHOW:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hypon/sunwave/PrivacyPolicyActivity;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->goHome(I)V

    return-void
.end method

.method private goHome(I)V
    .locals 1

    .line 69
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hypon/sunwave/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->intent:Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, p1}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x10a0000

    const v0, 0x10a0001

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->overridePendingTransition(II)V

    .line 72
    invoke-virtual {p0}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 18
    invoke-virtual {p0, p1}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->setContentView(I)V

    const-string p1, "data"

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->DIALOG_SHOW:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3e8

    .line 22
    invoke-direct {p0, p1}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->goHome(I)V

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/hypon/sunwave/dialog/PrivateDialog;->getInstace()Lcom/hypon/sunwave/dialog/PrivateDialog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0021

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/hypon/sunwave/dialog/PrivateDialog;->title(Ljava/lang/String;)Lcom/hypon/sunwave/dialog/PrivateDialog;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hypon/sunwave/dialog/PrivateDialog;->message(Ljava/lang/String;)Lcom/hypon/sunwave/dialog/PrivateDialog;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hypon/sunwave/dialog/PrivateDialog;->sure(Ljava/lang/String;)Lcom/hypon/sunwave/dialog/PrivateDialog;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hypon/sunwave/dialog/PrivateDialog;->cancle(Ljava/lang/String;)Lcom/hypon/sunwave/dialog/PrivateDialog;

    move-result-object p1

    new-instance v0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;

    invoke-direct {v0, p0}, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;-><init>(Lcom/hypon/sunwave/PrivacyPolicyActivity;)V

    .line 30
    invoke-virtual {p1, v0}, Lcom/hypon/sunwave/dialog/PrivateDialog;->setOnTipItemClickListener(Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;)Lcom/hypon/sunwave/dialog/PrivateDialog;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p0}, Lcom/hypon/sunwave/dialog/PrivateDialog;->create(Landroid/content/Context;)V

    return-void
.end method
