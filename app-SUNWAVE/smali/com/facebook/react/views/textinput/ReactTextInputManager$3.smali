.class Lcom/facebook/react/views/textinput/ReactTextInputManager$3;
.super Ljava/lang/Object;
.source "ReactTextInputManager.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;

.field final synthetic val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

.field final synthetic val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;

    iput-object p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iput-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1062
    iget-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSurfaceId()I

    move-result p1

    .line 1063
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-static {v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->access$000(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1065
    new-instance p2, Lcom/facebook/react/views/textinput/ReactTextInputFocusEvent;

    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1066
    invoke-virtual {v1}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v1

    invoke-direct {p2, p1, v1}, Lcom/facebook/react/views/textinput/ReactTextInputFocusEvent;-><init>(II)V

    .line 1065
    invoke-interface {v0, p2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    goto :goto_0

    .line 1068
    :cond_0
    new-instance p2, Lcom/facebook/react/views/textinput/ReactTextInputBlurEvent;

    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1069
    invoke-virtual {v1}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v1

    invoke-direct {p2, p1, v1}, Lcom/facebook/react/views/textinput/ReactTextInputBlurEvent;-><init>(II)V

    .line 1068
    invoke-interface {v0, p2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 1071
    new-instance p2, Lcom/facebook/react/views/textinput/ReactTextInputEndEditingEvent;

    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1073
    invoke-virtual {v1}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v2}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p1, v1, v2}, Lcom/facebook/react/views/textinput/ReactTextInputEndEditingEvent;-><init>(IILjava/lang/String;)V

    .line 1071
    invoke-interface {v0, p2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :goto_0
    return-void
.end method
