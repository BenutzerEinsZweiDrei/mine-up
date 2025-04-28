.class public interface abstract annotation Lcom/polidea/multiplatformbleadapter/utils/Constants$BluetoothState;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/multiplatformbleadapter/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "BluetoothState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final POWERED_OFF:Ljava/lang/String; = "PoweredOff"

.field public static final POWERED_ON:Ljava/lang/String; = "PoweredOn"

.field public static final RESETTING:Ljava/lang/String; = "Resetting"

.field public static final UNAUTHORIZED:Ljava/lang/String; = "Unauthorized"

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final UNSUPPORTED:Ljava/lang/String; = "Unsupported"
