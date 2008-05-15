module RSAML
  class BaseID
    # The security or administrative domain that qualifies the name. This attribute provides a means to 
    # federate names from disparate user stores without collision.
    attr_accessor :name_qualifier
    
    # Further qualifies a name with the name of a service provider or affiliation of providers. This 
    # attribute provides an additional means to federate names on the basis of the relying party or 
    # parties.
    attr_accessor :sp_name_qualifier
  end
  class NameID < BaseID
    # A URI reference representing the classification of string-based identifier information.
    attr_accessor :format
    
    # A name identifier established by a service provider or affiliation of providers for the entity, if 
    # different from the primary name identifier given469 
    attr_accessor :sp_provided_id
  end
  class EncryptedID < BaseID
    # Encrypted data
    attr_accessor :encrypted_data
    
    # Encrypted keys
    def encrypted_keys
      @encrypted_keys ||= []
    end
  end
end