defmodule InfoSysTest.HTTPClient do
  # @wolfram_xml File.read!("test/fixtures/wolfram.xml")
  # IO.inspect("---------------")
  # IO.inspect(File.cwd!())

  def request(url) do
    url = to_string(url)
    File.cd!("../info_sys")
    wolfram_xml = File.read!("test/fixtures/wolfram.xml")

    cond do
      String.contains?(url, "1+%2B+1") -> {:ok, {[], [], wolfram_xml}}
      true -> {:ok, {[], [], "<queryresult></queryresult>"}}
    end
  end
end
