.class public Lcom/henninghall/date_picker/props/Is24hourSourceProp;
.super Lcom/henninghall/date_picker/props/Prop;
.source "Is24hourSourceProp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/henninghall/date_picker/props/Prop<",
        "Lcom/henninghall/date_picker/models/Is24HourSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final name:Ljava/lang/String; = "is24hourSource"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/henninghall/date_picker/props/Prop;-><init>()V

    return-void
.end method


# virtual methods
.method public toValue(Lcom/facebook/react/bridge/Dynamic;)Lcom/henninghall/date_picker/models/Is24HourSource;
    .locals 0

    .line 11
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/henninghall/date_picker/models/Is24HourSource;->valueOf(Ljava/lang/String;)Lcom/henninghall/date_picker/models/Is24HourSource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toValue(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/henninghall/date_picker/props/Is24hourSourceProp;->toValue(Lcom/facebook/react/bridge/Dynamic;)Lcom/henninghall/date_picker/models/Is24HourSource;

    move-result-object p1

    return-object p1
.end method
