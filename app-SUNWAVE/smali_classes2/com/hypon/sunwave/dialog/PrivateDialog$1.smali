.class Lcom/hypon/sunwave/dialog/PrivateDialog$1;
.super Ljava/lang/Object;
.source "PrivateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hypon/sunwave/dialog/PrivateDialog;->showConnectDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;


# direct methods
.method constructor <init>(Lcom/hypon/sunwave/dialog/PrivateDialog;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$1;->this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$1;->this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-static {p1, v0}, Lcom/hypon/sunwave/dialog/PrivateDialog;->access$002(Lcom/hypon/sunwave/dialog/PrivateDialog;F)F

    .line 101
    iget-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$1;->this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;

    invoke-static {p1}, Lcom/hypon/sunwave/dialog/PrivateDialog;->access$100(Lcom/hypon/sunwave/dialog/PrivateDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 102
    iget-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$1;->this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;

    invoke-static {p1}, Lcom/hypon/sunwave/dialog/PrivateDialog;->access$200(Lcom/hypon/sunwave/dialog/PrivateDialog;)Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$1;->this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;

    invoke-static {p1}, Lcom/hypon/sunwave/dialog/PrivateDialog;->access$200(Lcom/hypon/sunwave/dialog/PrivateDialog;)Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;->cancleClick()V

    :cond_0
    return-void
.end method
