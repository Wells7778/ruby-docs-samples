# Copyright 2018 Google, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "rspec"

require_relative "../synthesize_file"

describe "Synthesize File" do

  example "synthesizes text file" do
    expect {
      synthesize_text_file text_file: "resources/hello.txt"
    }.to output(
      /Audio content written to file/
    ).to_stdout

    output_filepath = File.expand_path("../output.mp3", __dir__)
    expect(File.exist?(output_filepath)).to be true
    expect(File.size(output_filepath)).to be > 0

    File.delete(output_filepath)
    expect(File.exist?(output_filepath)).to be false
  end

  example "synthesizes ssml file" do
    expect {
      synthesize_ssml_file ssml_file: "resources/hello.ssml"
    }.to output(
      /Audio content written to file/
    ).to_stdout

    output_filepath = File.expand_path("../output.mp3", __dir__)
    expect(File.exist?(output_filepath)).to be true
    expect(File.size(output_filepath)).to be > 0

    File.delete(output_filepath)
    expect(File.exist?(output_filepath)).to be false
  end

end
