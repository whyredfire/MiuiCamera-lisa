.class public interface abstract Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;
.super Ljava/lang/Object;
.source "IBeautySettingBusiness.java"


# virtual methods
.method public abstract clearBeauty()V
.end method

.method public abstract getDefaultProgressByCurrentItem()I
.end method

.method public abstract getDisplayNameRes()I
.end method

.method public abstract getProgressByCurrentItem()I
.end method

.method public abstract getSupportedTypeArray(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onStateChanged()V
.end method

.method public abstract resetBeauty()V
.end method

.method public abstract setCurrentItemType(Lcom/android/camera/fragment/beauty/BeautyItem;)V
.end method

.method public abstract setDisplayNameRes(I)V
.end method

.method public abstract setProgressForCurrentItem(I)V
.end method

.method public abstract updateExtraTable()V
.end method
