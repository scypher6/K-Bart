class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items
    end
    def create
        byebug
        item = Item.create(name:params[:name],seller_id:params[:user].id,buyer_id:User.all.first,category:params[:category],price:params[:price],description:params[:description])
       if item.valid?
            render json: item
       else
            render json: "fix your stuff"
       end
    end

private
def item_params
    params.permit(:name, :buyer,:seller,:category)
end

end