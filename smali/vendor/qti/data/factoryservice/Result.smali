.class public Lvendor/qti/data/factoryservice/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/data/factoryservice/Result;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lvendor/qti/data/factoryservice/Result$1;

    invoke-direct {v0}, Lvendor/qti/data/factoryservice/Result$1;-><init>()V

    sput-object v0, Lvendor/qti/data/factoryservice/Result;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    .line 38
    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_3

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    add-int/2addr v0, v1

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 43
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/data/factoryservice/Result;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    add-int/2addr v0, v1

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 43
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 38
    :cond_3
    :try_start_2
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_4

    .line 43
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/2addr v0, v1

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget p0, p0, Lvendor/qti/data/factoryservice/Result;->status:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
