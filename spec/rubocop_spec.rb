require 'open3'

RSpec.describe 'rubocop' do
  it 'is not offended', audit: true do
    stdout, stderr, status = Open3.capture3('bundle', 'exec', 'rubocop', '--format', 'simple')
    failure_message = [stderr, stdout].reject(&:empty?).join("\n\n")

    expect(status.success?).to eq(true), failure_message
  end
end
