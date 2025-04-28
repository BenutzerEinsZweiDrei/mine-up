.class public interface abstract Lnet/time4j/format/NumberSymbolProvider;
.super Ljava/lang/Object;
.source "NumberSymbolProvider.java"


# static fields
.field public static final DEFAULT:Lnet/time4j/format/NumberSymbolProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lnet/time4j/format/NumberSymbolProvider$1;

    invoke-direct {v0}, Lnet/time4j/format/NumberSymbolProvider$1;-><init>()V

    sput-object v0, Lnet/time4j/format/NumberSymbolProvider;->DEFAULT:Lnet/time4j/format/NumberSymbolProvider;

    return-void
.end method


# virtual methods
.method public abstract getAvailableLocales()[Ljava/util/Locale;
.end method

.method public abstract getDecimalSeparator(Ljava/util/Locale;)C
.end method

.method public abstract getDefaultNumberSystem(Ljava/util/Locale;)Lnet/time4j/format/NumberSystem;
.end method

.method public abstract getMinusSign(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getPlusSign(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getZeroDigit(Ljava/util/Locale;)C
.end method
