local version = require 'models.version'

describe("version", function()
           it("generates a versions from a string", function()
                assert.equals("table" , type(Version:new("0.1")))
                                                    end) --
           it("tostring returns the numbers", function()
                assert.equals("0.1", tostring(Version:new("0.1")))
                                              end)
           it("__lt", function()
                assert.truthy( Version:new("0.1") < Version:new("0.2") )
                assert.truthy( Version:new("0.1.6") < Version:new("0.2") )
                      end)
           it("__gt", function()
                assert.truthy( Version:new("0.4") > Version:new("0.2") )
                assert.truthy( Version:new("0.10.6") > Version:new("0.2") )
                assert.truthy( Version:new("0.00010.6") > Version:new("0.2") )
                      end)
           it("__eq", function()
                assert.truthy( Version:new("0.2") == Version:new("0.2") )
                      end)


                    end)
