class HomeController < ApplicationController
  

  def index
  end


  def store
    require 'roo'
    data = Roo::Spreadsheet.open(params['file'].tempfile)
    @cont = 0
    data.each() do |row|
      
      if @cont > 0
        # abort row[0]
        
        if !client = Client.where(name: row[0]).first
         client = Client.create(name: row[0]) 
        end
        
        if !product = Product.where(description: row[1]).first
          product = Product.create(description: row[1], price:row[2])
        end
        if !seller = Seller.where(name: row[5]).first
          seller = Seller.create(name: row[5], address: row[4])
        end
        sale = Sale.create(client_id:client.id,seller_id:seller.id,product_id:product.id,price:row[2],number:row[3],total:(row[2] * row[3]))
        # abort puts client.id
      end
      @cont += 1
    end
    render "home/index"
   # abort
   #  render json: data.row(2)[0]
    # render json: params['file'].tempfile
  end
end
