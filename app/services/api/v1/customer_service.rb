 module Api
   module V1
     class CustomerService

      attr_accessor :object

      def initialize(attributes)
        self.object = Customer.new(attributes)
      end

      def subscribe
        object.save
      end
    end
  end
end
