require("rspec")
require("legacy_data")

describe("legacy_data") do
  it("reverses the key and value") do
    legacy_data({5 => ["K"]}).should(eq({"k" => 5}))
  end
  it("reverses the key and values of multiple entries in an array") do
    legacy_data({8  => ["J", "X"]}).should(eq({"j" => 8, "x" => 8}))
  end
  it("reassigns values with their keys for multiple key and value arrays in alphabetical order by key") do
    legacy_data({4 => ["F", "H", "V"], 5=> ["K"]}).should(eq({"f" => 4 , "h" => 4, "k" => 5, "v" => 4}))
  end
end
