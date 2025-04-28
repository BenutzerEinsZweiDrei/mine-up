.class public Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNPDFPdfViewManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U:",
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "TT;+",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        ">;:",
        "Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface<",
        "TT;>;>",
        "Lcom/facebook/react/uimanager/BaseViewManagerDelegate<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/BaseViewManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    return-void
.end method


# virtual methods
.method public receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "setNativePage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setNativePage(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "showsHorizontalScrollIndicator"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "enableDoubleTapZoom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "horizontal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "enableAntialiasing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "singlePage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "fitPolicy"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "maxScale"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "scale"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "page"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_b
    const-string v0, "enableRTL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_c
    const-string v0, "enableAnnotationRendering"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_d
    const-string v0, "showsVerticalScrollIndicator"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_e
    const-string v0, "scrollEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_f
    const-string v0, "minScale"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_10
    const-string v0, "enablePaging"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_11
    const-string v0, "spacing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    move v2, v1

    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 45
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_12

    goto :goto_1

    :cond_12
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setShowsHorizontalScrollIndicator(Landroid/view/View;Z)V

    goto/16 :goto_13

    .line 63
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_13

    goto :goto_2

    :cond_13
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setEnableDoubleTapZoom(Landroid/view/View;Z)V

    goto/16 :goto_13

    .line 42
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_14

    goto :goto_3

    :cond_14
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_3
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setHorizontal(Landroid/view/View;Z)V

    goto/16 :goto_13

    .line 66
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_15

    goto :goto_4

    :cond_15
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_4
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setEnableAntialiasing(Landroid/view/View;Z)V

    goto/16 :goto_13

    .line 75
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_16

    goto :goto_5

    :cond_16
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_5
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setPassword(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 78
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_17

    goto :goto_6

    :cond_17
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_6
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setSinglePage(Landroid/view/View;Z)V

    goto/16 :goto_13

    .line 69
    :pswitch_6
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_18

    goto :goto_7

    :cond_18
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_7
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setFitPolicy(Landroid/view/View;I)V

    goto/16 :goto_13

    .line 39
    :pswitch_7
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_19

    goto :goto_8

    :cond_19
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_8
    invoke-interface {p2, p1, v3}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setMaxScale(Landroid/view/View;F)V

    goto/16 :goto_13

    .line 33
    :pswitch_8
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_1a

    goto :goto_9

    :cond_1a
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_9
    invoke-interface {p2, p1, v3}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setScale(Landroid/view/View;F)V

    goto/16 :goto_13

    .line 27
    :pswitch_9
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_1b

    goto :goto_a

    :cond_1b
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_a
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setPath(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 30
    :pswitch_a
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_1c

    goto :goto_b

    :cond_1c
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_b
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setPage(Landroid/view/View;I)V

    goto/16 :goto_13

    .line 57
    :pswitch_b
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_1d

    goto :goto_c

    :cond_1d
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_c
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setEnableRTL(Landroid/view/View;Z)V

    goto/16 :goto_13

    .line 60
    :pswitch_c
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_1e

    goto :goto_d

    :cond_1e
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_d
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setEnableAnnotationRendering(Landroid/view/View;Z)V

    goto :goto_13

    .line 48
    :pswitch_d
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_1f

    goto :goto_e

    :cond_1f
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_e
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setShowsVerticalScrollIndicator(Landroid/view/View;Z)V

    goto :goto_13

    .line 51
    :pswitch_e
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_20

    goto :goto_f

    :cond_20
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_f
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setScrollEnabled(Landroid/view/View;Z)V

    goto :goto_13

    .line 36
    :pswitch_f
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_21

    goto :goto_10

    :cond_21
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_10
    invoke-interface {p2, p1, v3}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setMinScale(Landroid/view/View;F)V

    goto :goto_13

    .line 54
    :pswitch_10
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_22

    goto :goto_11

    :cond_22
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_11
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setEnablePaging(Landroid/view/View;Z)V

    goto :goto_13

    .line 72
    :pswitch_11
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;

    if-nez p3, :cond_23

    goto :goto_12

    :cond_23
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_12
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNPDFPdfViewManagerInterface;->setSpacing(Landroid/view/View;I)V

    :goto_13
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77ef1bbd -> :sswitch_11
        -0x6abf4511 -> :sswitch_10
        -0x523c69e8 -> :sswitch_f
        -0x449b944c -> :sswitch_e
        -0x36f6028a -> :sswitch_d
        -0x27378a66 -> :sswitch_c
        -0x25a67a19 -> :sswitch_b
        0x34628f -> :sswitch_a
        0x346425 -> :sswitch_9
        0x683094a -> :sswitch_8
        0x17a23246 -> :sswitch_7
        0x35c50ca3 -> :sswitch_6
        0x3672f6f7 -> :sswitch_5
        0x4889ba9b -> :sswitch_4
        0x4df72e17 -> :sswitch_3
        0x52b58c24 -> :sswitch_2
        0x5bc08442 -> :sswitch_1
        0x7232cc88 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
