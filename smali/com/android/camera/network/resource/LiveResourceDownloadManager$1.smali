.class public Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;
.super Ljava/lang/Object;
.source "LiveResourceDownloadManager.java"

# interfaces
.implements Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/network/resource/LiveResourceDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/network/resource/LiveResourceDownloadManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestComplete(Lcom/android/camera/network/download/Request;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download finish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveResourceDownloadManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getTag()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    invoke-static {v0}, Lcom/android/camera/network/resource/LiveResourceDownloadManager;->access$100(Lcom/android/camera/network/resource/LiveResourceDownloadManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    invoke-static {v1}, Lcom/android/camera/network/resource/LiveResourceDownloadManager;->access$200(Lcom/android/camera/network/resource/LiveResourceDownloadManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    const/4 p2, 0x3

    invoke-static {p0, p1, p2}, Lcom/android/camera/network/resource/LiveResourceDownloadManager;->access$300(Lcom/android/camera/network/resource/LiveResourceDownloadManager;Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    const/4 p2, 0x4

    invoke-static {p0, p1, p2}, Lcom/android/camera/network/resource/LiveResourceDownloadManager;->access$300(Lcom/android/camera/network/resource/LiveResourceDownloadManager;Ljava/lang/String;I)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
