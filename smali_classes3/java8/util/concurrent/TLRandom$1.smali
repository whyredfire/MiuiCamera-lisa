.class public final Ljava8/util/concurrent/TLRandom$1;
.super Ljava/lang/ThreadLocal;
.source "TLRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/TLRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava8/util/concurrent/TLRandom$SeedsHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava8/util/concurrent/TLRandom$1;->initialValue()Ljava8/util/concurrent/TLRandom$SeedsHolder;

    move-result-object p0

    return-object p0
.end method

.method public initialValue()Ljava8/util/concurrent/TLRandom$SeedsHolder;
    .locals 1

    .line 2
    new-instance p0, Ljava8/util/concurrent/TLRandom$SeedsHolder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava8/util/concurrent/TLRandom$SeedsHolder;-><init>(Ljava8/util/concurrent/TLRandom$1;)V

    return-object p0
.end method
