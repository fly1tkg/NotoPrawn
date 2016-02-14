require 'rspec'
require 'spec_helper'

describe Prawn::Document, '#set_noto_sans_regular' do
  let(:pdf) { Prawn::Document.new }
  let(:text) { File.open(File.expand_path("../texts/#{locale}.txt", __FILE__), 'r:UTF-8').read }
  let(:output_path) { File.expand_path("../../tmp/#{locale}.pdf", __FILE__) }

  before do
    pdf.set_noto_sans_regular locale
    pdf.text text
    pdf.render_file output_path
  end

  conditions = {
      'Japanese' => :jp,
      'Korean' => :kr,
      'Simplified Chinese' => :sc,
      'Traditional Chinese' => :tc
  }

  conditions.each do |key, value|
    context "creates a PDF file with #{key} font" do
      let(:locale) { value }
      it { expect(File.exist?(output_path)).to eq true }
    end
  end
end