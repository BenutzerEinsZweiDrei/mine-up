.class Lcom/hypon/sunwave/AgreementDetails$1;
.super Ljava/lang/Object;
.source "AgreementDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hypon/sunwave/AgreementDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hypon/sunwave/AgreementDetails;


# direct methods
.method constructor <init>(Lcom/hypon/sunwave/AgreementDetails;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/hypon/sunwave/AgreementDetails$1;->this$0:Lcom/hypon/sunwave/AgreementDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/hypon/sunwave/AgreementDetails$1;->this$0:Lcom/hypon/sunwave/AgreementDetails;

    invoke-virtual {p1}, Lcom/hypon/sunwave/AgreementDetails;->finish()V

    return-void
.end method
