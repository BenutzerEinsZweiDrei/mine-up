.class public Lcom/henninghall/date_picker/props/UtcProp;
.super Lcom/henninghall/date_picker/props/Prop;
.source "UtcProp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/henninghall/date_picker/props/Prop<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final name:Ljava/lang/String; = "utc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/henninghall/date_picker/props/Prop;-><init>()V

    return-void
.end method


# virtual methods
.method toValue(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Boolean;
    .locals 0

    .line 10
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic toValue(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/henninghall/date_picker/props/UtcProp;->toValue(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
