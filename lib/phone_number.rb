# Phone number formatter
# Proper output: ten digits, where first and fourth is between 2-9
class PhoneNumber
  def self.clean(number)
    varnumber = number
    varnumber.gsub!(/[^0-9]/, '')

    if varnumber.length <= 9
      varnumber = nil
    elsif varnumber.length >= 11 && varnumber[0] == '1'
      varnumber[0] = ''
    elsif varnumber.length >= 11 && varnumber[0] != '1'
      varnumber = nil
    end

    if !varnumber.nil? && varnumber.length == 10    # if varnumber != nil
      if varnumber[0] == '1'                        # can't be 0 anyway
        varnumber = nil
      elsif varnumber[3] == '1' || varnumber[3] == '0'
        varnumber = nil
      end
    end

    varnumber
  end
end

module BookKeeping
  VERSION = 2
end
