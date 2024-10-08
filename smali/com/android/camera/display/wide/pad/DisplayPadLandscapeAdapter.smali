.class public Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;
.super Lcom/android/camera/display/wide/DisplayBaseLandPad;
.source "DisplayPadLandscapeAdapter.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/display/DisplayParameter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/display/wide/DisplayBaseLandPad;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    return-void
.end method


# virtual methods
.method public checkScreenSize(II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    if-ne v0, p1, :cond_0

    iget p0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBackgroundLeftMargin()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getBottomBarHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getBottomHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getBottomMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getBottomBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getBottomMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCenterDisplayHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget p0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    return p0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 0

    const-string p0, "16:10"

    return-object p0
.end method

.method public getDragDistanceFix()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getBottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getDragLayoutTopMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getBottomBarHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getTopBarHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getTopBarHeight()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v3, v3, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getBottomBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 5
    iget-object v4, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v4, v4, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getBottomBarHeight()I

    move-result p0

    sub-int/2addr v4, p0

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 0

    const/4 p0, 0x2

    if-eqz p1, :cond_0

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    new-array p0, p0, [I

    .line 2
    fill-array-data p0, :array_1

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f110048
        0x7f110040
    .end array-data

    :array_1
    .array-data 4
        0x7f110044
        0x7f11003c
    .end array-data
.end method

.method public getMoreModeRect()Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getTopBarHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v1, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getBottomHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->getMarginStart()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->getCenterDisplayWidth()I

    move-result p0

    add-int/2addr p0, v2

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v0, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getMoreModeTabMarginVer(Landroid/content/Context;IZ)I
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070627

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getMoreModeTabRow(IZ)I

    move-result p0

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getModeItemWidth(Landroid/content/Context;)I

    move-result p1

    mul-int/2addr p1, p0

    sub-int/2addr p3, p1

    add-int/lit8 p0, p0, 0x1

    div-int/2addr p3, p0

    return p3
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getSquareBottomCoverHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getBottomHeight()I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method public getTipsMarginTop(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/display/wide/pad/DisplayPadLandscapeAdapter;->getTopBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070854

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getTopBarHeight()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    iget p0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40900000    # 4.5f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getTopBarWidth(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getTopCoverHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTopMargin()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
