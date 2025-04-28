.class public abstract Lcl/json/social/SingleShareIntent;
.super Lcl/json/social/ShareIntent;
.source "SingleShareIntent.java"


# instance fields
.field protected appStoreURL:Ljava/lang/String;

.field protected playStoreURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcl/json/social/ShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcl/json/social/SingleShareIntent;->playStoreURL:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcl/json/social/SingleShareIntent;->appStoreURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getDefaultWebLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPlayStoreLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcl/json/social/SingleShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0, v1}, Lcl/json/social/SingleShareIntent;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "INSTALLED"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getComponentClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getComponentClass()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :goto_0
    invoke-super {p0, p1}, Lcl/json/social/ShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 43
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NOT INSTALLED"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getDefaultWebLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getDefaultWebLink()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 47
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/json/social/SingleShareIntent;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{url}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    .line 48
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/json/social/SingleShareIntent;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{message}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPlayStoreLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPlayStoreLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    .line 55
    :goto_1
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcl/json/social/SingleShareIntent;->setIntent(Landroid/content/Intent;)V

    .line 59
    :cond_5
    invoke-super {p0, p1}, Lcl/json/social/ShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method protected openIntentChooser()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcl/json/social/SingleShareIntent;->openIntentChooser(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method protected openIntentChooser(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcl/json/social/SingleShareIntent;->options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "forceDialog"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 92
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcl/json/social/SingleShareIntent;->options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcl/json/social/SingleShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "Something went wrong"

    aput-object v0, p1, v3

    .line 70
    invoke-static {v3, p1}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v1, "social"

    .line 74
    invoke-static {v1, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "social is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_2
    :goto_0
    invoke-static {}, Lcl/json/social/TargetChosenReceiver;->isSupported()Z

    move-result p1

    const/16 v1, 0x41cd

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz p1, :cond_3

    .line 79
    iget-object p1, p0, Lcl/json/social/SingleShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->getSharingSenderIntent(Lcom/facebook/react/bridge/ReactContext;)Landroid/content/IntentSender;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcl/json/social/SingleShareIntent;->chooserTitle:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p1

    .line 81
    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v7, p0, Lcl/json/social/SingleShareIntent;->chooserTitle:Ljava/lang/String;

    invoke-static {p1, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v5, p1, v3

    const-string v0, "OK"

    aput-object v0, p1, v4

    .line 87
    invoke-static {v4, p1}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    iget-object p1, p0, Lcl/json/social/SingleShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v5, p1, v3

    .line 92
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {v4, p1}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
