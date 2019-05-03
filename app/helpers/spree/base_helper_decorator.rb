module Spree
  BaseHelper.class_eval do

    def itsites_simple_slider
      slides = Spree::ItsitesSimpleSlider.all
      items=""

      slides.each do |i|
        items+="<div class='im'>#{link_to(image_tag(i.img.url(:slide), alt: i.name), i.url || 'javascript:void(0)')}</div>"
      end

      content="
              <div class='container' data-hook='itsites_simple_slider'>
                <div class='row'>
                  <div class='slii'>
                    #{items}
                  </div>
                </div>
              </div>
            "
        return raw content
    end

  end
end