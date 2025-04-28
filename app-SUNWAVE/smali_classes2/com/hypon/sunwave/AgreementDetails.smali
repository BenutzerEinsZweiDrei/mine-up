.class public Lcom/hypon/sunwave/AgreementDetails;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AgreementDetails.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 16
    invoke-virtual {p0, p1}, Lcom/hypon/sunwave/AgreementDetails;->setContentView(I)V

    .line 17
    invoke-virtual {p0}, Lcom/hypon/sunwave/AgreementDetails;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f090054

    .line 18
    invoke-virtual {p0, v0}, Lcom/hypon/sunwave/AgreementDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090159

    .line 19
    invoke-virtual {p0, v1}, Lcom/hypon/sunwave/AgreementDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09006f

    .line 20
    invoke-virtual {p0, v2}, Lcom/hypon/sunwave/AgreementDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "title"

    .line 21
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "content"

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    new-instance p1, Lcom/hypon/sunwave/AgreementDetails$1;

    invoke-direct {p1, p0}, Lcom/hypon/sunwave/AgreementDetails$1;-><init>(Lcom/hypon/sunwave/AgreementDetails;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
