.class Lcom/hypon/sunwave/PrivacyPolicyActivity$1;
.super Ljava/lang/Object;
.source "PrivacyPolicyActivity.java"

# interfaces
.implements Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hypon/sunwave/PrivacyPolicyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;


# direct methods
.method constructor <init>(Lcom/hypon/sunwave/PrivacyPolicyActivity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancleClick()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    invoke-virtual {v0}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->finishAffinity()V

    return-void
.end method

.method public sureClick()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    invoke-static {v1}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->access$000(Lcom/hypon/sunwave/PrivacyPolicyActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    invoke-static {v0, v2}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->access$100(Lcom/hypon/sunwave/PrivacyPolicyActivity;I)V

    return-void
.end method

.method public termsClick()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    const-class v3, Lcom/hypon/sunwave/AgreementDetails;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->intent:Landroid/content/Intent;

    .line 58
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    iget-object v0, v0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    invoke-virtual {v1}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    iget-object v0, v0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    invoke-virtual {v1}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    iget-object v1, v0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    const v1, 0x7f010024

    const v2, 0x7f010028

    invoke-virtual {v0, v1, v2}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public userClick()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    const-class v3, Lcom/hypon/sunwave/AgreementDetails;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->intent:Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    iget-object v0, v0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    invoke-virtual {v1}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    iget-object v0, v0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    invoke-virtual {v1}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    iget-object v1, v0, Lcom/hypon/sunwave/PrivacyPolicyActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/hypon/sunwave/PrivacyPolicyActivity$1;->this$0:Lcom/hypon/sunwave/PrivacyPolicyActivity;

    const v1, 0x7f010024

    const v2, 0x7f010028

    invoke-virtual {v0, v1, v2}, Lcom/hypon/sunwave/PrivacyPolicyActivity;->overridePendingTransition(II)V

    return-void
.end method
