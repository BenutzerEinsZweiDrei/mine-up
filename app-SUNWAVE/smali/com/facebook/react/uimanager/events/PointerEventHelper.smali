.class public Lcom/facebook/react/uimanager/events/PointerEventHelper;
.super Ljava/lang/Object;
.source "PointerEventHelper.java"


# static fields
.field public static final POINTER_CANCEL:Ljava/lang/String; = "topPointerCancel"

.field public static final POINTER_DOWN:Ljava/lang/String; = "topPointerDown"

.field public static final POINTER_ENTER:Ljava/lang/String; = "topPointerEnter2"

.field public static final POINTER_LEAVE:Ljava/lang/String; = "topPointerLeave2"

.field public static final POINTER_MOVE:Ljava/lang/String; = "topPointerMove2"

.field public static final POINTER_TYPE_MOUSE:Ljava/lang/String; = "mouse"

.field public static final POINTER_TYPE_PEN:Ljava/lang/String; = "pen"

.field public static final POINTER_TYPE_TOUCH:Ljava/lang/String; = "touch"

.field public static final POINTER_TYPE_UNKNOWN:Ljava/lang/String; = ""

.field public static final POINTER_UP:Ljava/lang/String; = "topPointerUp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventCategory(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "topPointerLeave2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "topPointerEnter2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "topPointerCancel"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "topPointerUp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "topPointerDown"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "topPointerMove2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    return v4

    :pswitch_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a0ad3c7 -> :sswitch_5
        -0x4dc26016 -> :sswitch_4
        -0x3f7b441d -> :sswitch_3
        0x16d6f7c2 -> :sswitch_2
        0x1afa9da2 -> :sswitch_1
        0x266551a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getW3CPointerType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "mouse"

    return-object p0

    :cond_1
    const-string p0, "pen"

    return-object p0

    :cond_2
    const-string/jumbo p0, "touch"

    return-object p0
.end method

.method public static supportsHover(I)Z
    .locals 2

    .line 63
    invoke-static {p0}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->getW3CPointerType(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mouse"

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pen"

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "touch"

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method
