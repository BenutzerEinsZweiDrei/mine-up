.class public interface abstract Lcom/henninghall/date_picker/pickers/Picker;
.super Ljava/lang/Object;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListener;,
        Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListenerInScrolling;
    }
.end annotation


# virtual methods
.method public abstract getDisplayedValues()[Ljava/lang/String;
.end method

.method public abstract getMaxValue()I
.end method

.method public abstract getValue()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getWrapSelectorWheel()Z
.end method

.method public abstract isSpinning()Z
.end method

.method public abstract setDisplayedValues([Ljava/lang/String;)V
.end method

.method public abstract setDividerHeight(I)V
.end method

.method public abstract setItemPaddingHorizontal(I)V
.end method

.method public abstract setMaxValue(I)V
.end method

.method public abstract setMinValue(I)V
.end method

.method public abstract setOnValueChangeListenerInScrolling(Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListenerInScrolling;)V
.end method

.method public abstract setOnValueChangedListener(Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListener;)V
.end method

.method public abstract setShownCount(I)V
.end method

.method public abstract setTextAlign(Landroid/graphics/Paint$Align;)V
.end method

.method public abstract setTextColor(Ljava/lang/String;)V
.end method

.method public abstract setValue(I)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract setWrapSelectorWheel(Z)V
.end method

.method public abstract smoothScrollToValue(I)V
.end method

.method public abstract smoothScrollToValue(IZ)V
.end method
