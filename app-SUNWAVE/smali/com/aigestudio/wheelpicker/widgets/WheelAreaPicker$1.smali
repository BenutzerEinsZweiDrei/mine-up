.class Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker$1;
.super Ljava/lang/Object;
.source "WheelAreaPicker.java"

# interfaces
.implements Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;->addListenerToWheelPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;


# direct methods
.method constructor <init>(Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker$1;->this$0:Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/aigestudio/wheelpicker/WheelPicker;Ljava/lang/Object;I)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker$1;->this$0:Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;

    invoke-static {p1}, Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;->access$100(Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/aigestudio/wheelpicker/model/Province;

    invoke-virtual {p2}, Lcom/aigestudio/wheelpicker/model/Province;->getCity()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;->access$002(Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;Ljava/util/List;)Ljava/util/List;

    .line 118
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker$1;->this$0:Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;

    invoke-static {p1, p3}, Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;->access$200(Lcom/aigestudio/wheelpicker/widgets/WheelAreaPicker;I)V

    return-void
.end method
