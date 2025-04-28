.class public Lcom/henninghall/date_picker/props/MinuteIntervalProp;
.super Lcom/henninghall/date_picker/props/Prop;
.source "MinuteIntervalProp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/henninghall/date_picker/props/Prop<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final name:Ljava/lang/String; = "minuteInterval"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henninghall/date_picker/props/Prop;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public toValue(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Integer;
    .locals 0

    .line 14
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toValue(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/henninghall/date_picker/props/MinuteIntervalProp;->toValue(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
