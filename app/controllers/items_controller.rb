class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    # 上の行はインスタンスを作っただけ。saveメソッドで保存しないと、消える。
    if @item.save

    # saveの後にshow(商品詳細ページ)に飛ぶ設定をします。
    # これを設定しないと、プログラムが行き場をなくしてエラーが起きます。
      # redirect_to @item
      # redirect_to item_url(@item.id)
      # リンク先のパスとしてモデルオブジェクトが渡された場合、
      # Railsはオブジェクトを一意に表す値、つまり、idを取得しようします。だから最終的には、redirect_to @itemは、redirect_to item_url(@item.id)と等価となります

      redirect_to "/items"
      # だとindexページにリダイレクトする
    else
      render 'new'

    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to @item
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private

    def item_params
      params.require(:item).permit(:name, :price, :seller, :description, :email, :image_url)
    end
end
# <input type="datetime" value="2019-03-07 10:20:47.681420"" name="item[created_at]" id="item_created_at">