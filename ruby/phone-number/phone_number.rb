class PhoneNumber
  def self.clean string
    phone = string.tr('^[0-9]', '')
    if phone.length < 10
      return nil
    elsif phone.length > 10 && phone[0] != "1"
      return nil
    elsif phone.length == 10 && phone[0] < "2" 
      return nil
    elsif phone.length == 10 && phone[3] < "2" 
      return nil
    elsif phone.length == 11 && phone[0] == "1"
      return phone[1..11]
    else
      return phone
    end
  end
end

module BookKeeping
  VERSION = 2
end

