class ItemsController < ApplicationController
  def index
    page = params[:current_page]&.to_i || 1
    page_type = params[:page_type]
    keyword = params[:keyword] || "楽天"
    @items = RakutenWebService::Ichiba::Item.search(keyword: keyword, hits: 20, page: curricurate_page(page,page_type))
  end

  private

  def curricurate_page(page, page_type)
    if page > 1 && page_type == "prev"
      page -= 1
    elsif page_type == "next"
      page += 1
    else
      page
    end
  end
end
