.class Lcom/facebook/react/modules/statusbar/StatusBarModule$4;
.super Ljava/lang/Object;
.source "StatusBarModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/statusbar/StatusBarModule;->setStyle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/statusbar/StatusBarModule;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$style:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/statusbar/StatusBarModule;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/facebook/react/modules/statusbar/StatusBarModule$4;->this$0:Lcom/facebook/react/modules/statusbar/StatusBarModule;

    iput-object p2, p0, Lcom/facebook/react/modules/statusbar/StatusBarModule$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/facebook/react/modules/statusbar/StatusBarModule$4;->val$style:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "dark-content"

    const/16 v2, 0x1e

    if-le v0, v2, :cond_1

    .line 194
    iget-object v0, p0, Lcom/facebook/react/modules/statusbar/StatusBarModule$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/facebook/react/modules/statusbar/StatusBarModule$4;->val$style:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 197
    invoke-interface {v0, v2, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 201
    invoke-interface {v0, v1, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_1

    .line 204
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    .line 205
    iget-object v0, p0, Lcom/facebook/react/modules/statusbar/StatusBarModule$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 207
    iget-object v3, p0, Lcom/facebook/react/modules/statusbar/StatusBarModule$4;->val$style:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit16 v1, v2, 0x2000

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v2, -0x2001

    .line 212
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method
