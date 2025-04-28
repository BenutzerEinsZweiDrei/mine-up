.class public abstract Lnet/time4j/android/TimeApplication;
.super Landroid/app/Application;
.source "TimeApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    .line 52
    invoke-static {p0, v0}, Lnet/time4j/android/ApplicationStarter;->initialize(Landroid/content/Context;Z)V

    return-void
.end method
