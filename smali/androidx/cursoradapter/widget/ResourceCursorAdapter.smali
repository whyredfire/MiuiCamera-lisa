.class public abstract Landroidx/cursoradapter/widget/ResourceCursorAdapter;
.super Landroidx/cursoradapter/widget/CursorAdapter;
.source "ResourceCursorAdapter.java"


# instance fields
.field public mDropDownLayout:I

.field public mInflater:Landroid/view/LayoutInflater;

.field public mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 2
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p3, p4}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 8
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-direct {p0, p1, p3, p4}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 5
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p0, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p0, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    return-void
.end method

.method public setViewResource(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    return-void
.end method
