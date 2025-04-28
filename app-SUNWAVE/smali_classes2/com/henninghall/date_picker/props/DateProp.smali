.class public Lcom/henninghall/date_picker/props/DateProp;
.super Lcom/henninghall/date_picker/props/Prop;
.source "DateProp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/henninghall/date_picker/props/Prop<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final name:Ljava/lang/String; = "date"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/henninghall/date_picker/props/Prop;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic toValue(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/henninghall/date_picker/props/DateProp;->toValue(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toValue(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/String;
    .locals 0

    .line 10
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
