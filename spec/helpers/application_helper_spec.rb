RSpec.describe ApplicationHelper, type: :helper do
  describe '#image_or_placeholder' do
    it 'Returns URL When Not Nil' do
      image_url = 'http://example.com/image.png'
      expect(helper.image_or_placeholder({ url: image_url })).to be(image_url)
    end

    it 'Returns Placeholder URl With Specified Options' do
      expect(
        helper.image_or_placeholder({ url: nil, size: 100, seed: 'my-image' })
      ).to eq('https://picsum.photos/seed/my-image/100')
    end
  end

  describe '#categories_navigation' do
    require 'minify_html'
    before { create(:category) }

    it 'Returns Navigation For All Categories' do
      expect(MinifyHtml.minify(helper.categories_navigation)).to(
        eq('<ul class="flex space-x-4"><li class=uppercase><a class=hover:underline href=/category/Random%20Category>Random Category</a></ul>')
      )
    end
  end
end
