.class public LOooO0O0/OooO00o/OooO00o/OooO0oo$OooO;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0O0/OooO00o/OooO00o/OooO0oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO0O0/OooO00o/OooO00o/OooO0oo;


# direct methods
.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooO0oo$OooO;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooO0oo$OooO;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-static {p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0oo;)LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooO0oo$OooO;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-static {p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0oo;)LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    move-result-object p1

    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooO0oo$OooO;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-static {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(LOooO0O0/OooO00o/OooO00o/OooO0oo;)LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o0;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o()F

    move-result p0

    invoke-virtual {p1, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooO00o(F)V

    :cond_0
    return-void
.end method
