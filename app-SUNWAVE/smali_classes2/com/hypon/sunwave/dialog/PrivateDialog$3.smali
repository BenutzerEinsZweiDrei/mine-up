.class Lcom/hypon/sunwave/dialog/PrivateDialog$3;
.super Ljava/lang/Object;
.source "PrivateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 118
    iput-object p1, p0, Lcom/hypon/sunwave/dialog/PrivateDialog$3;->this$0:Lcom/hypon/sunwave/dialog/PrivateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x54

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
