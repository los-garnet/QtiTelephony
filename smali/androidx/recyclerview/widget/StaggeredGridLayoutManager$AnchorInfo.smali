.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mInvalidateOffsets:Z

.field mLayoutFromEnd:Z

.field mOffset:I

.field mPosition:I

.field mSpanReferenceLines:[I

.field mValid:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3294
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3295
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 2

    const/4 v0, -0x1

    .line 3299
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v1, -0x80000000

    .line 3300
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/4 v1, 0x0

    .line 3301
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 3302
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 3303
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 3304
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-eqz p0, :cond_0

    .line 3305
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method
