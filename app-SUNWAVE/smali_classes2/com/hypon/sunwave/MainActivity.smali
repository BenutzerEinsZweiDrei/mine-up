.class public Lcom/hypon/sunwave/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hypon/sunwave/MainActivity$MainActivityDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method

.method private clearApplicationCache(Landroid/content/Context;)V
    .locals 0

    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lcom/hypon/sunwave/MainActivity;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 39
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 40
    invoke-direct {p0, v3}, Lcom/hypon/sunwave/MainActivity;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
    .locals 2

    .line 63
    new-instance v0, Lcom/hypon/sunwave/MainActivity$MainActivityDelegate;

    invoke-virtual {p0}, Lcom/hypon/sunwave/MainActivity;->getMainComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hypon/sunwave/MainActivity$MainActivityDelegate;-><init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "app"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "onConfigurationChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "newConfig"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/hypon/sunwave/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x0

    .line 20
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/hypon/sunwave/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hypon/sunwave/MainActivity;->clearApplicationCache(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/hypon/sunwave/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "b84c8b7938"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
