require './lib/codebreaker'

describe Codebreak do
    it "numero incorrecto" do
        codebreaker= nil
        codebreaker= Codebreak.new
        mensaje= codebreaker.arriesgar 8
        expect(mensaje).to eq "Número incorrecto"
    end
end

