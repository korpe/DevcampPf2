module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_default
  end

  def set_page_default
    @page_title = "DevcampPf2 | My Portfolio Website"
    @seo_keywords = "Pekka Korhosen salkku"
  end
end