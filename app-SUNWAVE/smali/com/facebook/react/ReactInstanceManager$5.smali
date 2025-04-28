.class Lcom/facebook/react/ReactInstanceManager$5;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/ReactInstanceManager;->runCreateReactContextOnNewThread(Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/ReactInstanceManager;

.field final synthetic val$initParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    iput-object p2, p0, Lcom/facebook/react/ReactInstanceManager$5;->val$initParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1089
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->REACT_CONTEXT_THREAD_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1090
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$1000(Lcom/facebook/react/ReactInstanceManager;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 1091
    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v1}, Lcom/facebook/react/ReactInstanceManager;->access$1000(Lcom/facebook/react/ReactInstanceManager;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1093
    :try_start_1
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v1}, Lcom/facebook/react/ReactInstanceManager;->access$1000(Lcom/facebook/react/ReactInstanceManager;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1098
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1101
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->access$1102(Lcom/facebook/react/ReactInstanceManager;Z)Z

    const/4 v0, -0x4

    const/4 v1, 0x0

    .line 1105
    :try_start_3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1106
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->VM_INIT:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1107
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager$5;->val$initParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    .line 1109
    invoke-virtual {v2}, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;->getJsExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;->create()Lcom/facebook/react/bridge/JavaScriptExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager$5;->val$initParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    .line 1110
    invoke-virtual {v3}, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;->getJsBundleLoader()Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v3

    .line 1108
    invoke-static {v0, v2, v3}, Lcom/facebook/react/ReactInstanceManager;->access$1200(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1119
    :try_start_4
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v2, v1}, Lcom/facebook/react/ReactInstanceManager;->access$1302(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1120
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->PRE_SETUP_REACT_CONTEXT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1121
    new-instance v1, Lcom/facebook/react/ReactInstanceManager$5$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/ReactInstanceManager$5$1;-><init>(Lcom/facebook/react/ReactInstanceManager$5;)V

    .line 1131
    new-instance v2, Lcom/facebook/react/ReactInstanceManager$5$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/react/ReactInstanceManager$5$2;-><init>(Lcom/facebook/react/ReactInstanceManager$5;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 1149
    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 1150
    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1152
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v1}, Lcom/facebook/react/ReactInstanceManager;->access$700(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->handleException(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :catch_2
    move-exception v0

    .line 1113
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/react/ReactInstanceManager;->access$1102(Lcom/facebook/react/ReactInstanceManager;Z)Z

    .line 1114
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v2, v1}, Lcom/facebook/react/ReactInstanceManager;->access$1302(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1115
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v1}, Lcom/facebook/react/ReactInstanceManager;->access$700(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->handleException(Ljava/lang/Exception;)V

    return-void

    :catchall_0
    move-exception v1

    .line 1098
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method
