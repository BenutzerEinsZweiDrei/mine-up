.class Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;
.super Ljava/lang/Object;
.source "AttributeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/expert/AttributeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumericalSymbols"
.end annotation


# instance fields
.field private final decimalSeparator:C

.field private final minus:Ljava/lang/String;

.field private final numsys:Lnet/time4j/format/NumberSystem;

.field private final plus:Ljava/lang/String;

.field private final zeroDigit:C


# direct methods
.method constructor <init>(Lnet/time4j/format/NumberSystem;CCLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object p1, p0, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->numsys:Lnet/time4j/format/NumberSystem;

    .line 463
    iput-char p2, p0, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->zeroDigit:C

    .line 464
    iput-char p3, p0, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->decimalSeparator:C

    .line 465
    iput-object p4, p0, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->plus:Ljava/lang/String;

    .line 466
    iput-object p5, p0, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->minus:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;)Lnet/time4j/format/NumberSystem;
    .locals 0

    .line 441
    iget-object p0, p0, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->numsys:Lnet/time4j/format/NumberSystem;

    return-object p0
.end method

.method static synthetic access$100(Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;)C
    .locals 0

    .line 441
    iget-char p0, p0, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->zeroDigit:C

    return p0
.end method

.method static synthetic access$200(Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;)C
    .locals 0

    .line 441
    iget-char p0, p0, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->decimalSeparator:C

    return p0
.end method

.method static synthetic access$300(Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;)Ljava/lang/String;
    .locals 0

    .line 441
    iget-object p0, p0, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->plus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;)Ljava/lang/String;
    .locals 0

    .line 441
    iget-object p0, p0, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->minus:Ljava/lang/String;

    return-object p0
.end method
