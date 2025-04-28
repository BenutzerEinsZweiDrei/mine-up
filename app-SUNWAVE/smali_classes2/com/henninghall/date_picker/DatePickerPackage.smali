.class public Lcom/henninghall/date_picker/DatePickerPackage;
.super Ljava/lang/Object;
.source "DatePickerPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# static fields
.field public static context:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 18
    sput-object p1, Lcom/henninghall/date_picker/DatePickerPackage;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/react/bridge/NativeModule;

    .line 19
    new-instance v1, Lcom/henninghall/date_picker/DatePickerModule;

    invoke-direct {v1, p1}, Lcom/henninghall/date_picker/DatePickerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .line 26
    sput-object p1, Lcom/henninghall/date_picker/DatePickerPackage;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/facebook/react/uimanager/ViewManager;

    .line 27
    new-instance v0, Lcom/henninghall/date_picker/DatePickerManager;

    invoke-direct {v0}, Lcom/henninghall/date_picker/DatePickerManager;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
