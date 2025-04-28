.class Lcom/henninghall/date_picker/State$1;
.super Ljava/util/HashMap;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henninghall/date_picker/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/henninghall/date_picker/props/Prop;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henninghall/date_picker/State;


# direct methods
.method constructor <init>(Lcom/henninghall/date_picker/State;)V
    .locals 2

    .line 44
    iput-object p1, p0, Lcom/henninghall/date_picker/State$1;->this$0:Lcom/henninghall/date_picker/State;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$000(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/DateProp;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$100(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/ModeProp;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$200(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/LocaleProp;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$300(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/FadeToColorProp;

    move-result-object v0

    const-string v1, "fadeToColor"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$400(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/TextColorProp;

    move-result-object v0

    const-string v1, "textColor"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$500(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/MinuteIntervalProp;

    move-result-object v0

    const-string v1, "minuteInterval"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$600(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/MinimumDateProp;

    move-result-object v0

    const-string v1, "minimumDate"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$700(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/MaximumDateProp;

    move-result-object v0

    const-string v1, "maximumDate"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$800(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/UtcProp;

    move-result-object v0

    const-string v1, "utc"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$900(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/HeightProp;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$1000(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/VariantProp;

    move-result-object v0

    const-string v1, "androidVariant"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$1100(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/DividerHeightProp;

    move-result-object v0

    const-string v1, "dividerHeight"

    invoke-virtual {p0, v1, v0}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p1}, Lcom/henninghall/date_picker/State;->access$1200(Lcom/henninghall/date_picker/State;)Lcom/henninghall/date_picker/props/Is24hourSourceProp;

    move-result-object p1

    const-string v0, "is24hourSource"

    invoke-virtual {p0, v0, p1}, Lcom/henninghall/date_picker/State$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
