.class final Lcom/beefe/picker/view/OnItemSelectedRunnable;
.super Ljava/lang/Object;
.source "OnItemSelectedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final loopView:Lcom/beefe/picker/view/LoopView;


# direct methods
.method constructor <init>(Lcom/beefe/picker/view/LoopView;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/beefe/picker/view/OnItemSelectedRunnable;->loopView:Lcom/beefe/picker/view/LoopView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/beefe/picker/view/OnItemSelectedRunnable;->loopView:Lcom/beefe/picker/view/LoopView;

    iget-object v0, v0, Lcom/beefe/picker/view/LoopView;->onItemSelectedListener:Lcom/beefe/picker/view/OnItemSelectedListener;

    iget-object v1, p0, Lcom/beefe/picker/view/OnItemSelectedRunnable;->loopView:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v1}, Lcom/beefe/picker/view/LoopView;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/beefe/picker/view/OnItemSelectedRunnable;->loopView:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v2}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/beefe/picker/view/OnItemSelectedListener;->onItemSelected(Ljava/lang/String;I)V

    return-void
.end method
