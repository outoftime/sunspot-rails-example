class SearchesController < ApplicationController
  def show
    @search = Post.search do
      if params[:q].present?
        keywords(params[:q]) do
          highlight :body
        end
      end
      if params[:cat].present?
        with(:category_id, params[:cat].to_i)
      end
      if params[:tags].present?
        with(:tags).all_of(params[:tags])
      end
      with(:published_at).less_than(Time.now)
      facet :category_id
      facet :tags, :limit => 10
      if params[:q].blank?
        order_by :published_at, :desc
      end
      paginate(:page => params[:page], :per_page => 10)
      data_accessor_for(Post).include = :category
    end
  end
end
