.class public Lmiuix/appcompat/widget/Spinner$DropdownPopup;
.super Lmiuix/internal/widget/ListPopup;
.source "Spinner.java"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DropdownPopup"
.end annotation


# static fields
.field public static final INVALID_VALUE:I = -0x1

.field public static final SCREEN_MARGIN_BOTTOM_PROPORTION:F = 0.1f

.field public static final SCREEN_MARGIN_TOP_PROPORTION:F = 0.1f


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mFenceView:Landroid/view/View;

.field public mFenceX:I

.field public mHintText:Ljava/lang/CharSequence;

.field public mMarginScreen:I

.field public mOriginalHorizontalOffset:I

.field public final mVisibleRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 2
    invoke-direct {p0, p2}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    const/4 p3, -0x1

    .line 4
    iput p3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceX:I

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_screen:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    const p2, 0x800033

    .line 6
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setDropDownGravity(I)V

    .line 7
    new-instance p2, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;

    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;Lmiuix/appcompat/widget/Spinner;)V

    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private checkInFloatingWindowMode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lmiuix/appcompat/app/IActivity;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/IActivity;

    invoke-interface {v1}, Lmiuix/appcompat/app/IActivity;->isInFloatingWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setFenceView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private getListViewHeight()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    move v2, v1

    move v3, v2

    .line 3
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-interface {v0, v2, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 6
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 7
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 10
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 11
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 12
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/lit8 v3, p0, 0x0

    :cond_1
    return v3
.end method

.method private getxInWindow(IILandroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceX:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    iget v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    add-int/2addr p2, v1

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    add-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p2

    iget p3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p0

    sub-int/2addr p2, p0

    add-int/2addr p2, p1

    :goto_2
    return p2
.end method

.method private getyInWindow(ILandroid/view/View;I)F
    .locals 5

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getListViewHeight()I

    move-result v0

    int-to-float p1, p1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    :cond_0
    add-float v1, p1, v0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v4

    sub-float/2addr p1, v0

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3f4ccccc    # 0.79999995f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_2
    int-to-float p0, p3

    add-float/2addr p1, p0

    return p1
.end method

.method private initListView(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 5
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSelection(I)V

    .line 7
    invoke-virtual {v0, p0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method private showWithAnchor(Landroid/view/View;FF)V
    .locals 4

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 1
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    float-to-int p2, p2

    const/4 v0, 0x1

    .line 2
    aget v1, p3, v0

    .line 3
    iget-object v2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 4
    :cond_0
    invoke-virtual {v2, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    aget v0, p3, v0

    const/4 v3, 0x0

    .line 6
    aget p3, p3, v3

    invoke-direct {p0, p3, p2, v2}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getxInWindow(IILandroid/view/View;)I

    move-result p2

    sub-int/2addr v1, v0

    .line 7
    invoke-direct {p0, v1, v2, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getyInWindow(ILandroid/view/View;I)F

    move-result p3

    .line 8
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    float-to-int p3, p3

    .line 9
    invoke-virtual {p0, p1, v3, p2, p3}, Lmiuix/internal/widget/ListPopup;->showAtLocation(Landroid/view/View;III)V

    .line 10
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    float-to-int p1, p3

    .line 11
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, p1, p3, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeContentWidth()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, v1, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v0

    .line 6
    iget-object v2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v2

    .line 7
    iget-object v3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getWidth()I

    move-result v3

    .line 8
    iget-object v4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget v5, v4, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 9
    iget-object v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 10
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 11
    invoke-virtual {v4, v5, v6}, Lmiuix/appcompat/widget/Spinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 12
    iget-object v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v6, v6, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    .line 14
    iget v6, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 15
    iget v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p0, v5}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 17
    :goto_2
    iget-object v4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-static {v4}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 18
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    .line 19
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getHorizontalOriginalOffset()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getHorizontalOriginalOffset()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 21
    :goto_3
    invoke-virtual {p0, v1}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    return p0
.end method

.method public isVisibleToUser(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setContentWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget v0, v0, Lmiuix/appcompat/widget/Spinner;->mDropDownMaxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget v0, v0, Lmiuix/appcompat/widget/Spinner;->mDropDownMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    invoke-super {p0, p1}, Lmiuix/internal/widget/ListPopup;->setContentWidth(I)V

    return-void
.end method

.method public setFenceView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    return-void
.end method

.method public setFenceX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceX:I

    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public show(II)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->show(IIFF)V

    return-void
.end method

.method public show(IIFF)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->checkInFloatingWindowMode()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->computeContentWidth()V

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, v1, p3, p4}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->showWithAnchor(Landroid/view/View;FF)V

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->initListView(II)V

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    new-instance p1, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;

    invoke-direct {p1, p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method
