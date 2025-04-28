.class Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;
.super Landroid/text/style/ClickableSpan;
.source "PrivateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypon/sunwave/dialog/PrivateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CliclSpan"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mNum:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;


# direct methods
.method public constructor <init>(Lcom/hypon/sunwave/dialog/PrivateDialog;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;->this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;

    .line 201
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/hypon/sunwave/dialog/PrivateDialog;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;->this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;->mContext:Landroid/content/Context;

    .line 206
    iput-object p3, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;->mNum:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 211
    iget-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;->this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;

    invoke-static {p1}, Lcom/hypon/sunwave/dialog/PrivateDialog;->access$200(Lcom/hypon/sunwave/dialog/PrivateDialog;)Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;->mNum:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 213
    iget-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;->this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;

    invoke-static {p1}, Lcom/hypon/sunwave/dialog/PrivateDialog;->access$200(Lcom/hypon/sunwave/dialog/PrivateDialog;)Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;->userClick()V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;->this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;

    invoke-static {p1}, Lcom/hypon/sunwave/dialog/PrivateDialog;->access$200(Lcom/hypon/sunwave/dialog/PrivateDialog;)Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/hypon/sunwave/dialog/PrivateDialog$OnTipItemClickListener;->termsClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$CliclSpan;->mContext:Landroid/content/Context;

    const v1, 0x7f0600bd

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
