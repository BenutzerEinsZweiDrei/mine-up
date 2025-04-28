.class synthetic Lnet/time4j/format/PluralRules$1;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$time4j$format$NumberType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 205
    invoke-static {}, Lnet/time4j/format/NumberType;->values()[Lnet/time4j/format/NumberType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/time4j/format/PluralRules$1;->$SwitchMap$net$time4j$format$NumberType:[I

    :try_start_0
    sget-object v1, Lnet/time4j/format/NumberType;->CARDINALS:Lnet/time4j/format/NumberType;

    invoke-virtual {v1}, Lnet/time4j/format/NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/time4j/format/PluralRules$1;->$SwitchMap$net$time4j$format$NumberType:[I

    sget-object v1, Lnet/time4j/format/NumberType;->ORDINALS:Lnet/time4j/format/NumberType;

    invoke-virtual {v1}, Lnet/time4j/format/NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
