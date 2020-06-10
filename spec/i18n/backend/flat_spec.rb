RSpec.describe I18n::Backend::Flat do
  def setup
    # super
    # I18n.load_path = ['/en.yml']
  end

  describe "simple backend translate: given true as a key" do
    let(:backend) { I18n.backend = I18n::Backend::Flat.new }

    it 'stores correctly a flat translation' do
      backend.store_translations(
        "my.amazing.very.long.key",
        { "fr" => "je suis une longue valeur", "en" => "I am a long value" },
      )

      expect(I18n.t('my.amazing.very.long.key', locale: 'fr'))
        .to eq('je suis une longue valeur')
    end
  end
end
